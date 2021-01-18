@ init regs to 0
eor r0, r0
eor r1, r1

@ square the input:
@ r0: total sum
@ r1: remaining loop count
@ [0]: value to sum

@ hlt
in r1

str r1, [0] @ store value to sum

loop:
add r0, [0]
sub r1, 1
bne loop

@ output
out r0