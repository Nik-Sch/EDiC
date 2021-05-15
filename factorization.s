@ init regs to 0
mov r0, 0
mov r1, 0

@ [0]: n
@ [1]: f

in r0
str r0, [0]
mov r1, 2
str r1, [1]

mainLoop:
ldr r0, [0]
subs r0, 1
ble end
ldr r1, [1]
b mod
modReturn:
subs r0, 0
bne noFactor
ldr r1, [1]
out r1
@ hlt
ldr r0, [0]
b div
divReturn:
str r1, [0]
b mainLoop

noFactor:
ldr r1, [1]
add r1, 1
str r1, [1]
b mainLoop


@ r0: n, r1: f -> r0 result
mod:
subs r0, r1
blt modReturn
sub r0, r1
b mod

@ r0: n, r1: f -> r1 result
div:
str r1, [0xf]
mov r1, 0
divLoop:
subs r0, [0xf]
blt divReturn
add r1, 1
sub r0, [0xf]
b divLoop

end:
mov r0, 0
out r0
hlt