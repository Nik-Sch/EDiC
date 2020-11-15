module tb_datapath;

logic clk = 0;
always #(10/2) clk = ~clk;
logic reset = 1;
initial begin
  reset = 1;
  repeat(10) begin
    @(negedge clk);
  end
  reset = 0;
end


datapath inst_datapath(
  .i_clk(clk),
  .i_reset(reset)
);

// initial begin
//   repeat(15) begin
//     @(negedge clk);
//   end

//   // load r0, 0x2a
//   i_busOverride = 8'h2a;
//   i_ctrlRegWr0 = 1;
//   i_ctrlRegWr1 = 0;
//   @(negedge clk); // write 0x42 into r0
//   i_ctrlRegWr0 = 0;

//   // shr r1, r0, 1
//   i_busOverride = 8'h01;
//   i_ctrlAluBWr = 1;
//   @(negedge clk); // write 0x01 in aluB
//   i_busOverride = 8'bzzzz_zzzz;
//   i_ctrlAluBWr = 0;
//   i_ctrlAluOp = 2'b11;
//   i_ctrlAluShiftLeft = 0;
//   @(negedge clk); // execute
//   i_ctrlAluOE = 1;
//   i_ctrlRegWr1 = 1;
//   @(negedge clk); // write back
//   i_ctrlAluOE = 0;
//   i_ctrlRegWr1 = 0;
  
//   // [r0] = r1
//   i_ctrlRegBusSel = 0;
//   i_ctrlRegBusEn = 1;
//   i_ctrlRamAddressEn = 1;
//   @(negedge clk); // ram address
//   i_ctrlRamAddressEn = 0;
//   i_ctrlRegBusSel = 1;
//   i_ctrlRamWriteEn = 1;
//   @(negedge clk); // write ram
//   i_ctrlRamWriteEn = 0;
//   i_ctrlRegBusEn = 0;

//   // r0 = [r0]
//   i_ctrlRegBusSel = 0;
//   i_ctrlRegBusEn = 1;
//   i_ctrlRamAddressEn = 1;
//   @(negedge clk); // ram address
//   i_ctrlRegBusEn = 0;
//   i_ctrlRamAddressEn = 0;
//   i_ctrlRamReadDataSelect = 1;
//   i_ctrlRamOE = 1;
//   i_ctrlRegWr0 = 1;
//   @(negedge clk); // write into reg
//   i_ctrlRamOE = 0;
//   i_ctrlRegWr0 = 0;

// end

endmodule