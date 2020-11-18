module ram(
  input wire i_clk,
  input wire i_reset,

  input wire[7:0] i_address,
  input wire i_addressEn,

  input wire[7:0] i_writeData,
  input wire i_writeEn,

  input wire i_readDataSelect, // 1 for data, 0 for program
  output wire[7:0] o_readData,
  input wire i_outEnable
);
wire[7:0] s_readData;
logic[7:0] r_address;

always @(posedge i_clk) begin
  if (i_addressEn) begin
    r_address <= i_address;
  end
  if (i_reset) begin
    r_address <= 'hff;
  end
end


// the AS6C1008-55PCN is true singleport with an integrated outEnable
transmitter inst_tx(
  .a(s_readData),
  .b(o_readData),
  .ce(i_outEnable)
);

dist_mem_gen_0 your_instance_name (
  .clk(i_clk),
  .a({i_readDataSelect, r_address}),
  .d(i_writeData),
  .we(i_writeEn),
  .spo(s_readData)
);

endmodule