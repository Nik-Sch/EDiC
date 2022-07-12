#!/bin/env python3
import numpy as np
import matplotlib.pyplot as plt
import sys

plt.rc('text', usetex=True)
plt.rc('font', family='serif')

x = np.linspace(0, 0.1, 1000)
x0 = 0.04
x1 = 0.05
r = 0.001 # radius of conductor
I = 0.05
def H(_x0):
  y = I / (2 * np.pi * (x - _x0)) * (np.abs(x - _x0) > r)
  y[y == 0] = np.nan
  return y
def sum(y):
  _y = np.copy(y)
  _y[np.isnan(_y)] = 0
  return np.sum(_y)

y2 = (H(x0) - H(x0 + 0.02))
plt.bar(x * 1000, y2, label=f'2 wires 20mm apart')
y1 = (H(x1) - H(x1 + 0.001))
plt.bar(x * 1000, y1, label=f'2 wires 1mm apart')
plt.vlines([x0 * 1000, (x0 + 0.02) * 1000], -0.5, 0.5)
plt.vlines([x1 * 1000, (x1 + 0.001) * 1000], -0.5, 0.5, colors='orange')
plt.xlabel('x in $mm$')
plt.ylabel('H in $Am^{-1}$')
# plt.ylim(-.5, 5)
plt.grid()
plt.legend()

plt.savefig(sys.argv[1], bbox_inches='tight')