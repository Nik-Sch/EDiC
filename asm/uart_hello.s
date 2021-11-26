SIMPLE_IO = 0xfe00
UART_RX_EMPTY = 0xfe01
UART_TX_FULL = 0xfe02
UART_DATA = 0xfe03
.HELLO = "Hello World!\r\n"

mov r0, HELLO
sma r0
loop:
  mov r0, 0
outloop:
  ldr r1, [UART_TX_FULL]
  subs r1, 1
  beq outloop # no capacity to send

  ldr r1, [r0]
  subs r1, 0
  beq outend # break at 0 byte
  str r1, [UART_DATA]

  add r0, 1
  b outloop
outend:
  b loop