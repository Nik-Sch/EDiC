#!/bin/env python3
import sys
import re
if (len(sys.argv) != 3):
  print(sys.argv[0] + ' <in>.cson <out>.coe')
  exit(1)

instructions = [
    # alu ops
    {
        'regex': re.compile("\s*add(s?)\s+r([01])\s*,\s*r([01])"),
        'result': lambda res: f"00{'1' if (res.group(1) == 's') else '0'}{res.group(2)}{res.group(3)}000\n"
    },
    {
        'regex': re.compile("\s*add\s+r([01])\s*,\s*\[\s*r([01])\s*\]"),
        'result': lambda res: f"011{res.group(1)}{res.group(2)}000\n"
    },
    {
        'regex': re.compile("\s*add(s?)\s+(?:r0\s*,\s*)?([0-7])"),
        'result': lambda res: f"1{'1' if (res.group(1) == 's') else '0'}{int(res.group(2)):03b}000\n"
    },
    {
        'regex': re.compile("\s*sub(s?)\s+r([01])\s*,\s*r([01])"),
        'result': lambda res: f"00{'1' if (res.group(1) == 's') else '0'}{res.group(2)}{res.group(3)}001\n"
    },
    {
        'regex': re.compile("\s*sub\s+r([01])\s*,\s*\[\s*r([01])\s*\]"),
        'result': lambda res: f"011{res.group(1)}{res.group(2)}001\n"
    },
    {
        'regex': re.compile("\s*sub(s?)\s+(?:r0\s*,\s*)?([0-7])"),
        'result': lambda res: f"1{'1' if (res.group(1) == 's') else '0'}{int(res.group(2)):03b}001\n"
    },
    {
        'regex': re.compile("\s*and(s?)\s+r([01])\s*,\s*r([01])"),
        'result': lambda res: f"00{'1' if (res.group(1) == 's') else '0'}{res.group(2)}{res.group(3)}010\n"
    },
    {
        'regex': re.compile("\s*and\s+r([01])\s*,\s*\[\s*r([01])\s*\]"),
        'result': lambda res: f"011{res.group(1)}{res.group(2)}010\n"
    },
    {
        'regex': re.compile("\s*and(s?)\s+(?:r0\s*,\s*)?([0-7])"),
        'result': lambda res: f"1{'1' if (res.group(1) == 's') else '0'}{int(res.group(2)):03b}010\n"
    },
    {
        'regex': re.compile("\s*[xe]or(s?)\s+r([01])\s*,\s*r([01])"),
        'result': lambda res: f"00{'1' if (res.group(1) == 's') else '0'}{res.group(2)}{res.group(3)}100\n"
    },
    {
        'regex': re.compile("\s*[xe]or\s+r([01])\s*,\s*\[\s*r([01])\s*\]"),
        'result': lambda res: f"011{res.group(1)}{res.group(2)}100\n"
    },
    {
        'regex': re.compile("\s*[xe]or(s?)\s+(?:r0\s*,\s*)?([0-7])"),
        'result': lambda res: f"1{'1' if (res.group(1) == 's') else '0'}{int(res.group(2)):03b}100\n"
    },
    {
        'regex': re.compile("\s*xnor(s?)\s+r([01])\s*,\s*r([01])"),
        'result': lambda res: f"00{'1' if (res.group(1) == 's') else '0'}{res.group(2)}{res.group(3)}101\n"
    },
    {
        'regex': re.compile("\s*xnor\s+r([01])\s*,\s*\[\s*r([01])\s*\]"),
        'result': lambda res: f"011{res.group(1)}{res.group(2)}101\n"
    },
    {
        'regex': re.compile("\s*xnor(s?)\s+(?:r0\s*,\s*)?([0-7])"),
        'result': lambda res: f"1{'1' if (res.group(1) == 's') else '0'}{int(res.group(2)):03b}101\n"
    },
    {
        'regex': re.compile("\s*lsr(s?)\s+r([01])\s*,\s*r([01])"),
        'result': lambda res: f"00{'1' if (res.group(1) == 's') else '0'}{res.group(2)}{res.group(3)}110\n"
    },
    {
        'regex': re.compile("\s*lsr\s+r([01])\s*,\s*\[\s*r([01])\s*\]"),
        'result': lambda res: f"011{res.group(1)}{res.group(2)}110\n"
    },
    {
        'regex': re.compile("\s*lsr(s?)\s+(?:r0\s*,\s*)?([0-7])"),
        'result': lambda res: f"1{'1' if (res.group(1) == 's') else '0'}{int(res.group(2)):03b}110\n"
    },
    {
        'regex': re.compile("\s*lsl(s?)\s+r([01])\s*,\s*r([01])"),
        'result': lambda res: f"00{'1' if (res.group(1) == 's') else '0'}{res.group(2)}{res.group(3)}111\n"
    },
    {
        'regex': re.compile("\s*lsl\s+r([01])\s*,\s*\[\s*r([01])\s*\]"),
        'result': lambda res: f"011{res.group(1)}{res.group(2)}111\n"
    },
    {
        'regex': re.compile("\s*lsl(s?)\s+(?:r0\s*,\s*)?([0-7])"),
        'result': lambda res: f"1{'1' if (res.group(1) == 's') else '0'}{int(res.group(2)):03b}111\n"
    },

    # memory ops and io
    {
        'regex': re.compile("\s*ldr\s+r([01])\s*,\s*\[\s*r([01])\s*\]"),
        'result': lambda res: f"010100{res.group(1)}{res.group(2)}\n"
    },
    {
        'regex': re.compile("\s*str\s+r([01])\s*,\s*\[\s*r([01])\s*\]"),
        'result': lambda res: f"010101{res.group(1)}{res.group(2)}\n"
    },
    {
        'regex': re.compile("\s*mov\s+r([01])\s*,\s*r([01])"),
        'result': lambda res: f"010110{res.group(1)}{res.group(2)}\n"
    },
    {
        'regex': re.compile("\s*in\s+r([01])"),
        'result': lambda res: f"0101110{res.group(1)}\n"
    },
    {
        'regex': re.compile("\s*out\s+r([01])"),
        'result': lambda res: f"0101111{res.group(1)}\n"
    },


    # jump
    {
        'regex': re.compile("\s*b\s+r([01])\s*"),
        'result': lambda res: f"0100{res.group(1)}000\n"
    },
    {
        'regex': re.compile("\s*mov\s+r([01])\s*,\s*pc"),
        'result': lambda res: f"0100{res.group(1)}001\n"
    },
    {
        'regex': re.compile("\s*beq\s+r([01])\s*"),
        'result': lambda res: f"0100{res.group(1)}010\n"
    },
    {
        'regex': re.compile("\s*bne\s+r([01])\s*"),
        'result': lambda res: f"0100{res.group(1)}011\n"
    },
    {
        'regex': re.compile("\s*blt\s+r([01])\s*"),
        'result': lambda res: f"0100{res.group(1)}100\n"
    },
    {
        'regex': re.compile("\s*ble\s+r([01])\s*"),
        'result': lambda res: f"0100{res.group(1)}101\n"
    },
    {
        'regex': re.compile("\s*bgt\s+r([01])\s*"),
        'result': lambda res: f"0100{res.group(1)}110\n"
    },
    {
        'regex': re.compile("\s*bge\s+r([01])\s*"),
        'result': lambda res: f"0100{res.group(1)}111\n"
    },

    {
        'regex': re.compile("\s*hlt"),
        'result': lambda _: f"11111111\n"
    },
]

coeFile = sys.argv[2].endswith('.coe')

with open(sys.argv[1], 'r') as fin:
  code = fin.readlines()
with open(sys.argv[2], 'w+') as fout:
  if coeFile:
    fout.write("MEMORY_INITIALIZATION_RADIX=2;\nMEMORY_INITIALIZATION_VECTOR=\n")
  else:
    fout.write(f"""#ifndef DATA_H
#define DATA_H

#include <Arduino.h>

const uint16_t length = {2**8};
const uint8_t data[] PROGMEM = {{
""")
  i = 0
  j = 0
  for origLine in code:
    i += 1
    commentRegex = re.compile(".*?(\s*#.*$)").match(origLine)
    if (commentRegex):
        line = origLine.replace(commentRegex.group(1), '')
    else:
        line = origLine
    if re.compile("\s*$").match(line):
        print(origLine.strip())
        continue
    success = False
    for instr in instructions:
      result = instr['regex'].match(line)
      if result:
        success = True
        print(f"{j:02x}: {instr['result'](result).strip()} - {origLine.strip()}")
        if (coeFile):
          fout.write(instr['result'](result))
        else:
          fout.write(f"0x{(int(instr['result'](result), 2)):02x},\n")
        j += 1
        break
    if not success:
      print(f"Unrecognized instruction in line {i}:\n'{line.strip()}'")
      exit(1)
  if (not coeFile):
    while (j < 2**8):
      fout.write("0xff,\n")
      j += 1
  if coeFile:
    fout.write(";")
  else:
    fout.write("};\n#endif")
