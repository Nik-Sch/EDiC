ldr r0, [0xfe00] @ input
str r0, [0xff00]
mov r1, 2

mainLoop:
subs r0, 1 @ if 1 remaining -> end
beq end
call mod
@ if r0 % r1 == 0 -> is factor, output and divide
subs r0, 0
ldr r0, [0xff00]
bne noFactor
str r1, [0xfe00] @ output r1
call div
str r0, [0xff00] @ store new input
b mainLoop
noFactor:
add r1, 1
b mainLoop


@ r0 = r0 % r1
mod:
subs r0, r1
blt modReturn
sub r0, r1
b mod
modReturn:
ret

@ r0 = r0 / r1
div:
str r1, [0xff00] // stor r1 in local 0
mov r1, 0
divLoop:
subs r0, [0xff00]
blt divReturn @ unsigned <
sub r0, [0xff00]
add r1, 1
b divLoop
divReturn:
mov r0, r1
ldr r1, [0xff00]
ret

end:
mov r0, 0
str r0, [0xfe00]
l:
b l