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
logic i_ctrlAluShiftLeft = 0;
logic i_ctrlRegWr0 = 0;
logic i_ctrlRegWr1 = 0;
logic i_ctrlRegBusSel = 0;
logic i_ctrlRegBusEn = 0;
logic i_ctrlAluSel = 0;
logic[7:0] i_busOverride = 8'bzzzz_zzzz;

datapath inst_datapath(
  .i_clk(clk),
  .i_reset(reset),
  .o_aluFlagN(o_aluFlagN),
  .o_aluFlagZ(o_aluFlagZ),
  .i_ctrlAluOE(i_ctrlAluOE),
  .i_ctrlAluSub(i_ctrlAluSub),
  .i_ctrlAluOp(i_ctrlAluOp),
  .i_ctrlAluShiftLeft(i_ctrlAluShiftLeft),
  .i_ctrlRegWr0(i_ctrlRegWr0),
  .i_ctrlRegWr1(i_ctrlRegWr1),
  .i_ctrlRegBusSel(i_ctrlRegBusSel),
  .i_ctrlRegBusEn(i_ctrlRegBusEn),
  .i_ctrlAluSel(i_ctrlAluSel),
  .i_busOverride(i_busOverride)
);

initial begin
  repeat(15) begin
    @(negedge clk);
  end

  i_busOverride = 8'h2a;
  i_ctrlRegWr0 = 1;
  i_ctrlRegWr1 = 0;
  @(negedge clk);
  i_busOverride = 8'h15;
  i_ctrlRegWr0 = 0;
  i_ctrlRegWr1 = 1;
  @(negedge clk);
  i_ctrlRegWr0 = 0;
  i_ctrlRegWr1 = 0;
  i_busOverride = 8'bzzzz_zzzz;

end

endmodule