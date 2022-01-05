// octal register 3-state, clear, enable https://www.ti.com/lit/ds/symlink/sn54as825a.pdf
module ic74x825(
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
output reg port15,
output reg port16,
output reg port17,
output reg port18,
output reg port19,
output reg port20,
output reg port21,
output reg port22,
input wire port23,
input wire port24,

input wire port25
);

assign port25 = port1 | port2 | port23;

always @(posedge port13, negedge port11) begin

  if (!port14) begin
    port22 <= port3;
    port21 <= port4;
    port20 <= port5;
    port19 <= port6;
    port18 <= port7;
    port17 <= port8;
    port16 <= port9;
    port15 <= port10;
  end

  if (!port11) begin
    port22 <= 0;
    port21 <= 0;
    port20 <= 0;
    port19 <= 0;
    port18 <= 0;
    port17 <= 0;
    port16 <= 0;
    port15 <= 0;

  end
end

endmodule