@ init regs to 0

str r0, [0xfe00] # output
str r0, [0]
add r0, 1
str r0, [1]
str r1, [0xfe00] # output
mov r0, 0

loop:
ldr r0, [1]
mov r1, r0
add r1, [0]
str r1, [1]
str r0, [0]
str r0, [0xfe00] # output
b loop
