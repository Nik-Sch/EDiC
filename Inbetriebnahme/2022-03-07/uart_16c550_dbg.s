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
UART_DIV = 10 # 19200 baud
UART_FILL_AMOUNT = 60 # 19200 baud
00: 10100000 - b start (imm: 0x31)
uart_init:
01: 11111000 - mov r0, 0x87 (imm: 0x87)
02: 11110010 - str r0, [UART_LCR] (imm: 0xfe0b)
03: 11111000 - mov r0, 0x00 (imm: 0x00)
04: 11110010 - str r0, [UART_DLM_DLAB] (imm: 0xfe09)
05: 11111000 - mov r0, UART_DIV (imm: 0x0a)
06: 11110010 - str r0, [UART_DLL_DLAB] (imm: 0xfe08)
07: 11111000 - mov r0, 0x07 (imm: 0x07)
08: 11110010 - str r0, [UART_LCR] (imm: 0xfe0b)
09: 11111000 - mov r0, 0x07 (imm: 0x07)
0a: 11110010 - str r0, [UART_FCR] (imm: 0xfe0a)
0b: 11111000 - mov r0, 0x00 (imm: 0x00)
0c: 11110010 - str r0, [UART_IER] (imm: 0xfe09)
0d: 11111000 - mov r0, 0x01 (imm: 0x01)
0e: 11110010 - str r0, [UART_MCR] (imm: 0xfe0c)
0f: 10110001 - ret
uart_write_inner:
10: 11110011 - sts r1, [0x00] (imm: 0xff00)
uart_write_loop:
11: 11110001 - ldr r1, [UART_LSR] (imm: 0xfe0d)
12: 10001010 - and r1, 0x20 # bit 5, fifo empty (not full?) -> if 1, can accept new data (imm: 0x20)
13: 10100001 - beq uart_write_loop (imm: 0x11)
14: 11110010 - str r0, [UART_DAT] (imm: 0xfe08)
15: 11110001 - lds r1, [0x00] (imm: 0xff00)
16: 10110001 - ret
uart_write:
17: 11110011 - sts r1, [0x00] (imm: 0xff00)
18: 10110000 - call uart_write_inner (imm: 0x10)
19: 10010001 - cmp r0, 0x20 # if less than 0x20 -> send fill null bytes (imm: 0x20)
1a: 10101011 - bge uart_write_end (imm: 0x21)
1b: 11111000 - mov r0, 0x00 (imm: 0x00)
1c: 11111001 - mov r1, UART_FILL_AMOUNT (imm: 0x3c)
uart_write_fill_loop:
1d: 10110000 - call uart_write_inner (imm: 0x10)
1e: 10001001 - sub r1, 1 (imm: 0x01)
1f: 10011001 - cmp r1, 0 (imm: 0x00)
20: 10101001 - bhi uart_write_fill_loop (imm: 0x1d)
uart_write_end:
21: 11110001 - lds r1, [0x00] (imm: 0xff00)
22: 10110001 - ret
uart_read:
23: 11110000 - ldr r0, [UART_LSR] (imm: 0xfe0d)
24: 10000010 - and r0, 0x01 # bit 0, fifo not empty -> 1 if data exists (imm: 0x01)
25: 10100001 - beq uart_read_0 (imm: 0x28)
26: 11110000 - ldr r0, [UART_DAT] (imm: 0xfe08)
27: 10110001 - ret
uart_read_0:
28: 11111000 - mov r0, 0 (imm: 0x00)
29: 10110001 - ret
uart_read_busy:
2a: 11110011 - sts r1, [0x00] (imm: 0xff00)
uart_read_busy_loop:
2b: 11110001 - ldr r1, [UART_LSR] (imm: 0xfe0d)
2c: 10001010 - and r1, 0x01 # bit 0, fifo not empty -> 1 if data exists (imm: 0x01)
2d: 10100001 - beq uart_read_busy_loop (imm: 0x2b)
2e: 11110000 - ldr r0, [UART_DAT] (imm: 0xfe08)
2f: 11110001 - lds r1, [0x00] (imm: 0xff00)
30: 10110001 - ret
start:
31: 10110000 - call uart_init (imm: 0x01)
uart_loop:
32: 10110000 - call uart_read (imm: 0x23)
33: 11110010 - str r0, [0xfe00] (imm: 0xfe00)
34: 10010001 - cmp r0, 0 (imm: 0x00)
35: 10100001 - beq uart_loop (imm: 0x32)
36: 10110000 - call uart_write (imm: 0x17)
37: 10100000 - b uart_loop (imm: 0x32)
