module regset(
  input wire i_clk,
  input wire i_reset,

  input wire [7:0] i_bus,
  output wire [7:0] o_bus,
  output wire o_busNOE,

  output wire[7:0] o_alu,

  input wire i_ctrlReg0NWE,
  input wire i_ctrlReg1NWE,
  input wire i_ctrlAluSel,
  input wire i_ctrlReg0BusNOE,
  input wire i_ctrlReg1BusNOE,

  output wire [7:0] o_dbgR0,
  output wire [7:0] o_dbgR1
);

reg [7:0] r_0 = 0;
reg [7:0] r_1 = 0;

assign o_alu = i_ctrlAluSel ? r_1 : r_0;

assign o_dbgR0 = r_0;
assign o_dbgR1 = r_1;

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({r_0, r_1}),
  .i_noe({i_ctrlReg0BusNOE, i_ctrlReg1BusNOE}),
  .o_data(o_bus),
  .o_noe(o_busNOE)
);

always @(posedge i_clk, posedge i_reset) begin
  if (~i_ctrlReg0NWE) begin
    r_0 <= i_bus;
  end
  if (~i_ctrlReg1NWE) begin
    r_1 <= i_bus;
  end
  if (i_reset) begin
    r_0 <= 0;
    r_1 <= 0;
  end
end

endmodule