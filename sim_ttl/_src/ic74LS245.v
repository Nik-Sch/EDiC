// 3 state octal bus transceiver https://www.ti.com/lit/ds/symlink/sn74ls245.pdf
module ic74LS245(
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
output wire port11,
output wire port12,
output wire port13,
output wire port14,
output wire port15,
output wire port16,
output wire port17,
output wire port18,
input wire port19,
input wire port20
);

// actual 3 state logic is handled by the generator
always @* begin
  if (port1 != 1) begin
    $fatal("74*245: port1 (A->B) cannot be 0");
  end
end

assign port11 = port9;
assign port12 = port8;
assign port13 = port7;
assign port14 = port6;
assign port15 = port5;
assign port16 = port4;
assign port17 = port3;
assign port18 = port2;

endmodule