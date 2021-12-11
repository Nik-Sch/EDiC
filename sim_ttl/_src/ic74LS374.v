// octal register with oe https://www.ti.com/lit/ds/symlink/sn74ls374.pdf
module ic74LS374(
input wire port1,
output reg port2,
input wire port3,
input wire port4,
output reg port5,
output reg port6,
input wire port7,
input wire port8,
output reg port9,
input wire port10,
input wire port11,
output reg port12,
input wire port13,
input wire port14,
output reg port15,
output reg port16,
input wire port17,
input wire port18,
output reg port19,
input wire port20
);

always @(posedge port11) begin
  if (port1) begin
    $fatal("74*374 tri state cannot be used (port1 low).");
  end

  port2 <= port3;
  port5 <= port4;
  port6 <= port7;
  port9 <= port8;
  port12 <= port13;
  port15 <= port14;
  port19 <= port18;
  port16 <= port17;
end

endmodule