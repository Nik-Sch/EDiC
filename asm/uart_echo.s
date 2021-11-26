UART_RX_EMPTY = 0xfe01
UART_TX_FULL = 0xfe02
UART_DATA = 0xfe03

loop:
  ldr r0, [UART_RX_EMPTY]
  subs r0, 1
  beq loop # nothing received
  ldr r0, [UART_TX_FULL]
  subs r0, 1
  beq loop # no capacity to send
  # send data
  ldr r0, [UART_DATA]
  str r0, [UART_DATA]
  b loop