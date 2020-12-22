# init regs to 0
eor r0, r0
eor r1, r1

# square the input:
# [0]: total sum
# [1]: value to sum
# [2]: remaining loop count

hlt
in r1
eor r0, r0 # r0 now 0
# store 0 in [0]
str r0, [r0]
add r0, 1 # r0 now 1
# store value
str r1, [r0]
add r0, 1 # r0 now 2
str r1, [r0]

# loop start
eor r0, r0
# get sum
ldr r1, [r0]
# add value to sum (r1)
add r0, 1 # r0 now 1
add r1, [r0]
# store sum
eor r0, r0
str r1, [r0]
# load remaining loop count, decrement and store
add r0, 2 # r0 now 2
ldr r1, [r0]
sub r0, 1 # r0 now 1
sub r1, r0
add r0, 1 # r0 now 2
str r1, [r0]

lsl r0, 2 # r0 now 8
add r0, 2 # r0 now 10
mov r1, r0 # store jump address in r1
eor r0, r0
add r0, 2 # r0 now 2
ldr r0, [r0] # load remaining count
# if r1 != 0 jump to address 10
subs r0, 0
bne r1


ldr r1, [r0]
out r1