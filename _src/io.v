module io(
  input wire i_clk,
  input wire i_resetn,

  input wire [7:0] i_bus,
  output wire [7:0] o_bus,
  output wire o_busNOE,

  input wire i_ioSelect,
  input wire [7:0] i_ioAddress,
  input wire i_ioNOE,
  input wire i_ioNWE,

  output wire [7:0] o_output,
  input wire [7:0] i_switches
);

assign o_output = r_output;

reg [7:0] r_output = 0;

assign o_bus = i_switches;
assign o_busNOE = ~(i_ioAddress == 8'h00 && i_ioSelect) || i_ioNOE;

always @(posedge i_clk, negedge i_resetn) begin
  if ((i_ioAddress == 8'h00 && i_ioSelect) && ~i_ioNWE) begin
    r_output <= i_bus;
  end
  if (~i_resetn) begin
    r_output <= 0;
  end
end

endmodule