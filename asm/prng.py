#!/bin/env python3

# prng:
#   ldr r0, [SEED]
#   subs r0, 0
#   beq doEor
#   lsl r0, 1
#   beq noEor
#   bcc noEor
# doEor:
#   xor r0, 0x1d
# noEor:
#   str r0, [SEED]
#   ret

seed = 0

def prng():
  global seed
  if seed & 0xff == 0:
    seed = (seed ^ 0x1d) & 0xff
  else:
    seed = seed << 1
    if seed & 0x100 != 0 and seed & 0xff != 0:
      seed = (seed ^ 0x1d) & 0xff
    else:
      seed = seed & 0xff

for i in range(300):
  print(f"{i:3}: {seed:02x}")
  prng()