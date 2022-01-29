include "prng.s"
include "uart_16c550.s"

SIMPLE_IO = 0xfe00
UART_RX_EMPTY = 0xfe09
UART_TX_FULL = 0xfe0a
UART_DATA = 0xfe0b
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

0x20.LOST_STRING = "You lost!!! Score: "

start:
  call uart_init
  # clear screen
  mov r0, ESCAPE0
  call uart_write
  mov r0, ESCAPE1
  call uart_write
  mov r0, 0x32 # '2'
  call uart_write
  mov r0, 0x4a # 'J'
  call uart_write

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
    ldr r0, [SNAKE_LENGTH]

    # move cursor to the top
    mov r0, 1 # line
    stf r0, [PAR2]
    mov r0, 0 # col
    stf r0, [PAR1]
    mov r0, BORDER
    call setScreen
    ldr r0, [SNAKE_LENGTH]
    str r0, [SIMPLE_IO]
    # wait 111ms
    mov r0, 111
    call delay_ms

    call readArrow
    # change direction if != -1
    cmp r0, -1
    beq mainLoop
    str r0, [SNAKE_DIRECTION]
  b mainLoop

  lost:
  // set position to upper center
  mov r0, 6 # line
  stf r0, [PAR2]
  mov r0, 27 # col
  stf r0, [PAR1]
  mov r0, SPACE
  call setScreen
  mov r0, LOST_STRING
  call outputString
  ldr r0, [SNAKE_LENGTH]
  call outputDecimal
  lostLoop:
  b lostLoop


updateItem:
  str r1, [0xfffe]

  itemColumn:
    call prng
    and r0, 0x7f # limit columns
    cmp r0, COLUMNS
    bhs itemColumn # if out of scope redo
    mov r1, r0
  itemLine:
    call prng
    and r0, 0x1f # limit lines
    cmp r0, LINES
    bgt itemLine # if out of scope redo
    stf r0, [PAR2]
    sma r0 # line
    ldr r0, [r1]
    cmp r0, SPACE
  bne itemColumn # if there is something at the new item position find a new one
  # store new item
  stf r1, [PAR1]
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
    mov r0, UP
    call setScreen
    ldr r0, [SNAKE_HEAD_LINE]
    sub r0, 1
    str r0, [SNAKE_HEAD_LINE]
  b headEnd

  headDown:
    mov r0, DOWN
    call setScreen
    ldr r0, [SNAKE_HEAD_LINE]
    add r0, 1
    str r0, [SNAKE_HEAD_LINE]
  b headEnd

  headLeft:
    mov r0, LEFT
    call setScreen
    ldr r0, [SNAKE_HEAD_COL]
    sub r0, 1
    str r0, [SNAKE_HEAD_COL]
  b headEnd

  headRight:
    mov r0, RIGHT
    call setScreen
    ldr r0, [SNAKE_HEAD_COL]
    add r0, 1
    str r0, [SNAKE_HEAD_COL]
  b headEnd

headEnd:
  
  ldr r1, [SNAKE_HEAD_LINE]
  stf r1, [PAR2]
  sma r1
  ldr r1, [SNAKE_HEAD_COL]
  stf r1, [PAR1]
  ldr r1, [r1] # load item at new position
  sts r1, [0x00]
  # store & show head
  mov r0, HEAD
  call setScreen
  # if new position is not space or item -> lost
  lds r0, [0x00] # load saved item
  cmp r0, SPACE
  beq headSpace
  cmp r0, ITEM
  beq headItem
  mov r0, -1
  ldr r1, [0xfffe]
ret
headSpace:
  mov r0, 0
  ldr r1, [0xfffe]
ret
headItem:
  mov r0, 1
  ldr r1, [0xfffe]
ret

updateTail:
  str r1, [0xfffe]

  ldr r0, [SNAKE_TAIL_LINE]
  str r0, [SNAKE_LEFT_LINE]
  stf r0, [PAR2]
  sma r0
  ldr r0, [SNAKE_TAIL_COL]
  str r0, [SNAKE_LEFT_COL]
  stf r0, [PAR1]
  # load direction char
  ldr r1, [r0]
  mov r0, SPACE
  call setScreen
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
  mov r0, 4
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
  call uart_write
  mov r0, ESCAPE1
  call uart_write
  mov r0, 0x48 # 'H'
  call uart_write


  # first and last line is full border
  mov r1, 0
  createLine0Loop:
    sma 1
    mov r0, BORDER
    str r0, [r1]
    call uart_write
    add r1, 1
    cmp r1, COLUMNS
  blt createLine0Loop

  mov r0, 0x0a # LF
  call uart_write
  mov r0, 0x0d # CR
  call uart_write

  // line 2 to 23 have first and last column border
  mov r1, 2 # skip first line
  str r1, [LINE_COUNTER]
  createLineLoop:
    # load mar1 with line space
    sma r1
    mov r1, 0
    mov r0, BORDER
    str r0, [r1]
    call uart_write
    add r1, 1
    mov r0, SPACE
    # loop through line (1-79) and store space
    createColumnLoop:
      ldr r0, [LINE_COUNTER]
      sma r0
      mov r0, SPACE
      str r0, [r1]
      call uart_write
      add r1, 1
      cmp r1, COLUMNS_1
    blt createColumnLoop
    # store end border
    mov r0, BORDER
    str r0, [r1]
    call uart_write

    mov r0, 0x0a # LF
    call uart_write
    mov r0, 0x0d # CR
    call uart_write

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
    call uart_write
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

  mov r1, 1
  snakeBody:
    ldr r0, [SNAKE_HEAD_LINE]
    stf r0, [PAR2]
    ldr r0, [SNAKE_HEAD_COL]
    sub r0, r1
    stf r0, [PAR1]
    mov r0, RIGHT
    call setScreen
    add r1, 1
    cmp r1, 3
  ble snakeBody

  ldr r0, [0xfffe]
  ldr r1, [0xfffd]
ret


// r0: char, PAR1: col, PAR2: line
setScreen:
  str r0, [0xfffe]
  str r1, [0xfffd]

  # store
  ldr r1, [PAR2]
  sma r1
  ldr r1, [PAR1]
  str r0, [r1]

  # decimal needs to be one based
  mov r0, ESCAPE0
  call uart_write
  mov r0, ESCAPE1
  call uart_write
  ldr r0, [PAR2] # line is already one based
  call outputDecimal
  mov r0, 0x3b # ';'
  call uart_write
  ldr r0, [PAR1]
  add r0, 1 # column is not one based
  call outputDecimal
  mov r0, 0x48 # 'H'
  call uart_write

  ldr r0, [0xfffe]
  call uart_write

  ldr r1, [0xfffd]

ret

# r0 is parameter
outputDecimal:
  str r1, [0xfffe]

  mov r1, 100
  stf r1, [PAR1]
  call divMod # r0 / 100
  ldf r1, [PAR1] # mod result
  add r0, 0x30 # make to char
  call uart_write
  mov r0, r1 # remainder is parameter for next divMod
  mov r1, 10
  stf r1, [PAR1]
  call divMod
  ldf r1, [PAR1]
  add r0, 0x30 # make to char
  call uart_write
  mov r0, r1 # last char to output
  add r0, 0x30 # make to char
  call uart_write

  ldr r1, [0xfffe]
ret

# r0: address of string
outputString:
  str r1, [0xfffe]
  sts r0, [0x00]
  mov r1, 0
  outputStringLoop:
    lds r0, [0x00]
    sma r0
    ldr r0, [r1]
    cmp r0, 0
    beq outputStringEnd
    call uart_write
    add r1, 1
    cmp r1, 255
    bne outputStringLoop

  outputStringEnd:

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
# -1 for nothing, 0 for up, 1 for down, 2 for right, 3 for left
readArrow:
  str r1, [0xfffe]
readArrowLoop:
  call uart_read
  cmp r0, 0
  beq readArrowRet # no char received
  cmp r0, ESCAPE0
  bne readArrowLoop # make sure to empty the fifo

  call uart_read
  cmp r0, 0
  beq readArrowRet
  cmp r0, ESCAPE1
  bne readArrowLoop

  call uart_read
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


# r0: delay in ms
delay_ms:
  sts r0, [0x00]

  delay_ms_outer_loop:

    # 2MHz clock -> 1ms is 2000cycle
    # per loop 4+4+3+3=14 cycles (below)
    # -> 198.6 times 10 cycles per iteration
    mov r0, 0
    delay_ms_loop:
      add r0, 1 # 4 cycles
      cmp r0, 199 # 3 cycles
    blo delay_ms_loop # 3 cycles

    lds r0, [0x00] # 4 cycles
    sub r0, 1 # 4 cycles
    sts r0, [0x00] # 3 cycles
  bhi delay_ms_outer_loop # 3 cycles
ret