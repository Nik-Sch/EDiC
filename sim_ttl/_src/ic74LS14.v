// hex schmitt inverter https://www.ti.com/lit/ds/symlink/sn74ls14.pdf

module ic74LS14(
input wire port1 = 0,
output wire port2,
input wire port3 = 0,
output wire port4,
input wire port5 = 0,
output wire port6,
output wire port8,
input wire port9 = 0,
output wire port10,
input wire port11 = 0,
output wire port12,
input wire port13 = 0
);

assign port2 = ~port1;
assign port4 = ~port3;
assign port6 = ~port5;
assign port8 = ~port9;
assign port10 = ~port11;
assign port12 = ~port13;
endmodule