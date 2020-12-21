add 5
shl 4
hlt
shr 2
add r1, r0
sub 2
mov [r1], r0
xor r0, r0
add 7
mov r0, [r1]

# test branch
mov r1, [r1]
sub r0, r1
ble r0

# infinite loop
mov r0, pc
jmp r0