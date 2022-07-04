include "prng.s"
include "uart_16c550.s"
0x20.WON_STRING = "You won!!! Score: "
lost:
  // [...]
  // output the lost string
  mov r0, WON_STRING
  call outputString
  // output the score
  ldr r0, [SNAKE_LENGTH]
  call outputDecimal
  // [...]

// r0: address of string
outputString:
  str r1, [0xfffe]
  sts r0, [0x00]
  mov r1, 0
  outputStringLoop:
    lds r0, [0x00]
    sma r0
    ldr r0, [r1]
    cmp r0, 0
    beq outputStringEnd
    call uart_write
    add r1, 1
    cmp r1, 255
    bne outputStringLoop
  outputStringEnd:
  ldr r1, [0xfffe]
ret
