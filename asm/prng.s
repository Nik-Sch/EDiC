SEED = 0x0000
IO = 0xfe00

prng:
  ldr r0, [SEED]
  subs r0, 0
  beq doEor
  lsl r0, 1
  beq noEor
  bcc noEor
doEor:
  xor r0, 0x1d
noEor:
  str r0, [SEED]
  ret

start:
  mov r0, 0
  str r0, [SEED]
loop:
  call prng
  str r0, [IO]
  b loop