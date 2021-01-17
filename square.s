@ init regs to 0
eor r0, r0
eor r1, r1

@ square the input:
@ [0]: total sum
@ [1]: value to sum
@ r1: remaining loop count

@ hlt
in r1

str r0, [0] @ store total sum
str r1, [1] @ store value to sum

@ loop:
ldr r0, [0]
add r0, [1]
str r0, [0]
sub r1, 1
bne 7

@ output
ldr r0, [0]
out r0