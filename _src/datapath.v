module datapath(
  input wire i_oszClk,
  // 1 is closed, 0 is open
  input wire i_btnStep,
  input wire i_swInstrNCycle,
  input wire i_swStepNRun,
  input wire i_swEnableBreakpoint,
  input wire i_btnReset,

  input wire [15:0] i_breakpointAddress
);
  wire flagZero;
  wire flagNegative;
  wire flagCarry;
  wire flagOverflow;

  wire [7:0] s_instrCode;
  wire [7:0] s_bus;
  wire [7:0] s_alu;

  wire [1:0] ctrlAluOp;
  wire ctrlAluSub;
  wire ctrlAluYNWE;
  wire ctrlAluNOE;
  wire ctrlReg0NWE;
  wire ctrlReg1NWE;
  wire ctrlRegAluSel;
  wire ctrlReg0BusNOE;
  wire ctrlReg1BusNOE;
  wire ctrlMemPCLoadN;
  wire ctrlMemSPUp;
  wire ctrlMemSPNEn;
  wire ctrlMemInstrNWE;
  wire ctrlMemInstrNOE;
  wire ctrlMemMar0NWE;
  wire ctrlMemMar1NWE;
  wire ctrlMemInstrImmToRamAddr;
  wire ctrlMemRamNWE;
  wire ctrlMemRamNOE;
  wire ctrlMemPCNEn;
  wire ctrlMemPCFromImm;
  wire ctrlMemPCToRamN;
  wire ctrlInstrFinishedN;

  wire clk;
  wire clkn;
  wire resetn;
  wire breakpointHitN;
  wire breakpointEnableN;
  wire halt;

  wire ioSelect;
  wire [7:0] ioAddress;
  wire ioNOE;
  wire ioNWE;

control_bd control_bd_i (
  .i_nclk(clkn),
  .i_reset(~resetn),

  .i_halt(halt),

  .i_flagZero(flagZero),
  .i_flagNegative(flagNegative),
  .i_flagCarry(flagCarry),
  .i_flagOverflow(flagOverflow),

  .i_instrCode(s_instrCode),

  .o_ctrlAluOp(ctrlAluOp),
  .o_ctrlAluSub(ctrlAluSub),
  .o_ctrlAluYNWE(ctrlAluYNWE),
  .o_ctrlAluNOE(ctrlAluNOE),

  .o_ctrlReg0NWE(ctrlReg0NWE),
  .o_ctrlReg1NWE(ctrlReg1NWE),
  .o_ctrlRegAluSel(ctrlRegAluSel),
  .o_ctrlReg0BusNOE(ctrlReg0BusNOE),
  .o_ctrlReg1BusNOE(ctrlReg1BusNOE),

  .o_ctrlMemPCLoadN(ctrlMemPCLoadN),
  .o_ctrlMemSPUp(ctrlMemSPUp),
  .o_ctrlMemSPNEn(ctrlMemSPNEn),
  .o_ctrlMemInstrNWE(ctrlMemInstrNWE),
  .o_ctrlMemInstrNOE(ctrlMemInstrNOE),
  .o_ctrlMemMar0NWE(ctrlMemMar0NWE),
  .o_ctrlMemMar1NWE(ctrlMemMar1NWE),
  .o_ctrlMemInstrImmToRamAddr(ctrlMemInstrImmToRamAddr),
  .o_ctrlMemRamNWE(ctrlMemRamNWE),
  .o_ctrlMemRamNOE(ctrlMemRamNOE),
  .o_ctrlMemPCNEn(ctrlMemPCNEn),
  .o_ctrlMemPCFromImm(ctrlMemPCFromImm),
  .o_ctrlMemPCToRamN(ctrlMemPCToRamN),

  .o_ctrlInstrFinishedN(ctrlInstrFinishedN)
);

alu inst_alu(
  .i_clk(clk),
  .i_reset(~resetn),

  .i_a(s_alu),
  .i_bus(s_bus),
  .o_bus(s_bus),
  .i_ctrlAluYNWE(ctrlAluYNWE),
  .i_ctrlAluNOE(ctrlAluNOE),
  .i_ctrlAluSub(ctrlAluSub),
  .i_ctrlAluOp(ctrlAluOp),

  .o_flagNegative(flagNegative),
  .o_flagZero(flagZero),
  .o_flagOverflow(flagOverflow),
  .o_flagCarry(flagCarry)
);

regset inst_regset(
  .i_clk(clk),
  .i_reset(~resetn),

  .i_bus(s_bus),
  .o_bus(s_bus),

  .o_alu(s_alu),

  .i_ctrlReg0NWE(ctrlReg0NWE),
  .i_ctrlReg1NWE(ctrlReg1NWE),
  .i_ctrlAluSel(ctrlRegAluSel),
  .i_ctrlReg0BusNOE(ctrlReg0BusNOE),
  .i_ctrlReg1BusNOE(ctrlReg1BusNOE)
);

memory_bd inst_memory (
  .i_clk(clk),
  .i_reset(~resetn),

  .i_bus(s_bus),
  .o_bus(s_bus),
  .o_instrCode(s_instrCode),

  .i_ctrlInstrNOE(ctrlMemInstrNOE),
  .i_ctrlInstrNWE(ctrlMemInstrNWE),
  .i_ctrlMemInstrImmToRamAddr(ctrlMemInstrImmToRamAddr),
  .i_ctrlMemMar0NWE(ctrlMemMar0NWE),
  .i_ctrlMemMar1NWE(ctrlMemMar1NWE),
  .i_ctrlPCLoadN(ctrlMemPCLoadN),
  .i_ctrlPCNEn(ctrlMemPCNEn),
  .i_ctrlPCFromImm(ctrlMemPCFromImm),
  .i_ctrlMemPCToRamN(ctrlMemPCToRamN),
  .i_ctrlRamNOE(ctrlMemRamNOE),
  .i_ctrlRamNWE(ctrlMemRamNWE),
  .i_ctrlSpNEn(ctrlMemSpNEn),
  .i_ctrlSpUp(ctrlMemSpUp),

  .i_breakpointAddress(i_breakpointAddress),
  .o_breakpointHitN(breakpointHitN),
  .i_breakpointEnableN(breakpointEnableN),

  .o_ioSelect(ioSelect),
  .o_ioAddress(ioAddress),
  .o_ioNOE(ioNOE),
  .o_ioNWE(ioNWE)
);

clock inst_clock (
  .i_oszClk(i_oszClk),

  .o_clk(clk),
  .o_clkn(clkn),
  .o_resetn(resetn),

  .i_btnStep(i_btnStep),
  .i_swInstrNCycle(i_swInstrNCycle),
  .i_swStepNRun(i_swStepNRun),
  .i_swEnableBreakpoint(i_swEnableBreakpoint),
  .i_btnReset(i_btnReset),

  .i_ctrlInstrFinishedN(ctrlInstrFinishedN),
  .i_breakpointHitN(breakpointHitN),
  .o_breakpointEnableN(breakpointEnableN),
  .o_halt(halt)
);

io inst_io (
  .i_clk(clk),
  .i_bus(s_bus),
  .o_bus(s_bus),
  .i_ioSelect(ioSelect),
  .i_ioAddress(ioAddress),
  .i_ioNOE(ioNOE),
  .i_ioNWE(ioNWE)
);

endmodule