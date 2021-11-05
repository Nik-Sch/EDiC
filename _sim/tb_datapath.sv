`timescale 1ns/1ps
module tb_datapath;

logic oszClk = 0;
logic asyncRamSpecialClock = 0;
always #(10/2) oszClk = ~oszClk;
always #(10/4) asyncRamSpecialClock = ~asyncRamSpecialClock;

logic btnStep = 0;
logic swInstrNCycle = 0;
logic swStepNRun = 0;
logic swEnableBreakpoint = 1;
logic btnReset = 0;

logic[7:0] cathodes;
logic[7:0] anodes;
logic[7:0] switches = 42;

datapath inst_datapath(
  .i_oszClk(oszClk),
  .i_asyncRamSpecialClock(asyncRamSpecialClock),

  // 1 is closed, 0 is open
  .i_btnStep(btnStep),
  .i_swInstrNCycle(swInstrNCycle),
  .i_swStepNRun(swStepNRun),
  .i_swEnableBreakpoint(swEnableBreakpoint),
  .i_btnReset(btnReset),
  .i_breakpointAddress(16'hff),

  .o_cathodes(cathodes),
  .o_anodes(anodes),
  .i_switches(switches)
);

endmodule