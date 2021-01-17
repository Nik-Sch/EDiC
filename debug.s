@ init regs to 0
eor r0, 0
str r0, [r1]
str r0, [0x20]
ldr r1, [0x20]
mov r0, 3