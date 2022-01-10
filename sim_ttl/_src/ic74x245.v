// 3 state octal bus transceiver https://www.ti.com/lit/ds/symlink/sn74ls245.pdf
module ic74x245(
input wire port1,
output wire port2,
output wire port3,
output wire port4,
output wire port5,
output wire port6,
output wire port7,
output wire port8,
output wire port9,
input wire port10,
output wire port11,
output wire port12,
output wire port13,
output wire port14,
output wire port15,
output wire port16,
output wire port17,
output wire port18,
input wire port19,
input wire port20,

output wire port21, // noe a
output wire port22, // noa b

input wire port102,
input wire port103,
input wire port104,
input wire port105,
input wire port106,
input wire port107,
input wire port108,
input wire port109,
input wire port111,
input wire port112,
input wire port113,
input wire port114,
input wire port115,
input wire port116,
input wire port117,
input wire port118
);

assign port21 = port19 | port1;
assign port22 = port19 | ~port1;

assign port9 = port111;
assign port8 = port112;
assign port7 = port113;
assign port6 = port114;
assign port5 = port115;
assign port4 = port116;
assign port3 = port117;
assign port2 = port118;

assign port11 = port109;
assign port12 = port108;
assign port13 = port107;
assign port14 = port106;
assign port15 = port105;
assign port16 = port104;
assign port17 = port103;
assign port18 = port102;

endmodule