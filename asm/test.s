IO = 0xfe00

# r = r x s/imm (alu)
# r = imm
mov r0, 1
mov r1, 3
# param order
add r1, r1
str r1, [IO] # expected 6
add r1, r0
str r1, [IO] # expected 7
add r0, r1
str r0, [IO] # expected 8
# all alu functions
sub r0, r1
str r0, [IO] # expected 1
# no consecutive output
str r1, [IO] # expected 7
and r0, r1
str r0, [IO] # expected 1
eor r0, r1
str r0, [IO] # expected 6
xnor r0, r1
str r0, [IO] # expected 254
sub r1, 1
str r1, [IO] # expected 6
lsr r0, r1
str r0, [IO] # expected 3
lsl r0, r1
str r0, [IO] # expected 192
add r0, 1
str r0, [IO] # expected 193

# r = r x [s]
# [s] = r (str)
# r = [s] (ldr)
# [193] := 193
str r0, [r0]
add r1, [r0]
str r1, [IO] # expected 199
sub r1, 6
add r0, [r1]
str r0, [IO] # expected 130
str r1, [r0]
mov r1, 0
ldr r1, [r0]
str r1, [IO] # expected 193
add r1, 1
str r1, [r1]
ldr r1, [r1]
str r1, [IO] # expected 194

# r = [imm] (ldr)
# mar1 = r
# mar1 = imm
# [imm] = r (str)
mov r0, 2
sma r0
mov r1, 10
mov r0, 1
# [0x0201] = 10
str r1, [r0]
sma 10
mov r1, 1
mov r0, 5
# [0x1001] = 5
str r0, [r1]
ldr r1, [0x0201]
str r1, [IO] # expected 5
ldr r0, [0x0a01]
str r0, [IO] # expected 10

# call
# ret
# r = [imm] incr sp
# [imm] = r incr sp
mov r0, 2
mov r1, 3
stf r0, [1]
stf r1, [2]
call test_fun
ldf r0, [1]
ldf r1, [2]
str r0, [IO] # expected 4
str r1, [IO] # expected 6
b after_fun

test_fun:
  lds r1, [1]
  str r1, [IO] # expected 2
  add r1, r1
  sts r1, [1]

  lds r0, [2]
  str r0, [IO] # expected 3
  add r0, r0
  sts r0, [2]
ret
after_fun:

# r = r x [imm]
# r = s
mov r0, 4
mov r1, 5
str r0, [2]
add r0, [2]
str r0, [IO] # expected 8
add r1, [2]
str r1, [IO] # expected 9
mov r1, r0
str r1, [IO] # expected 8
mov r1, 2
mov r0, r1
str r0, [IO] # expected 2

# y = r x s
# y = r x imm
# pc := imm

# equal
subs r1, r1
beq eq_true0
mov r0, 0
str r0, [IO] # should not happen
eq_true0:
mov r0, 1
str r0, [IO] #expected 1

subs r1, r0
beq eq_false0
mov r0, 2
str r0, [IO] # expected 2
eq_false0:
mov r0, 3
str r0, [IO] # expected 3

# equal change reg
subs r0, r0
beq eq_true1
mov r1, 0
str r1, [IO] # should not happen
eq_true1:
mov r1, 1
str r1, [IO] #expected 1

subs r0, r1
beq eq_false1
mov r1, 2
str r1, [IO] # expected 2
eq_false1:
mov r1, 3
str r1, [IO] # expected 3

# equal imm
subs r0, 3
beq eq_true2
mov r1, 0
str r1, [IO] # should not happen
eq_true2:
mov r1, 1
str r1, [IO] #expected 1


# not equal
mov r0, 8
mov r1, 255
subs r1, r0
bne neq_true
mov r0, 0
str r0, [IO] # should not happen
neq_true:
mov r0, 10
str r0, [IO] #expected 10

subs r1, r1
bne neq_false
mov r0, 2
str r0, [IO] # expected 2
neq_false:
mov r0, 3
str r0, [IO] # expected 3


# higher or same (unsigned) (carry set)
mov r0, 8
mov r1, 255
subs r1, r0
bhs hs_true
mov r0, 0
str r0, [IO] # should not happen
hs_true:
mov r0, 10
str r0, [IO] #expected 10

subs r0, r1
bhs hs_false
mov r0, 2
str r0, [IO] # expected 2
hs_false:
mov r0, 3
str r0, [IO] # expected 3

# lower (unsigned) (carry clear)
mov r0, 254
mov r1, 253
subs r1, r0
blo lo_true
mov r0, 0
str r0, [IO] # should not happen
lo_true:
mov r0, 10
str r0, [IO] #expected 10

mov r0, 254
subs r0, r1
blo lo_false
mov r0, 2
str r0, [IO] # expected 2
lo_false:
mov r0, 3
str r0, [IO] # expected 3

# minus (negative set)
mov r1, 5
mov r0, 10
subs r1, r0
bmi mi_true
mov r0, 0
str r0, [IO] # should not happen
mi_true:
mov r0, 10
str r0, [IO] #expected 10

subs r0, r1
bmi mi_false
mov r0, 2
str r0, [IO] # expected 2
mi_false:
mov r0, 3
str r0, [IO] # expected 3

# plus (positive or zero) (negative clear)
mov r1, 12
mov r0, 10
subs r1, r0
bpl pl_true
mov r0, 0
str r0, [IO] # should not happen
pl_true:
mov r0, 10
str r0, [IO] #expected 10

subs r0, r1
bpl pl_false
mov r0, 2
str r0, [IO] # expected 2
pl_false:
mov r0, 3
str r0, [IO] # expected 3

# overflow (overflow set)
mov r1, 120
mov r0, 125
adds r1, r0
bvs vs_true0
mov r0, 0
str r0, [IO] # should not happen
vs_true0:
mov r0, 10
str r0, [IO] #expected 10

mov r0, 5
adds r0, r1
bvs vs_false0
mov r0, 2
str r0, [IO] # expected 2
vs_false0:
mov r0, 3
str r0, [IO] # expected 3

mov r1, -120
mov r0, -125
adds r1, r0
bvs vs_true1
mov r0, 0
str r0, [IO] # should not happen
vs_true1:
mov r0, 10
str r0, [IO] #expected 10

mov r0, -5
adds r0, r1
bvs vs_false1
mov r0, 2
str r0, [IO] # expected 2
vs_false1:
mov r0, 3
str r0, [IO] # expected 3

# no overflow (overflow clear)
mov r1, 120
mov r0, 5
adds r1, r0
bvc vc_true
mov r0, 0
str r0, [IO] # should not happen
vc_true:
mov r0, 10
str r0, [IO] #expected 10

mov r0, 125
adds r0, r1
bvc vc_false
mov r0, 2
str r0, [IO] # expected 2
vc_false:
mov r0, 3
str r0, [IO] # expected 3

# higher (unsigned >)
mov r1, 120
mov r0, 119
subs r1, r0
bhi hi_true
mov r0, 0
str r0, [IO] # should not happen
hi_true:
mov r0, 10
str r0, [IO] #expected 10

mov r0, 120
subs r1, r0
bhi hi_false
mov r0, 2
str r0, [IO] # expected 2
hi_false:
mov r0, 3
str r0, [IO] # expected 3

# lower or same (unsigned <=)
mov r1, 120
mov r0, 120
subs r1, r0
bls ls_true
mov r0, 0
str r0, [IO] # should not happen
ls_true:
mov r0, 10
str r0, [IO] #expected 10

mov r0, 119
subs r1, r0
bls ls_false
mov r0, 2
str r0, [IO] # expected 2
ls_false:
mov r0, 3
str r0, [IO] # expected 3

# greater equals (signed >=)
mov r1, -5
mov r0, -5
subs r1, r0
bge ge_true
mov r0, 0
str r0, [IO] # should not happen
ge_true:
mov r0, 10
str r0, [IO] #expected 10

mov r0, 10
subs r1, r0
bge ge_false
mov r0, 2
str r0, [IO] # expected 2
ge_false:
mov r0, 3
str r0, [IO] # expected 3

# greater than (signed >)
mov r1, 121
mov r0, 120
subs r1, r0
bgt gt_true
mov r0, 0
str r0, [IO] # should not happen
gt_true:
mov r0, 10
str r0, [IO] #expected 10

mov r0, 121
subs r1, r0
bgt gt_false
mov r0, 2
str r0, [IO] # expected 2
gt_false:
mov r0, 3
str r0, [IO] # expected 3

# less or equals (signed <=)
mov r1, -5
mov r0, -5
subs r1, r0
ble le_true
mov r0, 0
str r0, [IO] # should not happen
le_true:
mov r0, 10
str r0, [IO] #expected 10

mov r0, -10
subs r1, r0
ble le_false
mov r0, 2
str r0, [IO] # expected 2
le_false:
mov r0, 3
str r0, [IO] # expected 3

# less than (signed <)
mov r1, 119
mov r0, 120
subs r1, r0
blt lt_true
mov r0, 0
str r0, [IO] # should not happen
lt_true:
mov r0, 10
str r0, [IO] #expected 10

mov r0, 10
subs r1, r0
blt lt_false
mov r0, 2
str r0, [IO] # expected 2
lt_false:
mov r0, 3
str r0, [IO] # expected 3