// hex schmitt inverter https://www.ti.com/lit/ds/symlink/sn74ls14.pdf

module ic74x14(
input wire port1,
output wire port2,
input wire port3,
output wire port4,
input wire port5,
output wire port6,
input wire port7,
output wire port8,
input wire port9,
output wire port10,
input wire port11,
output wire port12,
input wire port13,
input wire port14
);

assign port2 = ~port1;
assign port4 = ~port3;
assign port6 = ~port5;
assign port8 = ~port9;
assign port10 = ~port11;
assign port12 = ~port13;
endmodule