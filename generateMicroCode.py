#!/bin/env python3
from dataclasses import dataclass
from copy import deepcopy
import sys
from typing import Dict, List, Optional, TypedDict, cast
import cson

if (len(sys.argv) != 3 and len(sys.argv) != 4):
  print(sys.argv[0] + ' <in>.cson <out>.coe|h [0|1]')
  exit(1)

@dataclass
class Signal:
  name: str
  value: int

class CsonSignal(TypedDict):
  name: str
  noOp: int

class CsonCycle(Dict):
  pass

class CsonInstruction(TypedDict):
  op: str
  flags: str # not always there...
  cycles: List[CsonCycle]

class CsonFile(TypedDict):
  signals: List[CsonSignal]
  instructionFetch: List[CsonCycle]
  instructions: List[CsonInstruction]

class CsonParser:
  noOp: List[Signal] = []
  fetchLen: int
  rom = {}
  fetchRomData: List[int] = []

  def parse(self, csonFile: str):
    with open(csonFile, 'rb') as fin:
      data = cast(CsonFile, cson.load(fin))

      for elem in data['signals']:
        self.noOp.append(Signal(elem['name'], elem['noOp']))
      while len(self.noOp) < 24:
        self.noOp.append(Signal('__unused', 0))

      self.fetchLen = len(data['instructionFetch'])
      for cycle in data['instructionFetch']:
        self.fetchRomData.append(self.cycleToRomData(cycle))

      instructions: List[CsonInstruction] = []
      for instruction in data['instructions']:
        if 'alu' in instruction['op']:
          for i in range(8):
            newInstr = deepcopy(instruction)
            newInstr['op'] = newInstr['op'].replace('alu', f"{i:03b}")
            instructions.append(newInstr)
        else:
          instructions.append(instruction)

      for reg in ['r', 's']:
        instructionsCopy = instructions
        instructions = []
        for instruction in instructionsCopy:
          if reg in instruction['op']:
            instructions.append(self.replaceRegs(instruction, reg, 0))
            instructions.append(self.replaceRegs(instruction, reg, 1))
          else:
            instructions.append(instruction)

      for instruction in instructions:
        self.insertInstruction(instruction)

  # checks for one instruction if the aluFlags are such that the instruction should be executed
  def flagConditionMet(self, instrBits: int, aluFlagBits: str) -> bool:
    # aluBits: VCZN
    lut = [
        True,# (AL) [Any]
        aluFlagBits[2] == '1', # (EQ) [Z == 1]
        aluFlagBits[2] == '0', # (NE) [Z == 0]
        aluFlagBits[1] == '1', # (CS) [C == 1]
        aluFlagBits[1] == '0', # (CC) [C == 0]
        aluFlagBits[3] == '1', # (MI) [N == 1]
        aluFlagBits[3] == '0', # (PL) [N == 0]
        aluFlagBits[0] == '1', # (VS) [V == 1]
        aluFlagBits[0] == '0', # (VC) [V == 0]
        aluFlagBits[1] == '1' and aluFlagBits[2] == '0', # (HI) [C == 1 && Z == 0]
        aluFlagBits[2] == '1' and aluFlagBits[2] == '1', # (LS) [C == 0 or Z == 1]
        aluFlagBits[0] == aluFlagBits[3], # (GE) [N and V the same]
        aluFlagBits[0] != aluFlagBits[3], # (LT) [N and V differ]
        aluFlagBits[2] == '0' and aluFlagBits[0] == aluFlagBits[3], # (GT) [Z == 0, N and V the same]
        aluFlagBits[2] == '1' and aluFlagBits[0] != aluFlagBits[3], # (LE) [Z == 1, N and V differ]
        False, # Never, not used
    ]
    return lut[instrBits]

  def insertInstruction(self, instr: CsonInstruction):
    name = instr['op']
    if 'flag' in name:
      # for every flag instruction there are 16 memory locations (for all flags 4 bits)
      for instrBits in range(16):
        op = name.replace('flag', f"{instrBits:04b}")
        baseAddress = int(op, base=2)
        for aluBits in range(16):
          i = self.fetchLen
          for cycle in instr['cycles']:
            if self.flagConditionMet(instrBits, f"{aluBits:04b}"):
              romData = self.cycleToRomData(cycle)
            else:
              romData = self.cycleToRomData()
            self.setRom((aluBits << 11) + (baseAddress << 3) + i, romData, name)
            i += 1
          # self.setRom((3 << 11) + (baseAddress << 3) + i, self.cycleToRomData(instructionFinished=True), name)
    else:
      for f in range(16):
        baseAddress = int(name, base=2)
        i = self.fetchLen
        for cycle in instr['cycles']:
          self.setRom((f << 11) + (baseAddress << 3) + i, self.cycleToRomData(cycle), name)
          i += 1
        # self.setRom((3 << 11) + (baseAddress << 3) + i, self.cycleToRomData(instructionFinished=True), name)

  def setRom(self, address: int, data: int, name: str):
    if (address in self.rom):
      print(f"Address {address:015b} is already in memory (instruction {name})")
      # print([f"{i:015b}" for i in self.rom])
      exit(1)
    self.rom[address] = data

  def cycleToRomData(self, cycle: CsonCycle = CsonCycle(), instructionFinished = False) -> int:
    signals: List[Signal] = []
    for key in cycle.keys():
      signals.append(Signal(key, cycle[key]))

    values = deepcopy(self.noOp)
    for signal in signals:
      found = False
      for i in range(len(values)):
        if values[i].name == signal.name:
          found = True
          values[i].value = signal.value
      if not found:
        print(f"invalid signalName: {signal.name}")
        exit()

    if instructionFinished:
      for i in range(len(values)):
        if values[i].name == 'instrFinishedN':
          values[i].value = 0

    # msb first
    values.reverse()
    string = ''.join([str(v.value) for v in values])
    return int(string, base=2)

  def replaceRegs(self, instruction: CsonInstruction, regName: str, value: int) -> CsonInstruction:
    result = deepcopy(instruction)
    result['op'] = result['op'].replace(regName, str(value))
    for cycle in result['cycles']:
      for key in cycle.keys():
        if (cycle[key] == regName):
          cycle[key] = value
        if (cycle[key] == '!' + regName):
          cycle[key] = (value + 1) % 2
    return result

  def writeToFile(self, outFile: str, only: Optional[int]):

    def output(d: int):
      if not only:
        fout.write(f"{d:06x}\n")
      else:
        fout.write(f"0x{(d >> (8 * only)) & 0xff:02x},\n")

    with open(outFile, 'w+') as fout:
      if coeFile:
        fout.write("MEMORY_INITIALIZATION_RADIX=16;\nMEMORY_INITIALIZATION_VECTOR=\n")
      else:
        fout.write(f"""#ifndef DATA_H
    #define DATA_H

    #include <Arduino.h>

    const uint16_t length = {2**15};
    const uint8_t data[] PROGMEM = {{
    """)
      for i in range(2**15):
        if i % 8 < self.fetchLen:
          output(self.fetchRomData[i % 8])
        elif i in self.rom.keys():
          output(self.rom[i])
        else:
          output(self.cycleToRomData())
      if coeFile:
        fout.write(";")
      else:
        fout.write("};\n#endif")

    print("Successfully written file.")




parser = CsonParser()
parser.parse(sys.argv[1])
coeFile = sys.argv[2].endswith('.coe')
only = None
if len(sys.argv) == 4:
  only = int(sys.argv[3])
elif not coeFile:
  print('when not writing to coe, you need to specify if upper or lower byte')
  exit(1)
parser.writeToFile(sys.argv[2], only)
