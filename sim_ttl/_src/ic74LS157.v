// 4 * 2 to 1 mux https://www.ti.com/lit/ds/symlink/sn74ls153.pdf
module ic74LS157(
input wire port1,
input wire port2,
input wire port3,
output wire port4,
input wire port5,
input wire port6,
output wire port7,
input wire port8,
output wire port9,
input wire port10,
input wire port11,
output wire port12,
input wire port13,
input wire port14,
output wire port15,
input wire port16
);
always @* begin
  // y <= sel ? b : a
  port4 <= port1 ? port3 : port2;
  port7 <= port1 ? port6 : port5;
  port9 <= port1 ? port10 : port11;
  port12 <= port1 ? port13 : port14;

  // ~g
  if (port15) begin
    port4 <= 0;
    port7 <= 0;
    port9 <= 0;
    port12 <= 0;
  end
end

endmodule