#!/bin/env python3

import time
import tty
import sys
import termios
import fcntl
import os
import random

class Snake():
  fd = sys.stdin.fileno()
  old_settings = termios.tcgetattr(fd)
  old_flags = fcntl.fcntl(fd, fcntl.F_GETFL)
  tty.setraw(fd)
  fcntl.fcntl(fd, fcntl.F_SETFL, old_flags | os.O_NONBLOCK)

  # -1 for nothing, 0 for up, 1 for down, 2 for right, 3 for left
  def readArrow(self, ) -> int:
    ch = sys.stdin.read(1)
    while len(ch) == 1:
      if ch == '\033':
        ch = sys.stdin.read(1)
        if ch == '[':
          ch = sys.stdin.read(1)
          if ch in ['A', 'B', 'C', 'D']:
            return ord(ch) - ord('A')
      elif ch == '\003':
        fcntl.fcntl(self.fd, fcntl.F_SETFL, self.old_flags)
        termios.tcsetattr(self.fd, termios.TCSADRAIN, self.old_settings)
        self.end('break key hit...')
        exit(0)
      ch = sys.stdin.read(1)
    return -1

  def end(self, msg: str):
    fcntl.fcntl(self.fd, fcntl.F_SETFL, self.old_flags)
    termios.tcsetattr(self.fd, termios.TCSADRAIN, self.old_settings)
    print(msg)
    exit(0)

  COLUMNS = 80
  LINES = 24


  screen = list(' ' * (COLUMNS * LINES))

  def setScreen(self, x: int, y: int, c: str):
    if len(c) == 1:
      self.screen[y * self.COLUMNS + x] = c


  def getScreen(self, x: int, y: int) -> str:
    return self.screen[y * self.COLUMNS + x]

  def output(self, s: str):
    print(s, end='')


  def printScreen(self, ):
    # clear screen
    # self.output('\033[2J')
    # go to home
    self.output('\033[H')
    for y in range(self.LINES):
      for x in range(self.COLUMNS):
        self.output(self.getScreen(x, y))
      self.output('\r\n')
        # if (self.getScreen(x, y) != ' ' or (y == self.snakeLeftLine and x == self.snakeLeftColumn)):
        #   self.output(f'\033[{y};{x}H')
        #   self.output(self.getScreen(x, y))


  # main loop
  snakeLength: int = 3
  snakeHeadDirection: int = 2
  snakeHeadLine: int = LINES // 2
  snakeHeadColumn: int = COLUMNS // 2
  snakeTailLine: int = snakeHeadLine
  snakeTailColumn: int = snakeHeadColumn - 3
  snakeLeftLine: int = snakeHeadLine
  snakeLeftColumn: int = snakeHeadColumn - 4

  def __init__(self) -> None:

    for y in range(self.LINES):
      for x in range(self.COLUMNS):
        if (y == 0 or y == self.LINES - 1 or x == 0 or x == self.COLUMNS - 1):
          self.setScreen(x, y, '#')
    self.setScreen(self.snakeHeadColumn, self.snakeHeadLine, '@')
    self.setScreen(self.snakeHeadColumn - 1, self.snakeHeadLine, '>')
    self.setScreen(self.snakeHeadColumn - 2, self.snakeHeadLine, '>')
    self.setScreen(self.snakeHeadColumn - 3, self.snakeHeadLine, '>')

  dirArray = ['^', 'v', '>', '<']
  item = 'X'

  # 0 for up, 1 for down, 2 for right, 3 for left
  def updateHead(self, direction: int) -> bool:
    result = False
    self.setScreen(self.snakeHeadColumn, self.snakeHeadLine, self.dirArray[direction])
    if direction == 0: # up
      self.snakeHeadLine -= 1
    elif direction == 1: # down
      self.snakeHeadLine += 1
    elif direction == 2: # right
      self.snakeHeadColumn += 1
    elif direction == 3: # left
      self.snakeHeadColumn -= 1
    newPosition = self.getScreen(self.snakeHeadColumn, self.snakeHeadLine)
    if newPosition == self.item:
      result = True
    elif newPosition != ' ':
      self.end(f'You failed. Score: {self.snakeLength}')
    self.snakeHeadDirection = direction
    self.setScreen(self.snakeHeadColumn, self.snakeHeadLine, '@')
    return result

  def updateTail(self):
    c = self.getScreen(self.snakeTailColumn, self.snakeTailLine)
    self.snakeLeftColumn = self.snakeTailColumn
    self.snakeLeftLine = self.snakeTailLine
    self.setScreen(self.snakeLeftColumn, self.snakeLeftLine, ' ')
    if c == self.dirArray[0]:  # up
      self.snakeTailLine -= 1
    elif c == self.dirArray[1]:  # down
      self.snakeTailLine += 1
    elif c == self.dirArray[2]:  # right
      self.snakeTailColumn += 1
    elif c == self.dirArray[3]:  # left
      self.snakeTailColumn -= 1

  def newItem(self):
    while 1:
      randCol = random.randint(1, self.COLUMNS - 1)
      randLine = random.randint(1, self.LINES - 1)
      if self.getScreen(randCol, randLine) == ' ':
        self.setScreen(randCol, randLine, self.item)
        return


snake = Snake()
snake.newItem()
snake.printScreen()
while 1:
  newDirection = snake.readArrow()
  ateItem = snake.updateHead(snake.snakeHeadDirection if newDirection == -1 else newDirection)
  if ateItem:
    snake.snakeLength += 1
    snake.newItem()
  else:
    snake.updateTail()
  snake.printScreen()
  time.sleep(0.1)
