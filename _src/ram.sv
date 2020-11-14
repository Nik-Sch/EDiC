module ram(
  input wire i_clk,

  input wire[7:0] i_writeAddress,
  input wire[7:0] i_writeData,
  input wire i_writeEn,

  input wire[7:0] i_readAddress,
  output wire[7:0] o_readData,
  input wire i_outEnable
);
wire[7:0] s_readData;

transceiver inst_tx(
  .a(s_readData),
  .b(o_readData),
  .ce(i_outEnable)
);


dist_mem_gen_0 inst_ram (
  .clk(i_clk),
  .a(i_writeAddress),
  .d(i_writeData),
  .we(i_writeEn),
  .dpra(i_readAddress),
  .dpo(s_readData)
);

endmodule