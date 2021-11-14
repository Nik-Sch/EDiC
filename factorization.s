PAR1 = 0xff00
PAR2 = 0xff01
IO = 0xfe00

@ r0 = r0 % r1
mod:
subs r0, [PAR1]
blt modReturn
sub r0, [PAR1]
b mod
modReturn:
ret

@ r0 = p0 / p1
div:
sts r1, [0xfffe] @ store r1
mov r1, r0 @ p0 in r1
mov r0, 0
divLoop:
subs r1, [PAR1]
blt divReturn
sub r1, [PAR1]
add r0, 1
b divLoop
divReturn:
sma 0xff
mov r1, 0xfe
ldr r1, [r1] @ restore r1
ret

start:
ldr r0, [IO] @ input
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
stf r1, [00]
call output
stf r1, [0x00]
call div
sts r0, [0xff00] @ store new input
b mainLoop
noFactor:
add r1, 1
b mainLoop


@ p0 (r0) ignored and preserved, value outputed is p1
output:
sts r0, [0xfffe] @ store r0
sts r1, [0xfffd] @ store r1
ldr r0, [IO]
ldr r1, [PAR1] @ value to output
str r1, [IO]
outLoop:
subs r0, [IO]
beq outLoop
lds r0, [0xfffe] @ restore r0
lds r1, [0xfffd] @ restore r1
ret


end:
mov r0, 0
stf r0, [0x00]
call output
l:
b l