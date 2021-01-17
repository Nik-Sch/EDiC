# structure
## registers
- 2 general purpose: r, s
- 1 pc
- 1 ir
- 1 aluOut reg
## 256byte ram + 256 byte rom for program
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
011: mem alu
   rsalu: r := r x [s]

1: immediate
100: alu
   0ralu: r0 := r0 x imm
   1ralu:  y := r0 x imm
1100: mem alu
    ralu: r0 := r0 x [imm]
10100: jumpy stuff
     001: pc := imm
     010: branchEqual: pc := imm
     011: branchNotEqual: pc := imm
     100: branchLessThan: pc := imm
     101: branchLessEqual: pc := imm
     110: branchGreaterThan: pc := imm
     111: branchGreaterEqual: pc := imm
     111: branchGreaterEqual: pc := r
10101: memory/io
     00r: r := [imm] # ldr
     01r: [imm] := r # str
     10r: r := imm

```