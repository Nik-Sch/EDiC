// quad and https://www.ti.com/lit/ds/symlink/sn74ls08.pdf
module ic74x08(
input wire port1,
input wire port2,
output wire port3,
input wire port4,
input wire port5,
output wire port6,
input wire port7,
output wire port8,
input wire port9,
input wire port10,
output wire port11,
input wire port12,
input wire port13,
input wire port14
);

assign port3 = port1 & port2;
assign port6 = port4 & port5;
assign port8 = port9 & port10;
assign port11 = port12 & port13;

endmodule