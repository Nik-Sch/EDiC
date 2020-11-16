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

### what are the instructions
00:
  00: alu
    00rs: r := r + s
    01rs: r := r - s
    10rs: r := r & s
    11rs: r := r ^ s
  01: memory
    00rs: r := [s]
    01rs: [s] := r

01: zero padded imm value
  imm00r: r := r +  imm
  imm01r: r := r -  imm
  imm10r: r := r << imm
  imm11r: r := r >> imm
10: jump
  00000r: pc := r
  00001r: r := pc
  00010r: jumpEqual: pc := r if Z
  00011r: jumpLess : pc := r if N