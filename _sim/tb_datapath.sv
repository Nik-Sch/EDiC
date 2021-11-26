`timescale 1ns/1ps
module tb_datapath;

logic oszClk = 0;
logic asyncRamSpecialClock = 0;
always #(200/2) oszClk = ~oszClk; // 5MHz
always #(10/2) asyncRamSpecialClock = ~asyncRamSpecialClock; // 100MHz

  // 1 is closed, 0 is open
logic btnStep = 0;
logic swInstrNCycle = 1;
logic swStepNRun = 0;
logic swEnableBreakpoint = 0;
logic btnReset = 0;

logic[7:0] cathodes;
logic[7:0] anodes;
logic[7:0] switches = 42;

logic [7:0] i_bus;
logic [7:0]  o_bus;
logic  i_busNOE;
logic  o_ioSelect;
logic [7:0]  o_ioAddress;
logic o_ioNOE;
logic o_ioNWE;

// ignore register values and always output 0
assign i_bus = 0;
assign i_busNOE = ~(o_ioAddress != 8'h00 && ~o_ioNOE && o_ioSelect);

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


  .i_bus(i_bus),
  .o_bus(o_bus),
  .i_busNOE(i_busNOE),

  .o_ioSelect(o_ioSelect),
  .o_ioAddress(o_ioAddress),
  .o_ioNOE(o_ioNOE),
  .o_ioNWE(o_ioNWE),

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