0x0000 - op: 10100000, imm: 0x000a - b 0x0a
0x0001 - op: 11110000, imm: 0x0000 - ldr r0, [0x00]
0x0002 - op: 10010001, imm: 0x0000 - subs r0, 0x00
0x0003 - op: 10100001, imm: 0x0007 - beq 0x07
0x0004 - op: 10000111, imm: 0x0001 - lsl r0, 0x01
0x0005 - op: 10100001, imm: 0x0008 - beq 0x08
0x0006 - op: 10100100, imm: 0x0008 - bcc 0x08
0x0007 - op: 10000100, imm: 0x001d - xor r0, 0x1d
0x0008 - op: 11110010, imm: 0x0000 - str r0, [0x00]
0x0009 - op: 10110001, imm: ------ - ret
0x000a - op: 11111000, imm: 0x0000 - mov r0, 0
0x000b - op: 11110010, imm: 0x0000 - str r0, [0x00]
0x000c - op: 10110000, imm: 0x0001 - call 0x01
0x000d - op: 11110010, imm: 0xfe00 - str r0, [0xfe00]
0x000e - op: 10100000, imm: 0x000c - b 0x0c