module board_top(
  input wire i_clk100,

  input wire i_btnStep,
  input wire i_swInstrNCycle,
  input wire i_swStepNRun,
  input wire i_swEnableBreakpoint,
  input wire i_btnReset, // active low

  output wire [7:0] o_cathodes, // dot + gfedcba
  output wire [7:0] o_anodes,
  input wire [7:0] i_switches
);

wire s_oszClk;
clk_wiz_5Mhz inst_clk5Mhz(
  .clk_in1(i_clk100),
  .clk5(s_oszClk)
);

datapath inst_datapath(
  .i_oszClk(s_oszClk),
  .i_asyncRamSpecialClock(i_clk100),

  // 1 is closed, 0 is open
  .i_btnStep(i_btnStep),
  .i_swInstrNCycle(i_swInstrNCycle),
  .i_swStepNRun(i_swStepNRun),
  .i_swEnableBreakpoint(i_swEnableBreakpoint),
  .i_btnReset(~i_btnReset), // btn should be 1 if pressed -> active high
  .i_breakpointAddress(16'h0028),

  .o_cathodes(o_cathodes),
  .o_anodes(o_anodes),
  .i_switches(i_switches)
);

endmodule