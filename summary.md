# structure
## registers
- 2 general purpose: r0, r1
- 1 pc
- 1 ir
- 1 mar
- 1 aluOut reg
## 256byte ram + 2 * 256 byte rom for program and immediate
## instructions

8 bit long instructions with immediates as the next word
last three bits: aluOp + sub
### what are the instructions
```
0: no immediate
00: reg alu
000: write back
   rs000: r := r +  s
   rs001: r := r -  s
   rs010: r := r &  s
   rs011: r := r & !s
   rs100: r := r ^  s
   rs101: r := r ^ !s
   rs110: r := r >> s
   rs111: r := r << s
001: alu no write back
   rsalu: y := r x s

01: misc
010: non alu
0100: jumpy stuff
    r000: r := pc
    r001: pc := r
    r010: branchEqual: pc := r
    r011: branchNotEqual: pc := r
    r100: branchLessThan: pc := r
    r101: branchLessEqual: pc := r
    r110: branchGreaterThan: pc := r
    r111: branchGreaterEqual: pc := r
0101: memory/io
    00rs: r := [s] # ldr
    01rs: [s] := r # str
    10rs: r := s
    110r: r := in
    111r: out := r
011: mem alu (s is lower address)
   rsalu: r := r x [s]

1: immediate
100: alu
   0ralu: r0 := r0 x imm
   1ralu:  y := r0 x imm
1010: jumpy stuff (pc := imm)
    0000: (AL) Always [Any]
    0001: (EQ) Equal [Z == 1]
    0010: (NE) Not equal [Z == 0]
    0011: (CS) Higher or same (unsigned >=) [C == 1]
    0100: (CC) Lower (unsigned <) [C == 0]
    0101: (MI) Negative [N == 1]
    0110: (PL) Positive or zero [N == 0]
    0111: (VS) Overflow [V == 1]
    1000: (VC) No overflow [V == 0]
    1001: (HI) Higher (unsigned >) [C == 1 && Z == 0]
    1010: (LS) Lower or same (unsigned <=) [C == 0 or Z == 1]
    1011: (GE) Signed >= [N and V the same]
    1100: (LT) Signed < [N and V differ]
    1101: (GT) Signed > [Z == 0, N && V the same]
    1110: (LE) Signed <= [Z == 1, N && V differ]
1011: jumpy stuff (pc[7:0] := bus, pc[15:8] := imm[15:8])
    0000: (AL) Always [Any]
    0001: (EQ) Equal [Z == 1]
    0010: (NE) Not equal [Z == 0]
    0011: (CS) Higher or same (unsigned >=) [C == 1]
    0100: (CC) Lower (unsigned <) [C == 0]
    0101: (MI) Negative [N == 1]
    0110: (PL) Positive or zero [N == 0]
    0111: (VS) Overflow [V == 1]
    1000: (VC) No overflow [V == 0]
    1001: (HI) Higher (unsigned >) [C == 1 && Z == 0]
    1010: (LS) Lower or same (unsigned <=) [C == 0 or Z == 1]
    1011: (GE) Signed >= [N and V the same]
    1100: (LT) Signed < [N and V differ]
    1101: (GT) Signed > [Z == 0, N && V the same]
    1110: (LE) Signed <= [Z == 1, N && V differ]
110: mem alu
   0ralu: r0 := r0 x [imm]
   1ralu: y := r0 x [imm]
11110: memory/io
     00r: r := [imm] # ldr
     01r: [imm] := r # str
     10r: r := imm
```