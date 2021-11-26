module board_top(
  input wire i_clk100,

  input wire i_btnStep,
  input wire i_swInstrNCycle,
  input wire i_swStepNRun,
  input wire i_swEnableBreakpoint,
  input wire i_btnReset, // active low

  output wire [7:0] o_cathodes, // dot + gfedcba
  output wire [7:0] o_anodes,
  input wire [7:0] i_switches,
  output wire [7:0] o_r0,
  output wire [7:0] o_r1,

  input wire i_serialIn,
  output wire o_serialOut
);

wire [7:0] s_expansionBusIn;
wire [7:0] s_expansionBusOut;
wire s_expansionBusNOE;
wire s_expansionIoSelect;
wire [7:0] s_expansionIoAddress;
wire s_expansionIoNOE;
wire s_expansionIoNWE;

wire s_oszClk;
wire s_resetn;
clk_wiz_5Mhz inst_clk5Mhz(
  .clk_in1(i_clk100),
  .clk5(s_oszClk)
);

datapath inst_datapath(
  .i_oszClk(s_oszClk),
  .i_asyncRamSpecialClock(i_clk100),
  .o_resetn(s_resetn),

  // button controls
  // 1 is closed, 0 is open
  .i_btnStep(i_btnStep),
  .i_swInstrNCycle(i_swInstrNCycle),
  .i_swStepNRun(i_swStepNRun),
  .i_swEnableBreakpoint(i_swEnableBreakpoint),
  .i_btnReset(~i_btnReset), // btn should be 1 if pressed -> active high
  .i_breakpointAddress(16'h0028),

  // expansion card
  .i_bus(s_expansionBusOut),
  .o_bus(s_expansionBusIn),
  .i_busNOE(s_expansionBusNOE),

  .o_ioSelect(s_expansionIoSelect),
  .o_ioAddress(s_expansionIoAddress),
  .o_ioNOE(s_expansionIoNOE),
  .o_ioNWE(s_expansionIoNWE),

  // fpga specific ports
  .o_cathodes(o_cathodes),
  .o_anodes(o_anodes),
  .i_switches(i_switches),
  .o_r0(o_r0),
  .o_r1(o_r1)
);

expansion_uart uart(
  .i_clk100(i_clk100),
  .i_clkDesign(~s_oszClk), // is inverted in the clock module
  .i_resetn(s_resetn),

  .i_bus(s_expansionBusIn),
  .o_bus(s_expansionBusOut),
  .o_busNOE(s_expansionBusNOE),

  .i_ioSelect(s_expansionIoSelect),
  .i_ioAddress(s_expansionIoAddress),
  .i_ioNOE(s_expansionIoNOE),
  .i_ioNWE(s_expansionIoNWE),

  .i_serialIn(i_serialIn),
  .o_serialOut(o_serialOut)
);

endmodule