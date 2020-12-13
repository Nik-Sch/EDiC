#!/bin/env python3
from os import write
import sys
import cson
if (len(sys.argv) != 3 and len(sys.argv) != 4):
  print(sys.argv[0] + ' <in>.cson <out>.coe|h [0|1]')
  exit(1)

def controlSignalsToHex(control):
  return int(str(control['aluNOE'])
   + str(control['aluSubShiftDir'])
   + str(control['aluOp0'])
   + str(control['aluOp1'])
   + str(control['aluWr'])
   + str(control['regWr0'])
   + str(control['regWr1'])
   + str(control['regBusSel'])
   + str(control['regNBusEn'])
   + str(control['aluSel'])
   + str(control['ramAddressEn'])
   + str(control['ramWriteEn'])
   + str(control['ramOE'])
   + str(control['loadPC'])
   + str(control['incrPC'])
   + str(control['nImmOut']), base=2)
  
def insertMemory(memory, address, data, name):
  if (address in memory):
    print(f"Address {address:013b} is already in memory (instruction {name})")
    exit(1)
  memory[address] = data


def insertSignals(memory, signals, address, prefixCount, flags, name, noOp):
  i = prefixCount
  for step in signals:
    if (flags == "n"): # don't do stuff if N flag is low (0 and 2)
      insertMemory(memory, (0 << 11) + (address << 3) + i, noOp, name)
      insertMemory(memory, (1 << 11) + (address << 3) + i, controlSignalsToHex(step), name)
      insertMemory(memory, (2 << 11) + (address << 3) + i, noOp, name)
      insertMemory(memory, (3 << 11) + (address << 3) + i, controlSignalsToHex(step), name)
    elif (flags == "z"):  # don't do stuff if Z flag is low (0 and 1)
      insertMemory(memory, (0 << 11) + (address << 3) + i, noOp, name)
      insertMemory(memory, (1 << 11) + (address << 3) + i, noOp, name)
      insertMemory(memory, (2 << 11) + (address << 3) + i, controlSignalsToHex(step), name)
      insertMemory(memory, (3 << 11) + (address << 3) + i, controlSignalsToHex(step), name)
    else:
      insertMemory(memory, (0 << 11) + (address << 3) + i, controlSignalsToHex(step), name)
      insertMemory(memory, (1 << 11) + (address << 3) + i, controlSignalsToHex(step), name)
      insertMemory(memory, (2 << 11) + (address << 3) + i, controlSignalsToHex(step), name)
      insertMemory(memory, (3 << 11) + (address << 3) + i, controlSignalsToHex(step), name)

    i += 1

def makeInts(signals, s, i):
  out = []
  for step in signals:
    elem = step.copy()
    for x in elem.keys():
      if (elem[x] == s):
        elem[x] = i
      if (elem[x] == "!" + s):
        elem[x] = (i + 1) % 2
    out.append(elem)
  return out


def insertInstruction(memory, instr, prefixCount, noOp):
  flags = instr['flags'] if ('flags' in instr) else ''
  if ("r" in instr['op'] and "s" in instr['op']):
    addr = int(instr['op'].replace("r", "0").replace("s", "0"), base=2)
    insertSignals(memory, makeInts(makeInts(instr['signals'], "r", 0), "s", 0), addr, prefixCount, flags, instr['op'], noOp)

    addr = int(instr['op'].replace("r", "1").replace("s", "0"), base=2)
    insertSignals(memory, makeInts(makeInts(instr['signals'], "r", 1), "s", 0), addr, prefixCount, flags, instr['op'], noOp)

    addr = int(instr['op'].replace("r", "0").replace("s", "1"), base=2)
    insertSignals(memory, makeInts(makeInts(instr['signals'], "r", 0), "s", 1), addr, prefixCount, flags, instr['op'], noOp)

    addr = int(instr['op'].replace("r", "1").replace("s", "1"), base=2)
    insertSignals(memory, makeInts(makeInts(instr['signals'], "r", 1), "s", 1), addr, prefixCount, flags, instr['op'], noOp)

  elif ("r" in instr['op']):
    addr = int(instr['op'].replace("r", "0"), base=2)
    insertSignals(memory, makeInts(instr['signals'], "r", 0), addr, prefixCount, flags, instr['op'], noOp)
    addr = int(instr['op'].replace("r", "1"), base=2)
    insertSignals(memory, makeInts(instr['signals'], "r", 1), addr, prefixCount, flags, instr['op'], noOp)
  else:
    addr = int(instr['op'], base=2)
    insertSignals(memory, instr['signals'], addr, prefixCount, flags, instr['op'], noOp)


coeFile = sys.argv[2].endswith('.coe')
only = None
if len(sys.argv) == 4:
  only = sys.argv[3]
elif not coeFile:
  print('when not writing to coe, you need to specify if upper or lower byte')
  exit(1)


with open(sys.argv[1], 'rb') as fin:
  data = cson.load(fin)
  fetchLen = len(data['instructionFetch'])
  with open(sys.argv[2], 'w+') as fout:
    if coeFile:
      fout.write("MEMORY_INITIALIZATION_RADIX=16;\nMEMORY_INITIALIZATION_VECTOR=\n")
    else:
      fout.write(f"""#ifndef DATA_H
#define DATA_H

#include <Arduino.h>

const uint16_t length = {2**13};
const uint8_t data[] PROGMEM = {{
""")
    noOp = controlSignalsToHex(data['noOp'])

    memory = {}
    for instruction in data['instructions']:
      if 'imm' in instruction['op']:
        for i in range(8):
          newInstr = instruction.copy()
          newInstr['op'] = newInstr['op'].replace('imm', f"{i:03b}")
          insertInstruction(memory, newInstr, fetchLen, noOp)
      else:
        insertInstruction(memory, instruction, fetchLen, noOp)
    
    fetch = []
    for i in range(fetchLen):
        fetch.insert(i, controlSignalsToHex(data['instructionFetch'][i]))


    def output(d):
      if coeFile:
        fout.write(f"{d:04x}\n")
      else:
        if only == '0':
          fout.write(f"0x{d & 0xff:02x},\n")
        else:
          fout.write(f"0x{(d >> 8) & 0xff:02x},\n")

    for i in range(2**13):
      if i % 8 < fetchLen:
        output(fetch[i % 8])
      elif i in memory.keys():
        output(memory[i])
      else:
        output(noOp)
    if coeFile:
      fout.write(";")
    else:
      fout.write("};\n#endif")
