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

# local variables
LINE_COUNTER = 0xff00
COLUMN_COUNTER = 0xff01


# screen is in memory starting from 0x0100
# one line has 256 bytes for ease of access
LINES = 24
COLUMNS = 80
COLUMNS_1 = 79

start:
  // mov r0, 120
  // call outputDecimal
  // mov r0, 42
  // call outputDecimal
  call createBoard
  mainLoop:
    # TODO: call update functions
    call updateHead
    call updateTail
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

updateHead:
  str r1, [0xfffe]

  ldr r0, [SNAKE_HEAD_LINE]
  sma r0
  ldr r0, [SNAKE_HEAD_COL]
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
  str r1, [r0]
  ldr r1, [SNAKE_HEAD_LINE]
  sub r1, 1
  str r1, [SNAKE_HEAD_LINE]
  b headEnd

  headDown:
  mov r1, DOWN
  str r1, [r0]
  ldr r1, [SNAKE_HEAD_LINE]
  add r1, 1
  str r1, [SNAKE_HEAD_LINE]
  b headEnd

  headLeft:
  mov r1, LEFT
  str r1, [r0]
  ldr r1, [SNAKE_HEAD_COL]
  sub r1, 1
  str r1, [SNAKE_HEAD_COL]
  b headEnd

  headRight:
  mov r1, RIGHT
  str r1, [r0]
  ldr r1, [SNAKE_HEAD_COL]
  add r1, 1
  str r1, [SNAKE_HEAD_COL]
  b headEnd

headEnd:
  # draw new head
  ldr r1, [SNAKE_HEAD_LINE]
  sma r1
  ldr r1, [SNAKE_HEAD_COL]
  mov r0, HEAD
  str r0, [r1]
  ldr r1, [0xfffe]
ret

updateTail:
  str r1, [0xfffe]

  ldr r0, [SNAKE_TAIL_LINE]
  sma r0
  ldr r0, [SNAKE_TAIL_COL]
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


  # first and last line is full border
  sma 1
  mov r1, BORDER
  mov r0, 0
  createLine0Loop:
    str r1, [r0]
    add r0, 1
    cmp r0, COLUMNS
  blt createLine0Loop

  sma LINES
  mov r0, 0
  createLineLastLoop:
    str r1, [r0]
    add r0, 1
    cmp r0, COLUMNS
  blt createLineLastLoop

  // line 2 to 23 have first and last column border
  mov r0, 2 # skip first line
  str r0, [LINE_COUNTER]
  createLineLoop:
    # load mar1 with line space
    sma r0
    mov r0, 0
    mov r1, BORDER
    str r1, [r0]
    add r0, 1
    mov r1, SPACE
    # loop through line (1-79) and store space
    createColumnLoop:
      str r1, [r0]
      add r0, 1
      cmp r0, COLUMNS_1
    blt createColumnLoop
    # store end border
    mov r1, BORDER
    str r1, [r0]

    ldr r0, [LINE_COUNTER]
    add r0, 1
    str r0, [LINE_COUNTER]
    cmp r0, LINES
  blt createLineLoop # skip last line

  # draw snake
  ldr r0, [SNAKE_HEAD_LINE]
  sma r0
  ldr r0, [SNAKE_HEAD_COL]
  mov r1, HEAD
  str r1, [r0]
  mov r1, RIGHT
  sub r0, 1
  str r1, [r0]
  sub r0, 1
  str r1, [r0]
  sub r0, 1
  str r1, [r0]

  ldr r0, [0xfffe]
  ldr r1, [0xfffd]
ret

// drawBoard:
//   str r0, [0xfffe]
//   str r1, [0xfffd]

//   // clear screen
//   mov r0, ESCAPE0
//   call outputChar
//   mov r0, ESCAPE1
//   call outputChar
//   mov r0, 0x32 # '2'
//   call outputChar
//   mov r0, 0x4A # 'A'
//   call outputChar

//   mov r0, 1
//   str r0, [LINE_COUNTER]
//   drawLineLoop:
//     sma r0
//     mov r0, 0
//     # loop through line (1-70) and store space
//     drawColumnLoop:
//       ldr r1, [r0]
//       cmp r1, SPACE
//       beq drawSkip
//       # draw everything that is not space
//       # output \033[y;xH where y and x are ascii decimal representations of x and y coordinates on the screen
//       mov r0, ESCAPE0
//       call outputChar
//       mov r0, ESCAPE1
//       call outputChar
//       ldr r0, [LINE_COUNTER]
//       call outputDecimal
//       mov r0, 0x3b # ';'
//       call outputChar
//       ldr r0, [COLUMN_COUNTER]
//       call outputDecimal
//       mov r0, 0x48 # 'H'
//       call outputChar
//       mov r0, r1 # output the actual char
//       call outputChar

//     drawSkip:
//       ldr r0, [COLUMN_COUNTER]
//       add r0, 1
//       cmp r0, COLUMNS
//     blt drawColumnLoop

//     ldr r0, [LINE_COUNTER]
//     add r0, 1
//     str r0, [LINE_COUNTER]
//     cmp r0, LINES
//   ble drawLineLoop

//   ldr r0, [0xfffe]
//   ldr r1, [0xfffd]
// ret
drawBoard:
  str r0, [0xfffe]
  str r1, [0xfffd]

  // go to home '\033[H'
  mov r0, ESCAPE0
  call outputChar
  mov r0, ESCAPE1
  call outputChar
  mov r0, 0x48 # 'H'
  call outputChar

  mov r0, 1
  str r0, [LINE_COUNTER]
  drawLineLoop:
    mov r0, 0
    str r0, [COLUMN_COUNTER]
    # loop through line (1-70) and store space
    drawColumnLoop:
      ldr r1, [LINE_COUNTER]
      sma r1
      ldr r0, [r0]
      call outputChar
      ldr r0, [COLUMN_COUNTER]
      add r0, 1
      str r0, [COLUMN_COUNTER]
      cmp r0, COLUMNS
    blt drawColumnLoop

    mov r0, 0x0a # lf
    call outputChar
    mov r0, 0x0d # cr
    call outputChar

    ldr r0, [LINE_COUNTER]
    add r0, 1
    str r0, [LINE_COUNTER]
    cmp r0, LINES
  ble drawLineLoop

  ldr r0, [0xfffe]
  ldr r1, [0xfffd]
ret

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