## instructions
r and s are register 0 or 1
```
000rsalu: r := r x s (see aluOp below)
001rsalu: y := r x s
010000rs: r := [s] # ldr
010001rs: [s] := r # str
010010rs: r := s
0100110r: mar1 := r
01001110: mar1 := imm
011rsalu: r := r x [s]
1000ralu: r := r x imm
1001ralu: y := r x imm
1010flag: pc := imm if stuff (see flags below)
10110000: call
10110001: return
1100ralu: r := r x [imm]
1101ralu: y := r x [imm]
1111000r: r := [imm] # ldr
1111001r: [imm] := r # str
1111010r: r := [imm] (incremented sp for function parameter and return value)
1111011r: [imm] := r (incremented sp for function parameter and return value)
1111100r: r := imm
```

## aluOp
```
000: r := r +  s
001: r := r -  s
010: r := r &  s
011: r := r & !s
100: r := r ^  s
101: r := r ^ !s
110: r := r >> s
111: r := r << s
```

## flags
```
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
1101: (GT) Signed > [Z == 0 and N && V the same]
1110: (LE) Signed <= [Z == 1 or N && V differ]
1111: (NE) Never
```

## calling convention
first parameter in r0, other parameters in stack from address 0 on
return value in r0
r1 is preserved