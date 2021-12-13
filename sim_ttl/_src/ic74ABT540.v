// octal buffer inverting https://www.ti.com/lit/ds/symlink/sn54ls540.pdf
// used for the leds -> ignoring
module ic74ABT540(
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

assign port11 = ~port9;
assign port12 = ~port8;
assign port13 = ~port7;
assign port14 = ~port6;
assign port15 = ~port5;
assign port16 = ~port4;
assign port17 = ~port3;
assign port18 = ~port2;

always @* begin
  if (port1 || port19) begin
    $fatal("74ABT540, noe ist not supported.");
  end
end

endmodule