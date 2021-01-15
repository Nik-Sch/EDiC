@ init regs to 0
eor r0, r0
eor r1, r1

add r0, 5
str r0, [r1]
ldr r1, [r1]