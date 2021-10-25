module io(
  input wire i_clk,

  input wire [7:0] i_bus,
  output wire [7:0] o_bus,

  input wire i_ioSelect,
  input wire [7:0] i_ioAddress,
  input wire i_ioNOE,
  input wire i_ioNWE
);

wire[7:0] s_input = 15;
reg[7:0] r_output = 0;

transmitter inst_tx(
  .a(s_input),
  .b(o_bus),
  .noe(~(i_ioAddress == 8'h00 && i_ioSelect) || i_ioNOE)
);

always @(posedge i_clk) begin
  if ((i_ioAddress == 8'h00 && i_ioSelect) && ~i_ioNWE) begin
    r_output <= i_bus;
  end

end

endmodule