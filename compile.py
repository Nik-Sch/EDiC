#!/bin/env python3
import sys
import re
if (len(sys.argv) != 3):
  print(sys.argv[0] + ' <in>.cson <out>.coe')
  exit(1)

instructions = [
    # alu ops
    {
        'regex': re.compile("\s*add\s+r([01])\s*,\s*r([01])"),
        'result': lambda res: f"000{res.group(1)}{res.group(2)}000\n"
    },
    {
        'regex': re.compile("\s*add\s+([0-7])"),
        'result': lambda res: f"01{int(res.group(1)):03b}000\n"
    },
    {
        'regex': re.compile("\s*sub\s+r([01])\s*,\s*r([01])"),
        'result': lambda res: f"000{res.group(1)}{res.group(2)}001\n"
    },
    {
        'regex': re.compile("\s*sub\s+([0-7])"),
        'result': lambda res: f"01{int(res.group(1)):03b}001\n"
    },
    {
        'regex': re.compile("\s*and\s+r([01])\s*,\s*r([01])"),
        'result': lambda res: f"000{res.group(1)}{res.group(2)}010\n"
    },
    {
        'regex': re.compile("\s*and\s+([0-7])"),
        'result': lambda res: f"01{int(res.group(1)):03b}010\n"
    },
    {
        'regex': re.compile("\s*xor\s+r([01])\s*,\s*r([01])"),
        'result': lambda res: f"000{res.group(1)}{res.group(2)}100\n"
    },
    {
        'regex': re.compile("\s*xor\s+([0-7])"),
        'result': lambda res: f"01{int(res.group(1)):03b}100\n"
    },
    {
        'regex': re.compile("\s*xnor\s+r([01])\s*,\s*r([01])"),
        'result': lambda res: f"000{res.group(1)}{res.group(2)}101\n"
    },
    {
        'regex': re.compile("\s*xnor\s+([0-7])"),
        'result': lambda res: f"01{int(res.group(1)):03b}101\n"
    },
    {
        'regex': re.compile("\s*shr\s+r([01])\s*,\s*r([01])"),
        'result': lambda res: f"000{res.group(1)}{res.group(2)}110\n"
    },
    {
        'regex': re.compile("\s*shr\s+([0-7])"),
        'result': lambda res: f"01{int(res.group(1)):03b}110\n"
    },
    {
        'regex': re.compile("\s*shl\s+r([01])\s*,\s*r([01])"),
        'result': lambda res: f"000{res.group(1)}{res.group(2)}111\n"
    },
    {
        'regex': re.compile("\s*shl\s+([0-7])"),
        'result': lambda res: f"01{int(res.group(1)):03b}111\n"
    },

    # memory ops
    {
        'regex': re.compile("\s*mov\s+r([01])\s*,\s*\[\s*r([01])\s*\]"),
        'result': lambda res: f"001000{res.group(1)}{res.group(2)}\n"
    },
    {
        'regex': re.compile("\s*mov\s+\[\s*r([01])\s*\]\s*,\s*r([01])"),
        'result': lambda res: f"001001{res.group(2)}{res.group(1)}\n"
    },

    # jump
    {
        'regex': re.compile("\s*jmp\s+r([01])\s*"),
        'result': lambda res: f"10{res.group(1)}00000\n"
    },
    {
        'regex': re.compile("\s*mov\s+r([01])\s*,\s*pc"),
        'result': lambda res: f"10{res.group(1)}00001\n"
    },
    {
        'regex': re.compile("\s*beq\s+r([01])\s*"),
        'result': lambda res: f"10{res.group(1)}00010\n"
    },
    {
        'regex': re.compile("\s*bne\s+r([01])\s*"),
        'result': lambda res: f"10{res.group(1)}00011\n"
    },
    {
        'regex': re.compile("\s*blt\s+r([01])\s*"),
        'result': lambda res: f"10{res.group(1)}00100\n"
    },
    {
        'regex': re.compile("\s*ble\s+r([01])\s*"),
        'result': lambda res: f"10{res.group(1)}00101\n"
    },
    {
        'regex': re.compile("\s*bgt\s+r([01])\s*"),
        'result': lambda res: f"10{res.group(1)}00110\n"
    },
    {
        'regex': re.compile("\s*bge\s+r([01])\s*"),
        'result': lambda res: f"10{res.group(1)}00111\n"
    },

    {
        'regex': re.compile("\s*hlt"),
        'result': lambda _: f"11111111\n"
    },
]

with open(sys.argv[1], 'r') as fin:
  code = fin.readlines()
with open(sys.argv[2], 'w+') as fout:
  fout.write("MEMORY_INITIALIZATION_RADIX=2;\nMEMORY_INITIALIZATION_VECTOR=\n")
  i = 0
  j = 0
  for line in code:
    i += 1
    if re.compile("(^#.*)|\s*$").match(line):
        continue
    success = False
    for instr in instructions:
      result = instr['regex'].match(line)
      if result:
        j += 1
        success = True
        print(f"{j:02x}: {instr['result'](result).strip()} - {line.strip()}")
        fout.write(instr['result'](result))
        break
    if not success:
      print(f"Unrecognized instruction in line {i}:\n'{line.strip()}'")
      exit(1)

  fout.write(";")
