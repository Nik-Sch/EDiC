SIMPLE_IO = 0xfe00
mov r0, 0x42
loop:
str r0, [SIMPLE_IO]
b loop