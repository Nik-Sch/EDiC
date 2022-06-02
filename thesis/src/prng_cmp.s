// no instruction
// no instruction
b 0x0a // inserted by assembler
// no instruction
  ldr r0, [0x00]
  subs r0, 0
  beq 0x07
  lsl r0, 1
  beq 0x08
  bcc 0x08
// no instruction
  xor r0, 0x1d
// no instruction
  str r0, [0x00]
ret

// no instruction
  mov r0, 0
  str r0, [0x00]
// no instruction
    call 0x01
    str r0, [0xfe00]
  b 0x0c