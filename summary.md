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
  01: jump
    00Xr: pc := r
    01Xr: r := pc
    10rs: jumpEqual: r - s == 0
    11rs: jumpLess : r - s <  0

01: zero padded imm value
  im00mr: r := r +  imm
  im01mr: r := r -  imm
  im10mr: r := r << imm
  im11mr: r := r >> imm

10: memory
  00:
    00rs: r := [s]
    01rs: [s] := r