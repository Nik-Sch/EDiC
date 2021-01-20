@ init regs to 0
mov r0, 0
mov r1, 0

out r0
str r0, [0]
add r0, 1
str r0, [1]
out r1
mov r0, 0

loop:
ldr r0, [1]
mov r1, r0
add r1, [0]
str r1, [1]
str r0, [0]
out r0
hlt
b loop
