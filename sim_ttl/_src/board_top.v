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
wire s_expansionIoNCE;
wire [7:0] s_expansionIoAddress;
wire s_expansionIoNOE;
wire s_expansionIoNWE;

wire clkRamN;
wire clkEEPROM;
wire asyncRamSpecialClock;
wire asyncEEPROMSpecialClock;

reg [15:0] r_breakpoint;
reg r_breakpointSet;


wire s_oszClk;
wire s_resetn;
assign s_resetn = i_btnReset;
assign asyncRamSpecialClock = ~clkRamN;
assign asyncEEPROMSpecialClock = clkEEPROM;
clk_wiz_5Mhz inst_clk5Mhz(
  .clk_in1(i_clk100),
  .clk5(s_oszClk),
  .clkRamN(clkRamN),
  .clkEEPROM(clkEEPROM)
);

always @(negedge s_oszClk, negedge s_resetn) begin
  r_breakpointSet <= 1;
  if (~r_breakpointSet) begin
    r_breakpoint <= {8'h00, i_switches};
  end

  if (~s_resetn) begin
    r_breakpointSet <= 0;
    r_breakpoint <= 0;
  end
end

generated inst_generated(
  .i_oszClk(s_oszClk),
  .i_asyncRamSpecialClock(asyncRamSpecialClock),
  .i_asyncEEPROMSpecialClock(asyncEEPROMSpecialClock),
  .i_resetn(s_resetn),

  // button controls
  // 1 is closed, 0 is open
  .i_btnStep(i_btnStep),
  .i_swInstrNCycle(i_swInstrNCycle),
  .i_swStepNRun(i_swStepNRun),
  .i_swEnableBreakpoint(i_swEnableBreakpoint),
  .i_btnReset(~i_btnReset), // btn should be 1 if pressed -> active high
  .i_breakpointAddress(r_breakpoint),

  // expansion card
  .i_bus(s_expansionBusOut),
  .o_bus(s_expansionBusIn),
  .i_busNOE(s_expansionBusNOE),

  .o_ioNCE(s_expansionIoNCE),
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

  .i_ioNCE(s_expansionIoNCE),
  .i_ioAddress(s_expansionIoAddress),
  .i_ioNOE(s_expansionIoNOE),
  .i_ioNWE(s_expansionIoNWE),

  .i_serialIn(i_serialIn),
  .o_serialOut(o_serialOut)
);

endmodule