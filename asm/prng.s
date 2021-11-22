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
  call output
  sub r1, 1
  b loop


@ output r0
output:
  sts r1, [0xfffd] @ store r1
  ldr r1, [IO]
  str r0, [IO]
outLoop:
  subs r1, [IO]
  beq outLoop
  lds r1, [0xfffd] @ restore r1
  ret