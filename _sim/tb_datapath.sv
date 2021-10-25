module tb_datapath;

logic oszClk = 0;
always #(10/2) oszClk = ~oszClk;

logic btnStep = 0;
logic swInstrNCycle = 0;
logic swStepNRun = 0;
logic swEnableBreakpoint = 1;
logic btnReset = 0;

datapath inst_datapath(
  .i_oszClk(oszClk),

  // 1 is closed, 0 is open
  .i_btnStep(btnStep),
  .i_swInstrNCycle(swInstrNCycle),
  .i_swStepNRun(swStepNRun),
  .i_swEnableBreakpoint(swEnableBreakpoint),
  .i_btnReset(btnReset)
);

endmodule