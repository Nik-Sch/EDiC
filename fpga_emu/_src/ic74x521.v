// 8bit comperator, inverting https://www.ti.com/lit/ds/symlink/sn54als520.pdf
module ic74x521(
input wire port1,
input wire port2,
input wire port3,
input wire port4,
input wire port5,
input wire port6,
input wire port7,
input wire port8,
input wire port9,
input wire port10,
input wire port11,
input wire port12,
input wire port13,
input wire port14,
input wire port15,
input wire port16,
input wire port17,
input wire port18,
output wire port19,
input wire port20
);

wire [7:0] a;
wire [7:0] b;

assign a = {port2, port4, port6, port8, port11, port13, port15, port17};
assign b = {port3, port5, port7, port9, port12, port14, port16, port18};

assign port19 = a != b || port1;

endmodule