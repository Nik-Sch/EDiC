#!/bin/env python3
from serial import Serial
import sys

def parseCoe(filename: str):
  f = open(filename, 'r')
  lines = f.readlines()
  f.close()
  result: list[int] = []
  for line in lines[2:]:
    if line != ';':
      result.append(int(line, 16))
  return result

def getByte(ser: Serial):
  r = ser.read(1).decode('ascii')
  print('received: ' + r)
  return r

if len(sys.argv) != 2:
  print(sys.argv[0] + ' <in>.coe')
  exit(1)

with Serial('/dev/ttyUSB2', 2000000) as ser:
  instructions = parseCoe(sys.argv[1])
  ser.write('i'.encode('ascii'))
  ser.write((len(instructions) >> 8) % 256)
  ser.write((len(instructions) >> 0) % 256)
  if getByte(ser) == 'c':
    print('size confirmed, sending instructions...')
    i = 0
    for instruction in instructions:
      print(f'{i + 1}/{len(instructions)}')
      i += 1
      ser.write((instruction >> 16) % 256)
      ser.write((instruction >>  8) % 256)
      ser.write((instruction >>  0) % 256)
      if getByte(ser) != 'c':
        print('instruction was not confirmed.')
        exit(1)
    if getByte(ser) == 'c':
      print('All instructions confirmed.')
    else:
      print('instructions not confirmed.')
  else:
    print('size not confirmed.')
