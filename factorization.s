@ r0 = r0 % r1
mod:
subs r0, [0xff00]
blt modReturn
sub r0, [0xff00]
b mod
modReturn:
ret

@ r0 = p0 / p1
div:
sts r1, [0xfffe] @ store r1
mov r1, r0 @ p0 in r1
mov r0, 0
divLoop:
subs r1, [0xff00]
blt divReturn
sub r1, [0xff00]
add r0, 1
b divLoop
divReturn:
lds r1, [0xfffe] @ restore r1
ret

start:
ldr r0, [0xfe00] @ input
sts r0, [0xff00]
mov r1, 2
mainLoop:
subs r0, 1 @ if 1 remaining -> end
beq end
stf r1, [0x00]
call mod
@ if r0 % r1 == 0 -> is factor, output and divide
subs r0, 0
lds r0, [0xff00]
bne noFactor
str r1, [0xfe00] @ output r1
stf r1, [0x00]
call div
sts r0, [0xff00] @ store new input
b mainLoop
noFactor:
add r1, 1
b mainLoop


end:
mov r0, 0
str r0, [0xfe00]
l:
b l