#!/bin/env python3
from os import write
import sys
import cson
if (len(sys.argv) != 3 and len(sys.argv) != 4):
  print(sys.argv[0] + ' <in>.cson <out>.coe|h [0|1]')
  exit(1)

def ctrlToInt(control, default = {}):
  return int(
     str(control['aluNOE'] if ('aluNOE' in control) else default['aluNOE'])
   + str(control['aluWr'] if ('aluWr' in control) else default['aluWr'])
   + str(control['regWr0'] if ('regWr0' in control) else default['regWr0'])
   + str(control['regWr1'] if ('regWr1' in control) else default['regWr1'])
   + str(control['regBusSel'] if ('regBusSel' in control) else default['regBusSel'])
   + str(control['regNBusEn'] if ('regNBusEn' in control) else default['regNBusEn'])
   + str(control['aluSel'] if ('aluSel' in control) else default['aluSel'])
   + str(control['ramAddressEn'] if ('ramAddressEn' in control) else default['ramAddressEn'])
   + str(control['ramWriteNEn'] if ('ramWriteNEn' in control) else default['ramWriteNEn'])
   + str(control['ramOE'] if ('ramOE' in control) else default['ramOE'])
   + str(control['loadPC'] if ('loadPC' in control) else default['loadPC'])
   + str(control['nImmOut'] if ('nImmOut' in control) else default['nImmOut'])
   + str(control['wrOut'] if ('wrOut' in control) else default['wrOut'])
   + str(control['pcNOut'] if ('pcNOut' in control) else default['pcNOut'])
   + str(control['inNoe'] if ('inNoe' in control) else default['inNoe'])
   + str(0)
   , base=2)
  
def insertMemory(memory, address, data, name):
  if (address in memory):
    print(f"Address {address:013b} is already in memory (instruction {name})")
    exit(1)
  memory[address] = data


def insertSignals(memory, signals, address, prefixCount, flags, name, noOp):
  i = prefixCount
  for step in signals:
    if (flags == "eq"): # do stuff only if notZero is 0
      insertMemory(memory, (0b00 << 11) + (address << 3) + i, ctrlToInt(step, noOp), name)
      insertMemory(memory, (0b01 << 11) + (address << 3) + i, ctrlToInt(step, noOp), name)
      insertMemory(memory, (0b10 << 11) + (address << 3) + i, ctrlToInt(noOp), name)
      insertMemory(memory, (0b11 << 11) + (address << 3) + i, ctrlToInt(noOp), name)
    elif (flags == "ne"): # do stuff only if notZero is 1
      insertMemory(memory, (0b00 << 11) + (address << 3) + i, ctrlToInt(noOp), name)
      insertMemory(memory, (0b01 << 11) + (address << 3) + i, ctrlToInt(noOp), name)
      insertMemory(memory, (0b10 << 11) + (address << 3) + i, ctrlToInt(step, noOp), name)
      insertMemory(memory, (0b11 << 11) + (address << 3) + i, ctrlToInt(step, noOp), name)
    elif (flags == "lt"): # do stuff only if negative is 1
      insertMemory(memory, (0b00 << 11) + (address << 3) + i, ctrlToInt(noOp), name)
      insertMemory(memory, (0b01 << 11) + (address << 3) + i, ctrlToInt(step, noOp), name)
      insertMemory(memory, (0b10 << 11) + (address << 3) + i, ctrlToInt(noOp), name)
      insertMemory(memory, (0b11 << 11) + (address << 3) + i, ctrlToInt(step, noOp), name)
    elif (flags == "le"): # do stuff only if negative is 1 or notZero is 0
      insertMemory(memory, (0b00 << 11) + (address << 3) + i, ctrlToInt(step, noOp), name)
      insertMemory(memory, (0b01 << 11) + (address << 3) + i, ctrlToInt(step, noOp), name)
      insertMemory(memory, (0b10 << 11) + (address << 3) + i, ctrlToInt(noOp), name)
      insertMemory(memory, (0b11 << 11) + (address << 3) + i, ctrlToInt(step, noOp), name)
    elif (flags == "ge"): # do stuff only if negative is 0
      insertMemory(memory, (0b00 << 11) + (address << 3) + i, ctrlToInt(step, noOp), name)
      insertMemory(memory, (0b01 << 11) + (address << 3) + i, ctrlToInt(noOp), name)
      insertMemory(memory, (0b10 << 11) + (address << 3) + i, ctrlToInt(step, noOp), name)
      insertMemory(memory, (0b11 << 11) + (address << 3) + i, ctrlToInt(noOp), name)
    elif (flags == "gt"): # do stuff only if negative is 0 or notZero is 0
      insertMemory(memory, (0b00 << 11) + (address << 3) + i, ctrlToInt(step, noOp), name)
      insertMemory(memory, (0b01 << 11) + (address << 3) + i, ctrlToInt(step, noOp), name)
      insertMemory(memory, (0b10 << 11) + (address << 3) + i, ctrlToInt(step, noOp), name)
      insertMemory(memory, (0b11 << 11) + (address << 3) + i, ctrlToInt(noOp), name)
    else:
      insertMemory(memory, (0 << 11) + (address << 3) + i, ctrlToInt(step, noOp), name)
      insertMemory(memory, (1 << 11) + (address << 3) + i, ctrlToInt(step, noOp), name)
      insertMemory(memory, (2 << 11) + (address << 3) + i, ctrlToInt(step, noOp), name)
      insertMemory(memory, (3 << 11) + (address << 3) + i, ctrlToInt(step, noOp), name)

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
    noOp = data['noOp']

    memory = {}
    for instruction in data['instructions']:
      if 'imm' in instruction['op'] and 'alu' in instruction['op']:
        for i in range(8):
          for j in range(8):
            newInstr = instruction.copy()
            newInstr['op'] = newInstr['op'].replace(
                'imm', f"{i:03b}").replace('alu', f"{j:03b}")
            insertInstruction(memory, newInstr, fetchLen, noOp)
      elif 'imm' in instruction['op']:
        for i in range(8):
          newInstr = instruction.copy()
          newInstr['op'] = newInstr['op'].replace('imm', f"{i:03b}")
          insertInstruction(memory, newInstr, fetchLen, noOp)
      elif 'alu' in instruction['op']:
        for i in range(8):
          newInstr = instruction.copy()
          newInstr['op'] = newInstr['op'].replace('alu', f"{i:03b}")
          insertInstruction(memory, newInstr, fetchLen, noOp)
      else:
        insertInstruction(memory, instruction, fetchLen, noOp)
    
    fetch = []
    for i in range(fetchLen):
        fetch.insert(i, ctrlToInt(data['instructionFetch'][i], noOp))


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
        output(ctrlToInt(noOp))
    if coeFile:
      fout.write(";")
    else:
      fout.write("};\n#endif")

print("Successfully written file.")
