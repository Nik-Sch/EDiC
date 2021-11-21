00: 10100000 - b start (imm: 0x12)
PAR1 = 0xff00
PAR2 = 0xff01
IO = 0xfe00
mod:
01: 11010001 - subs r0, [PAR1] (imm: 0xff00)
02: 10101100 - blt modReturn (imm: 0x05)
03: 11000001 - sub r0, [PAR1] (imm: 0xff00)
04: 10100000 - b mod (imm: 0x01)
modReturn:
05: 10110001 - ret
div:
06: 11110011 - sts r1, [0xfffe] (imm: 0xfffe)
07: 01001010 - mov r1, r0
08: 11111000 - mov r0, 0
divLoop:
09: 11011001 - subs r1, [PAR1] (imm: 0xff00)
0a: 10101100 - blt divReturn (imm: 0x0e)
0b: 11001001 - sub r1, [PAR1] (imm: 0xff00)
0c: 10000000 - add r0, 1 (imm: 0x01)
0d: 10100000 - b divLoop (imm: 0x09)
divReturn:
0e: 01001110 - sma 0xff (imm: 0xff)
0f: 11111001 - mov r1, 0xfe (imm: 0xfe)
10: 01000011 - ldr r1, [r1]
11: 10110001 - ret
start:
12: 11110000 - ldr r0, [IO] (imm: 0xfe00)
13: 11110010 - sts r0, [0xff00] (imm: 0xff00)
14: 11111001 - mov r1, 2 (imm: 0x02)
mainLoop:
15: 10010001 - subs r0, 1 (imm: 0x01)
16: 10100001 - beq end (imm: 0x2e)
17: 11110111 - stf r1, [0x00] (imm: 0xff00)
18: 10110000 - call mod (imm: 0x01)
19: 10010001 - subs r0, 0
1a: 11110000 - lds r0, [0xff00] (imm: 0xff00)
1b: 10100010 - bne noFactor (imm: 0x22)
1c: 11110111 - stf r1, [00] (imm: 0xff00)
1d: 10110000 - call output (imm: 0x24)
1e: 11110111 - stf r1, [0x00] (imm: 0xff00)
1f: 10110000 - call div (imm: 0x06)
20: 11110010 - sts r0, [0xff00] (imm: 0xff00)
21: 10100000 - b mainLoop (imm: 0x15)
noFactor:
22: 10001000 - add r1, 1 (imm: 0x01)
23: 10100000 - b mainLoop (imm: 0x15)
output:
24: 11110010 - sts r0, [0xfffe] (imm: 0xfffe)
25: 11110011 - sts r1, [0xfffd] (imm: 0xfffd)
26: 11110000 - ldr r0, [IO] (imm: 0xfe00)
27: 11110001 - ldr r1, [PAR1] (imm: 0xff00)
28: 11110011 - str r1, [IO] (imm: 0xfe00)
outLoop:
29: 11010001 - subs r0, [IO] (imm: 0xfe00)
2a: 10100001 - beq outLoop (imm: 0x29)
2b: 11110000 - lds r0, [0xfffe] (imm: 0xfffe)
2c: 11110001 - lds r1, [0xfffd] (imm: 0xfffd)
2d: 10110001 - ret
end:
2e: 11111000 - mov r0, 0
2f: 11110110 - stf r0, [0x00] (imm: 0xff00)
30: 10110000 - call output (imm: 0x24)
l:
31: 10100000 - b l (imm: 0x31)
