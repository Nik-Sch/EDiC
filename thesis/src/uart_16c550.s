UART_DAT = 0xfe08
UART_IER = 0xfe09
UART_IIR = 0xfe0a
UART_FCR = 0xfe0a
UART_LCR = 0xfe0b
UART_MCR = 0xfe0c
UART_LSR = 0xfe0d
UART_MSR = 0xfe0e
UART_SCR = 0xfe0f
UART_DLL_DLAB = 0xfe08
UART_DLM_DLAB = 0xfe09

UART_DIV = 10 // 19200 baud
// UART_DIV = 20 // 9600 baud
UART_FILL_AMOUNT = 60 // 19200 baud
// UART_FILL_AMOUNT = 30 // 9600 baud

uart_init:
  // line control register
  // 8bit, 2 stopbits, no parity, dlab active:
  // 0b10xx_0111
  // 8bit, 1 stopbit, no parity, dlab active:
  // 0b10xx_0011
  mov r0, 0x87
  str r0, [UART_LCR]

  // divisor latch access
  mov r0, 0x00
  str r0, [UART_DLM_DLAB]
  mov r0, UART_DIV
  str r0, [UART_DLL_DLAB]

  // lcr as above but dlab inactive
  mov r0, 0x07
  str r0, [UART_LCR]

  // fifo control register
  // fifo enable, reset tx and rx fifo
  // 0b00xx_x111
  mov r0, 0x07
  str r0, [UART_FCR]

  // interupt enable register
  // clear all interupts -> fifo polled mode
  mov r0, 0x00
  str r0, [UART_IER]

  // modem control register
  // assert dtr, deassert rts (should be asserted?),
  // 0bxxx0_xx01
  mov r0, 0x01
  str r0, [UART_MCR]
ret

// r0 is byte to write
uart_write_inner:
  sts r1, [0x00]

  uart_write_loop:
    ldr r1, [UART_LSR]
    and r1, 0x20 // bit 5, fifo empty (not full?) -> if 1, can accept new data
  beq uart_write_loop

  str r0, [UART_DAT]

  lds r1, [0x00]
ret

uart_write:
  sts r1, [0x00]
  call uart_write_inner

  cmp r0, 0x20 // if less than 0x20 -> send fill null bytes
  bge uart_write_end

  mov r0, 0x00
  mov r1, UART_FILL_AMOUNT
  uart_write_fill_loop:
    call uart_write_inner
    sub r1, 1
    cmp r1, 0
  bhi uart_write_fill_loop

uart_write_end:
  lds r1, [0x00]
ret


// r0 is byte to write
uart_read:
  ldr r0, [UART_LSR]
  and r0, 0x01 // bit 0, fifo not empty -> 1 if data exists
  beq uart_read_0

  ldr r0, [UART_DAT]
ret
uart_read_0:
  mov r0, 0
ret


// r0 is byte to write
uart_read_busy:
  sts r1, [0x00]

  uart_read_busy_loop:
    ldr r1, [UART_LSR]
    and r1, 0x01 // bit 0, fifo not empty -> 1 if data exists
  beq uart_read_busy_loop

  ldr r0, [UART_DAT]

  lds r1, [0x00]
ret


start:
  call uart_init
  uart_loop:
    call uart_read
    str r0, [0xfe00]
    cmp r0, 0
    beq uart_loop
    call uart_write
  b uart_loop
