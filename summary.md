# structure
## registers
- 2 general purpose: r, s
- 1 pc
- 1 ir
## 256byte ram for program
## instructions
### what's needed?
reg2reg alu
imm2reg alu
conditional mov to pc
r0:=[r1]
[r0]:=r1

last three bits: aluOp + sub
### what are the instructions
00:
  0: alu
   rs000: r := r +  s
   rs001: r := r -  s
   rs010: r := r &  s
   rs011: r := r & !s
   rs100: r := r ^  s
   rs101: r := r ^ !s
   rs110: r := r >> s
   rs111: r := r << s
  1: memory
   000rs: r := [s]
   001rs: [s] := r

01: zero padded imm value always to reg 0
  imm000: r0 := r0 +  imm
  imm001: r0 := r0 -  imm
  imm010: r0 := r0 &  imm
  imm011: r0 := r0 & !imm
  imm100: r0 := r0 ^  imm
  imm101: r0 := r0 ^ !imm
  imm110: r0 := r0 >> imm
  imm111: r0 := r0 << imm
10: jump
  r00000: pc := r
  r00001: r := pc
  r00010: branchEqual: pc := r
  r00011: branchNotEqual: pc := r
  r00100: branchLessThan : pc := r
  r00101: branchLessEqual : pc := r
  r00110: branchGreaterThan : pc := r
  r00111: branchGreaterEqual : pc := r
