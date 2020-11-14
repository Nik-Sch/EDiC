module regset(
  input wire i_clk,
  input wire i_reset,

  input wire[7:0] i_d,
  input wire i_writeR,
  input wire i_writeS,
  output logic[7:0] o_r,
  output logic[7:0] o_s
);

always @(posedge i_clk) begin
  if (i_writeR) begin
    o_r <= i_d;
  end
  if (i_writeS) begin
    o_s <= i_d;
  end
  if (i_reset) begin
    o_s <= 0;
    o_r <= 0;
  end
end

endmodule