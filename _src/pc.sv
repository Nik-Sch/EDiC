module pc(
  input wire i_clk,
  input wire i_reset,

  input wire[7:0] i_data,
  input wire i_loadData,

  input wire i_incr,
  input wire i_noe,
  output wire[7:0] o_addr
);

logic[7:0] r_addr;


transmitter inst_tx(
  .a(r_addr),
  .b(o_addr),
  .noe(i_noe)
);

always @(posedge i_clk) begin
  if (i_incr || i_loadData) begin
    r_addr = i_incr ? r_addr + 1 : i_data;
  end
  if (i_reset) begin
    r_addr = 0;
  end
end

endmodule