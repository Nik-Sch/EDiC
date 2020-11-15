module tb_datapath;

logic clk = 0;
always #(10/2) clk = ~clk;
logic reset = 1;
initial begin
  reset = 1;
  repeat(10) begin
    @(posedge clk);
  end
  reset = 0;
end

logic o_aluFlagN;
logic o_aluFlagZ;
logic i_ctrlAluOE = 0;
logic i_ctrlAluSub = 0;
logic[1:0] i_ctrlAluOp = 0;
logic i_ctrlAluBWr = 0;
logic i_ctrlAluShiftLeft = 0;
logic i_ctrlRegWr0 = 0;
logic i_ctrlRegWr1 = 0;
logic i_ctrlRegBusSel = 0;
logic i_ctrlRegBusEn = 0;
logic i_ctrlAluSel = 0;
logic[7:0] i_busOverride = 8'bzzzz_zzzz;
logic i_ctrlRamAddressEn = 0;
logic i_ctrlRamWriteEn = 0;
logic i_ctrlRamReadDataSelect = 0;
logic i_ctrlRamOE = 0;
logic i_ctrlLoadPC = 0;
logic i_ctrlIncrPC = 0;
logic i_ctrlPCOe = 0;

datapath inst_datapath(
  .i_clk(clk),
  .i_reset(reset),
  .o_aluFlagN(o_aluFlagN),
  .o_aluFlagZ(o_aluFlagZ),
  .i_ctrlAluOE(i_ctrlAluOE),
  .i_ctrlAluSub(i_ctrlAluSub),
  .i_ctrlAluOp(i_ctrlAluOp),
  .i_ctrlAluBWr(i_ctrlAluBWr),
  .i_ctrlAluShiftLeft(i_ctrlAluShiftLeft),
  .i_ctrlRegWr0(i_ctrlRegWr0),
  .i_ctrlRegWr1(i_ctrlRegWr1),
  .i_ctrlRegBusSel(i_ctrlRegBusSel),
  .i_ctrlRegBusEn(i_ctrlRegBusEn),
  .i_ctrlAluSel(i_ctrlAluSel),
  .i_ctrlRamAddressEn(i_ctrlRamAddressEn),
  .i_ctrlRamWriteEn(i_ctrlRamWriteEn),
  .i_ctrlRamReadDataSelect(i_ctrlRamReadDataSelect),
  .i_ctrlRamOE(i_ctrlRamOE),
  .i_ctrlLoadPC(i_ctrlLoadPC),
  .i_ctrlIncrPC(i_ctrlIncrPC),
  .i_ctrlPCOe(i_ctrlPCOe),

  .i_busOverride(i_busOverride)
);

initial begin
  repeat(15) begin
    @(negedge clk);
  end

  // load r0, 0x2a
  i_busOverride = 8'h2a;
  i_ctrlRegWr0 = 1;
  i_ctrlRegWr1 = 0;
  @(negedge clk); // write 0x42 into r0
  i_ctrlRegWr0 = 0;

  // shr r1, r0, 1
  i_busOverride = 8'h01;
  i_ctrlAluBWr = 1;
  @(negedge clk); // write 0x01 in aluB
  i_busOverride = 8'bzzzz_zzzz;
  i_ctrlAluBWr = 0;
  i_ctrlAluOp = 2'b11;
  i_ctrlAluShiftLeft = 0;
  @(negedge clk); // execute
  i_ctrlAluOE = 1;
  i_ctrlRegWr1 = 1;
  @(negedge clk); // write back
  i_ctrlAluOE = 0;
  i_ctrlRegWr1 = 0;
  
  // [r0] = r1
  i_ctrlRegBusSel = 0;
  i_ctrlRegBusEn = 1;
  i_ctrlRamAddressEn = 1;
  @(negedge clk); // ram address
  i_ctrlRamAddressEn = 0;
  i_ctrlRegBusSel = 1;
  i_ctrlRamWriteEn = 1;
  @(negedge clk); // write ram
  i_ctrlRamWriteEn = 0;
  i_ctrlRegBusEn = 0;

  // r0 = [r0]
  i_ctrlRegBusSel = 0;
  i_ctrlRegBusEn = 1;
  i_ctrlRamAddressEn = 1;
  @(negedge clk); // ram address
  i_ctrlRegBusEn = 0;
  i_ctrlRamAddressEn = 0;
  i_ctrlRamReadDataSelect = 1;
  i_ctrlRamOE = 1;
  i_ctrlRegWr0 = 1;
  @(negedge clk); // write into reg
  i_ctrlRamOE = 0;
  i_ctrlRegWr0 = 0;

end

endmodule