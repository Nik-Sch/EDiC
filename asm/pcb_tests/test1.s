SIMPLE_IO = 0xfe00
UART_SCR = 0xfe0f

ldr r0, [SIMPLE_IO]
str r0, [UART_SCR]
loop:
ldr r1, [UART_SCR]
str r1, [SIMPLE_IO]
b loop