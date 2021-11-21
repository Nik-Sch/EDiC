`timescale 1ns/1ps
module tb_datapath;

logic oszClk = 0;
logic asyncRamSpecialClock = 0;
always #(200/2) oszClk = ~oszClk; // 5MHz
always #(10/2) asyncRamSpecialClock = ~asyncRamSpecialClock; // 100MHz

  // 1 is closed, 0 is open
logic btnStep = 0;
logic swInstrNCycle = 1;
logic swStepNRun = 1;
logic swEnableBreakpoint = 0;
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
  .i_breakpointAddress(16'h0028),

  .o_cathodes(cathodes),
  .o_anodes(anodes),
  .i_switches(switches)
);

initial begin
  while (1) begin
    repeat (300) @(posedge oszClk);
    switches = switches + 1;
  end
end
initial begin
  while (1) begin
    repeat(15) @(posedge oszClk);
    btnStep = ~btnStep;
  end
end

endmodule