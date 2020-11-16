#!/bin/env python3
import sys
import re
if (len(sys.argv) != 3):
  print(sys.argv[0] + ' <in>.cson <out>.coe')
  exit(1)

instructions = [
    {
        'regex': re.compile("\s*add\s+r([01])\s*,\s*r([01])"),
        'result': lambda res: f"000000{res.group(1)}{res.group(2)}\n"
    },
    {
        'regex': re.compile("\s*sub\s+r([01])\s*,\s*r([01])"),
        'result': lambda res: f"000001{res.group(1)}{res.group(2)}\n"
    },
    {
        'regex': re.compile("\s*and\s+r([01])\s*,\s*r([01])"),
        'result': lambda res: f"000010{res.group(1)}{res.group(2)}\n"
    },
    {
        'regex': re.compile("\s*xor\s+r([01])\s*,\s*r([01])"),
        'result': lambda res: f"000011{res.group(1)}{res.group(2)}\n"
    },
    {
        'regex': re.compile("\s*add\s+r([01])\s*,\s*([0-7])"),
        'result': lambda res: f"01{int(res.group(2)):03b}00{res.group(1)}\n"
    },
    {
        'regex': re.compile("\s*sub\s+r([01])\s*,\s*([0-7])"),
        'result': lambda res: f"01{int(res.group(2)):03b}01{res.group(1)}\n"
    },
    {
        'regex': re.compile("\s*shl\s+r([01])\s*,\s*([0-7])"),
        'result': lambda res: f"01{int(res.group(2)):03b}10{res.group(1)}\n"
    },
    {
        'regex': re.compile("\s*shr\s+r([01])\s*,\s*([0-7])"),
        'result': lambda res: f"01{int(res.group(2)):03b}11{res.group(1)}\n"
    },


    {
        'regex': re.compile("\s*$"),
        'result': lambda res: f""
    },
]

with open(sys.argv[1], 'r') as fin:
  code = fin.readlines()
with open(sys.argv[2], 'w+') as fout:
  fout.write("MEMORY_INITIALIZATION_RADIX=2;\nMEMORY_INITIALIZATION_VECTOR=\n")
  i = 0
  for line in code:
    i += 1
    success = False
    for instr in instructions:
      result = instr['regex'].match(line)
      if result:
        success = True
        print(f"{line.strip()}\t{instr['result'](result).strip()}")
        fout.write(instr['result'](result))
        break
    if not success:
      print(f"Unrecognized command in line {i}:\n'{line.strip()}'")
      exit(1)

  fout.write(";")
