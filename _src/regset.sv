module regset(
  input wire i_clk,
  input wire i_reset,

  input wire[7:0] i_d,
  input wire i_write0,
  input wire i_write1,

  input wire i_busSel,
  input wire i_busEn,
  output wire[7:0] o_bus,

  input wire i_aluSel,
  output wire[7:0] o_alu
);

logic[7:0] r_0;
logic[7:0] r_1;

assign o_alu = i_aluSel ? r_1 : r_0;

transmitter inst_tx(
  .a(i_busSel ? r_1 : r_0),
  .b(o_bus),
  .ce(i_busEn)
);

always @(posedge i_clk) begin
  if (i_write0) begin
    r_0 <= i_d;
  end
  if (i_write1) begin
    r_1 <= i_d;
  end
  if (i_reset) begin
    r_0 <= 0;
    r_1 <= 0;
  end
end

endmodule