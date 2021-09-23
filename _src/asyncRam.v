module asyncRam(
  input wire[7:0] i_address,
  input wire i_writeNEn,
  input wire[7:0] i_writeData,
  output wire[7:0] o_readData,
  input wire i_noe
);
reg [7:0] s_ram [255:0];
reg [7:0] s_readDataRam;

always @* begin
  if (!i_writeNEn) begin
    s_ram[i_address] <= i_writeData;
  end
  s_readDataRam <= s_ram[i_address];
end

transmitter inst_txRam(
  .a(s_readDataRam),
  .b(o_readData),
  .noe(i_noe)
);

endmodule