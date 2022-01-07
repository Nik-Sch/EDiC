SIMPLE_IO = 0xfe00
UART_RX_EMPTY = 0xfe01
UART_TX_FULL = 0xfe02
UART_DATA = 0xfe03
PAR1 = 0xff00
PAR2 = 0xff01
PAR3 = 0xff02
ESCAPE0 = 0x1b # \033
ESCAPE1 = 0x5b # '['
BORDER = 0x23 # '#'
SPACE = 0x20 # ' '
HEAD = 0x40 # '@'
LEFT = 0x3c # '<'
RIGHT = 0x3e # '>'
UP = 0x5e # '^'
DOWN = 0x76 # 'v'
ITEM = 0x58 # 'X'

# global variables
SNAKE_LENGTH    = 0x0000
SNAKE_DIRECTION = 0x0001
SNAKE_HEAD_LINE = 0x0002
SNAKE_HEAD_COL  = 0x0003
SNAKE_TAIL_LINE = 0x0004
SNAKE_TAIL_COL  = 0x0005
SNAKE_LEFT_LINE = 0x0006
SNAKE_LEFT_COL  = 0x0007
PRNG_SEED       = 0x0008 # do not init for extra randomness

# local variables
LINE_COUNTER = 0xff00
COLUMN_COUNTER = 0xff01


# screen is in memory starting from 0x0100
# one line has 256 bytes for ease of access
LINES = 24
COLUMNS = 80
COLUMNS_1 = 79

start:
  # clear screen
  mov r0, ESCAPE0
  call outputChar
  mov r0, ESCAPE1
  call outputChar
  mov r0, 0x32 # '2'
  call outputChar
  mov r0, 0x4a # 'J'
  call outputChar

  call createBoard
  call updateItem
  mainLoop:
    call updateHead
    cmp r0, -1
    beq lost
    cmp r0, 1
    beq mainAteItem
    call updateTail
    b mainUpdateBoard
  mainAteItem:
    ldr r0, [SNAKE_LENGTH]
    add r0, 1
    str r0, [SNAKE_LENGTH]
    call updateItem
  mainUpdateBoard:
    call drawBoard
    ldr r0, [SNAKE_LENGTH]
    stf r0, [PAR1]
    call output
    call readArrow
    # change direction if != -1
    cmp r0, -1
    beq mainLoop
    str r0, [SNAKE_DIRECTION]
  b mainLoop
  lost:
  b lost


updateItem:
  str r1, [0xfffe]

  itemStart:
    call prng
    mov r1, r0 # column
    call prng
    sma r0 # line
    ldr r0, [r1]
    cmp r0, SPACE
  bne itemStart # if there is something at the new item position find a new one
  # store new item
  stf r1, [PAR1]
  stf r0, [PAR2]
  mov r0, ITEM
  call setScreen

  ldr r1, [0xfffe]
ret

# returns -1 if lost, 0 if nothing happend and 1 if ate item
updateHead:
  str r1, [0xfffe]

  ldr r0, [SNAKE_HEAD_LINE]
  stf r0, [PAR2]
  sma r0
  ldr r0, [SNAKE_HEAD_COL]
  stf r0, [PAR1]
  # load correct direction char into r0
  ldr r1, [SNAKE_DIRECTION]
  cmp r1, 0
  beq headUp
  cmp r1, 1
  beq headDown
  cmp r1, 2
  beq headRight
  cmp r1, 3
  beq headLeft
  b headEnd # should not happen

  headUp:
    mov r1, UP
    call setScreen
    ldr r1, [SNAKE_HEAD_LINE]
    sub r1, 1
    str r1, [SNAKE_HEAD_LINE]
  b headEnd

  headDown:
    mov r1, DOWN
    call setScreen
    ldr r1, [SNAKE_HEAD_LINE]
    add r1, 1
    str r1, [SNAKE_HEAD_LINE]
  b headEnd

  headLeft:
    mov r1, LEFT
    call setScreen
    ldr r1, [SNAKE_HEAD_COL]
    sub r1, 1
    str r1, [SNAKE_HEAD_COL]
  b headEnd

  headRight:
    mov r1, RIGHT
    call setScreen
    ldr r1, [SNAKE_HEAD_COL]
    add r1, 1
    str r1, [SNAKE_HEAD_COL]
  b headEnd

headEnd:
  
  ldr r1, [SNAKE_HEAD_LINE]
  sma r1
  ldr r1, [SNAKE_HEAD_COL]
  ldr r0, [r1]
  # if new position is not space or item -> lost
  cmp r0, SPACE
  beq headNotLost
  cmp r0, ITEM
  beq headNotLost
  mov r0, -1
  ldr r1, [0xfffe]
ret
headNotLost:
  cmp r0, ITEM
  bne headNoItem
  mov r0, HEAD
  str r0, [r1]
  mov r0, 1
  ldr r1, [0xfffe]
ret
headNoItem:
  # draw new head
  mov r0, HEAD
  str r0, [r1]
  mov r0, 0
  ldr r1, [0xfffe]
ret

updateTail:
  str r1, [0xfffe]

  ldr r0, [SNAKE_TAIL_LINE]
  str r0, [SNAKE_LEFT_LINE]
  sma r0
  ldr r0, [SNAKE_TAIL_COL]
  str r0, [SNAKE_LEFT_COL]
  # load direction char
  ldr r1, [r0]
  # store direction to put space at the location
  str r1, [PAR1]
  mov r1, SPACE
  str r1, [r0]
  ldr r1, [PAR1]
  cmp r1, UP
  beq tailUp
  cmp r1, DOWN
  beq tailDown
  cmp r1, RIGHT
  beq tailRight
  cmp r1, LEFT
  beq tailLeft
  b tailEnd # should not happen

  tailUp:
  ldr r1, [SNAKE_TAIL_LINE]
  sub r1, 1
  str r1, [SNAKE_TAIL_LINE]
  b tailEnd

  tailDown:
  ldr r1, [SNAKE_TAIL_LINE]
  add r1, 1
  str r1, [SNAKE_TAIL_LINE]
  b tailEnd

  tailLeft:
  ldr r1, [SNAKE_TAIL_COL]
  sub r1, 1
  str r1, [SNAKE_TAIL_COL]
  b tailEnd

  tailRight:
  ldr r1, [SNAKE_TAIL_COL]
  add r1, 1
  str r1, [SNAKE_TAIL_COL]
  b tailEnd

tailEnd:
  ldr r1, [0xfffe]
ret

createBoard:
  str r0, [0xfffe]
  str r1, [0xfffd]

  # init snake
  sma 0
  mov r0, 3
  str r0, [SNAKE_LENGTH]
  mov r0, 2
  str r0, [SNAKE_DIRECTION]
  mov r0, 12 # center
  str r0, [SNAKE_HEAD_LINE]
  mov r0, 40 #center
  str r0, [SNAKE_HEAD_COL]
  mov r0, 12
  str r0, [SNAKE_TAIL_LINE]
  mov r0, 37
  str r0, [SNAKE_TAIL_COL]
  mov r0, 12
  str r0, [SNAKE_LEFT_LINE]
  mov r0, 36
  str r0, [SNAKE_LEFT_COL]

  # move to home position
  mov r0, ESCAPE0
  call outputChar
  mov r0, ESCAPE1
  call outputChar
  mov r0, 0x48 # 'H'
  call outputChar


  # first and last line is full border
  mov r1, 0
  createLine0Loop:
    sma 1
    mov r0, BORDER
    str r0, [r1]
    call outputChar
    add r1, 1
    cmp r1, COLUMNS
  blt createLine0Loop

  mov r0, 0x0a # LF
  call outputChar
  mov r0, 0x0d # CR
  call outputChar

  // line 2 to 23 have first and last column border
  mov r1, 2 # skip first line
  str r1, [LINE_COUNTER]
  createLineLoop:
    # load mar1 with line space
    sma r1
    mov r1, 0
    mov r0, BORDER
    str r0, [r1]
    call outputChar
    add r1, 1
    mov r0, SPACE
    # loop through line (1-79) and store space
    createColumnLoop:
      str r0, [r1]
      add r1, 1
      cmp r1, COLUMNS_1
    blt createColumnLoop
    # store end border
    mov r0, BORDER
    str r0, [r1]
    call outputChar

    mov r0, 0x0a # LF
    call outputChar
    mov r0, 0x0d # CR
    call outputChar

    ldr r1, [LINE_COUNTER]
    add r1, 1
    str r1, [LINE_COUNTER]
    cmp r1, LINES
  blt createLineLoop # skip last line

  # draw last line
  mov r1, 0
  createLineLastLoop:
    sma LINES
    mov r0, BORDER
    str r0, [r1]
    call outputChar
    add r1, 1
    cmp r1, COLUMNS
  blt createLineLastLoop

  # draw snake
  ldr r0, [SNAKE_HEAD_LINE]
  stf r0, [PAR2]
  ldr r0, [SNAKE_HEAD_COL]
  stf r0, [PAR1]
  mov r0, HEAD
  call setScreen

  mov r1, 0
  snakeBody:
    ldr r0, [SNAKE_HEAD_LINE]
    stf r0, [PAR2]
    ldr r0, [SNAKE_HEAD_COL]
    add r0, r1
    stf r0, [PAR1]
    mov r0, RIGHT
    call setScreen
    add r1, 1
    cmp r1, 3
    blt snakeBody

  ldr r0, [0xfffe]
  ldr r1, [0xfffd]
ret


// r0: char, PAR1: col, PAR2: line
setScreen:
  str r0, [0xfffe]

  # store
  ldr r1, [PAR2]
  sma r1
  ldr r1, [PAR1]
  str r0, [r1]

  # decimal needs to be one based
  mov r0, ESCAPE0
  call outputChar
  mov r0, ESCAPE1
  call outputChar
  ldr r0, [PAR2] # line is already one based
  call outputDecimal
  mov r0, 0x3b # ';'
  call outputChar
  ldr r0, [PAR1]
  add r0, 1 # column is not one based
  call outputDecimal
  mov r0, 0x48 # 'H'
  call outputChar

  ldr r0, [0xfffe]
  call outputChar

ret



# drawBoard:
#   str r0, [0xfffe]
#   str r1, [0xfffd]

#   // go to home '\033[H'
#   // clear screen '\033[2J'
#   mov r0, ESCAPE0
#   call outputChar
#   mov r0, ESCAPE1
#   call outputChar
#   mov r0, 0x32 # '2'
#   call outputChar
#   mov r0, 0x4a # 'J'
#   call outputChar

#   mov r0, 1
#   str r0, [LINE_COUNTER]
#   drawLineLoop:
#     mov r0, 0
#     str r0, [COLUMN_COUNTER]
#     # loop through line (1-70) and store space
#     drawColumnLoop:
#       ldr r1, [LINE_COUNTER]
#       sma r1
#       subs r0, [SNAKE_LEFT_COL]
#       stf r0, [PAR1]
#       stf r1, [PAR2]
#       bne checkSpace
#       subs r1, [SNAKE_LEFT_LINE]
#       bne checkSpace
#       ldr r0, [r0]
#       call drawChar
#       b afterOutput

#     checkSpace:
#       ldr r0, [r0]
#       cmp r0, SPACE
#       beq afterOutput
#       ldr r0, [r0]
#       call drawChar
#     afterOutput:
#       ldr r0, [COLUMN_COUNTER]
#       add r0, 1
#       str r0, [COLUMN_COUNTER]
#       cmp r0, COLUMNS
#     blt drawColumnLoop

#     ldr r0, [LINE_COUNTER]
#     add r0, 1
#     str r0, [LINE_COUNTER]
#     cmp r0, LINES
#   ble drawLineLoop

#   mov r0, 0x0d # cr
#   call outputChar
#   mov r0, 0x0a # lf
#   call outputChar

#   ldr r0, [0xfffe]
#   ldr r1, [0xfffd]
# ret

# r0 is parameter
outputChar:
  str r1, [0xfffe]

  outputCharLoop:
    ldr r1, [UART_TX_FULL]
    cmp r1, 1
    beq outputCharLoop # no capacity to send
  str r0, [UART_DATA]

  ldr r1, [0xfffe]
ret

# r0 is parameter
outputDecimal:
  str r1, [0xfffe]

  mov r1, 100
  stf r1, [PAR1]
  call divMod # r0 / 100
  ldf r1, [PAR1] # mod result
  add r0, 0x30 # make to char
  call outputChar
  mov r0, r1 # remainder is parameter for next divMod
  mov r1, 10
  stf r1, [PAR1]
  call divMod
  ldf r1, [PAR1]
  add r0, 0x30 # make to char
  call outputChar
  mov r0, r1 # last char to output
  add r0, 0x30 # make to char
  call outputChar

  ldr r1, [0xfffe]
ret

# r0 / PAR1
# result: r0 -> div, *PAR1 -> mod
divMod:
  str r1, [0xfffe]
  mov r1, 0
  divLoop:
    add r1, 1
    sub r0, [PAR1]
  bpl divLoop # positive or zero (N Clear)
  # executing one step too much, undo it
  add r0, [PAR1]
  sub r1, 1

  str r0, [PAR1]
  mov r0, r1
  ldr r1, [0xfffe]
ret

# r0 is return value:
# 0 if no char was read
readChar:
  ldr r0, [UART_RX_EMPTY]
  cmp r0, 1
  beq readChar0
  ldr r0, [UART_DATA]
  ret
  readChar0:
  mov r0, 0
ret

# r0 is return value:
# -1 for nothing, 0 for up, 1 for down, 2 for right, 3 for left
readArrow:
  str r1, [0xfffe]
readArrowLoop:
  call readChar
  cmp r0, 0
  beq readArrowRet # no char received
  cmp r0, ESCAPE0
  bne readArrowLoop # make sure to empty the fifo

  call readChar
  cmp r0, 0
  beq readArrowRet
  cmp r0, ESCAPE1
  bne readArrowLoop

  call readChar
  cmp r0, 0x41 # A
  blt readArrowLoop
  cmp r0, 0x44 # D
  bgt readArrowLoop
  sub r0, 0x41 # return 0-4
ret

  readArrowRet:
  ldr r1, [0xfffe]
  mov r0, -1 # return -1 if nothing was found
ret

prng:
  ldr r0, [PRNG_SEED]
  subs r0, 0
  beq prngDoEor
  lsl r0, 1
  beq prngNoEor
  bcc prngNoEor
prngDoEor:
  xor r0, 0x1d
prngNoEor:
  str r0, [PRNG_SEED]
 

# par0 (r0) ignored and preserved, value outputed is p1
output:
  sts r0, [0xfffe] # store r0
  sts r1, [0xfffd] # store r1
  ldr r0, [SIMPLE_IO]
  ldr r1, [PAR1] # value to output
  str r1, [SIMPLE_IO]
  # outLoop:
  # subs r0, [SIMPLE_IO]
  # beq outLoop
  lds r0, [0xfffe] # restore r0
  lds r1, [0xfffd] # restore r1
ret