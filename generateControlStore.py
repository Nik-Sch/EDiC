#!/bin/env python3
from os import write
import sys
import cson
if (len(sys.argv) != 3):
  print(sys.argv[0] + ' <in>.cson <out>.coe')
  exit(1)

def controlSignalsToHex(control):
  return int(str(control['aluOE'])
   + str(control['aluSubShiftDir'])
   + str(control['aluOp0'])
   + str(control['aluOp1'])
   + str(control['aluBWr'])
   + str(control['regWr0'])
   + str(control['regWr1'])
   + str(control['regBusSel'])
   + str(control['regBusEn'])
   + str(control['aluSel'])
   + str(control['ramAddressEn'])
   + str(control['ramWriteEn'])
   + str(control['ramOE'])
   + str(control['loadPC'])
   + str(control['incrPC'])
   + str(control['pcOe']), base=2)

def insertSignals(memory, signals, address, prefixCount):
  i = prefixCount
  for step in signals:
    memory[(address << 3) + i] = controlSignalsToHex(step)
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


def insertInstruction(memory, instr, prefixCount):
  if ("r" in instr['op'] and "s" in instr['op']):
    addr = int(instr['op'].replace("r", "0").replace("s", "0"), base=2)
    insertSignals(memory, makeInts(makeInts(instr['signals'], "r", 0), "s", 0), addr, prefixCount)

    addr = int(instr['op'].replace("r", "1").replace("s", "0"), base=2)
    insertSignals(memory, makeInts(makeInts(instr['signals'], "r", 1), "s", 0), addr, prefixCount)

    addr = int(instr['op'].replace("r", "0").replace("s", "1"), base=2)
    insertSignals(memory, makeInts(makeInts(instr['signals'], "r", 0), "s", 1), addr, prefixCount)

    addr = int(instr['op'].replace("r", "1").replace("s", "1"), base=2)
    insertSignals(memory, makeInts(makeInts(instr['signals'], "r", 1), "s", 1), addr, prefixCount)

  elif ("r" in instr['op']):
    addr = int(instr['op'].replace("r", "0"), base=2)
    insertSignals(memory, makeInts(instr['signals'], "r", 0), addr, prefixCount)
    addr = int(instr['op'].replace("r", "1"), base=2)
    insertSignals(memory, makeInts(instr['signals'], "r", 0), addr, prefixCount)
  else:
    addr = int(instr['op'], base=2)
    insertSignals(memory, instr['signals'], addr, prefixCount)

with open(sys.argv[1], 'rb') as fin:
  data = cson.load(fin)
  fetchLen = len(data['instructionFetch'])
  with open(sys.argv[2], 'w+') as fout:
    fout.write("MEMORY_INITIALIZATION_RADIX=16;\nMEMORY_INITIALIZATION_VECTOR=\n")
    memory = {}
    for instruction in data['instructions']:
      insertInstruction(memory, instruction, fetchLen)
    
    fetch = []
    for i in range(fetchLen):
        fetch.insert(i, controlSignalsToHex(data['instructionFetch'][i]))
    for i in range(2**11):
      if i % 8 < fetchLen:
        fout.write(f"{fetch[i % 8]:04x}\n")
      elif i in memory.keys():
        fout.write(f"{memory[i]:04x}\n")
      else:
        fout.write("0000\n")

    # for x in memory.keys():
    #   print(f"{x:011b}: {memory[x]:016b}")
    fout.write(";")
