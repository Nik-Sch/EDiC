PRNG_SEED = 0x0000
SIMPLE_IO = 0xfe00

prng:
  ldr r0, [PRNG_SEED]
  subs r0, 0
  beq prngDoEor
  lsl r0, 1
  beq prngNoEor
  bcc prngNoEor
prngDoEor:
  xor r0, 0x1d
prngNoEor:
  str r0, [PRNG_SEED]
ret

start:
  mov r0, 0
  str r0, [PRNG_SEED]
  prng_loop:
    call prng
    str r0, [SIMPLE_IO]
  b prng_loop