module datapath(
  input wire i_oszClk,
  input wire i_asyncRamSpecialClock,
  // 1 is closed, 0 is open
  input wire i_btnStep,
  input wire i_swInstrNCycle,
  input wire i_swStepNRun,
  input wire i_swEnableBreakpoint,
  input wire i_btnReset,

  output wire [7:0] o_cathodes, // dot + gfedcba
  output wire [7:0] o_anodes,
  input wire [7:0] i_switches,

  input wire [15:0] i_breakpointAddress
);

wire flagZero;
wire flagNegative;
wire flagCarry;
wire flagOverflow;

wire [7:0] s_instrCode;
wire [7:0] s_bus;
wire [7:0] s_busAlu;
wire [7:0] s_busRegset;
wire [7:0] s_busMemory;
wire [7:0] s_busIO;
wire s_busNOEAlu;
wire s_busNOERegset;
wire s_busNOEMemory;
wire s_busNOEIO;
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

wire [15:0] dbgPc;
wire [2:0] dbgStep;

dbgIla inst_ila (
  .clk(i_asyncRamSpecialClock),

  .probe0(s_busAlu),
  .probe1(s_busNOEAlu),
  .probe2(s_busRegset),
  .probe3(s_busNOERegset),
  .probe4(s_busMemory),
  .probe5(s_busNOEMemory),
  .probe6(s_busIO),
  .probe7(s_busNOEIO),
  .probe8(s_bus),
  .probe9(i_switches),
  .probe10(ioSelect),
  .probe11(ioNOE),
  .probe12(ioNWE),
  .probe13(ioAddress),
  .probe14(dbgPc),
  .probe15(dbgStep),
  .probe16(resetn)
);

tristatenet #(
  .INPUT_COUNT(4)
) inst_triBus (
  .i_data({s_busAlu, s_busRegset, s_busMemory, s_busIO}),
  .i_noe({s_busNOEAlu, s_busNOERegset, s_busNOEMemory, s_busNOEIO}),
  .o_data(s_bus)
);

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

  .o_ctrlInstrFinishedN(ctrlInstrFinishedN),

  .o_dbgStep(dbgStep)
);

alu inst_alu(
  .i_clk(clk),
  .i_reset(~resetn),

  .i_a(s_alu),
  .i_bus(s_bus),
  .o_bus(s_busAlu),
  .o_busNOE(s_busNOEAlu),
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
  .o_bus(s_busRegset),
  .o_busNOE(s_busNOERegset),

  .o_alu(s_alu),

  .i_ctrlReg0NWE(ctrlReg0NWE),
  .i_ctrlReg1NWE(ctrlReg1NWE),
  .i_ctrlAluSel(ctrlRegAluSel),
  .i_ctrlReg0BusNOE(ctrlReg0BusNOE),
  .i_ctrlReg1BusNOE(ctrlReg1BusNOE)
);

memory_bd inst_memory (
  .i_clk(clk),
  .i_asyncRamSpecialClock(i_asyncRamSpecialClock),
  .i_reset(~resetn),

  .i_bus(s_bus),
  .o_bus(s_busMemory),
  .o_busNOE(s_busNOEMemory),
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
  .i_ctrlSpNEn(ctrlMemSPNEn),
  .i_ctrlSpUp(ctrlMemSPUp),

  .i_breakpointAddress(i_breakpointAddress),
  .o_breakpointHitN(breakpointHitN),
  .i_breakpointEnableN(breakpointEnableN),

  .o_ioSelect(ioSelect),
  .o_ioAddress(ioAddress),
  .o_ioNOE(ioNOE),
  .o_ioNWE(ioNWE),

  .o_dbgPc(dbgPc)
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
  .i_resetn(resetn),
  .i_bus(s_bus),
  .o_bus(s_busIO),
  .o_busNOE(s_busNOEIO),
  .i_ioSelect(ioSelect),
  .i_ioAddress(ioAddress),
  .i_ioNOE(ioNOE),
  .i_ioNWE(ioNWE),
  .o_cathodes(o_cathodes),
  .o_anodes(o_anodes),
  .i_switches(i_switches)
);

endmodule