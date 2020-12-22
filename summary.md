# structure
## registers
- 2 general purpose: r, s
- 1 pc
- 1 ir
- 1 aluOut reg
## 256byte ram + 256 byte rom for program
## instructions

8 bit long instructions including all immediates
last three bits: aluOp + sub
immediate values zero padded 3 bits (0-7)
### what are the instructions
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
   rs000: y := r +  s
   rs001: y := r -  s
   rs010: y := r &  s
   rs011: y := r & !s
   rs100: y := r ^  s
   rs101: y := r ^ !s
   rs110: y := r >> s
   rs111: y := r << s

01: misc
010: non alu
0100: jumpy stuff
    r000: pc := r
    r001: r := pc
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
   rs000: r := r +  [s]
   rs001: r := r -  [s]
   rs010: r := r &  [s]
   rs011: r := r & ![s]
   rs100: r := r ^  [s]
   rs101: r := r ^ ![s]
   rs110: r := r >> [s]
   rs111: r := r << [s]

1: zero padded immediate alu always with reg 0
10: write back
  imm000: r0 := r0 +  imm
  imm001: r0 := r0 -  imm
  imm010: r0 := r0 &  imm
  imm011: r0 := r0 & !imm
  imm100: r0 := r0 ^  imm
  imm101: r0 := r0 ^ !imm
  imm110: r0 := r0 >> imm
  imm111: r0 := r0 << imm
11: only update status flags
  imm000: y := r0 +  imm
  imm001: y := r0 -  imm
  imm010: y := r0 &  imm
  imm011: y := r0 & !imm
  imm100: y := r0 ^  imm
  imm101: y := r0 ^ !imm
  imm110: y := r0 >> imm
  imm111: y := r0 << imm