module datapath(
  input wire i_clk,
  input wire i_reset
);
  wire flagNZero;
  wire flagNegative;

  wire [7:0] s_instrCode;
  wire [7:0] s_bus;
  wire [7:0] s_alu;

  wire ctrlAluNOE;
  wire [1:0] ctrlAluOp;
  wire ctrlAluSub;
  wire ctrlAluYNWE;
  wire ctrlHlt;
  wire ctrlMemInstrImmToRam;
  wire ctrlMemInstrNOE;
  wire ctrlMemInstrNWE;
  wire ctrlMemMar0NWE;
  wire ctrlMemMar1NWE;
  wire ctrlMemPCIncrN;
  wire ctrlMemPCLoadN;
  wire ctrlMemRamNOE;
  wire ctrlMemRamNWE;
  wire ctrlMemSPNEn;
  wire ctrlMemSPUp;
  wire ctrlReg0NWE;
  wire ctrlReg1NWE;
  wire ctrlRegAluSel;
  wire ctrlRegBusNOE;
  wire ctrlRegBusSel;

control_bd control_bd_i (
  .i_clk(i_clk),
  .i_nclk(~i_clk),
  .i_reset(i_reset),

  .i_flagNZero(flagNZero),
  .i_flagNegative(flagNegative),
  .i_instrCode(s_instrCode),
  .o_ctrlAluNOE(ctrlAluNOE),
  .o_ctrlAluOp(ctrlAluOp),
  .o_ctrlAluSub(ctrlAluSub),
  .o_ctrlAluYNWE(ctrlAluYNWE),
  .o_ctrlHlt(ctrlHlt),
  .o_ctrlMemInstrImmToRam(ctrlMemInstrImmToRam),
  .o_ctrlMemInstrNOE(ctrlMemInstrNOE),
  .o_ctrlMemInstrNWE(ctrlMemInstrNWE),
  .o_ctrlMemMar0NWE(ctrlMemMar0NWE),
  .o_ctrlMemMar1NWE(ctrlMemMar1NWE),
  .o_ctrlMemPCIncrN(ctrlMemPCIncrN),
  .o_ctrlMemPCLoadN(ctrlMemPCLoadN),
  .o_ctrlMemRamNOE(ctrlMemRamNOE),
  .o_ctrlMemRamNWE(ctrlMemRamNWE),
  .o_ctrlMemSPNEn(ctrlMemSPNEn),
  .o_ctrlMemSPUp(ctrlMemSPUp),
  .o_ctrlReg0NWE(ctrlReg0NWE),
  .o_ctrlReg1NWE(ctrlReg1NWE),
  .o_ctrlRegAluSel(ctrlRegAluSel),
  .o_ctrlRegBusNOE(ctrlRegBusNOE),
  .o_ctrlRegBusSel(ctrlRegBusSel)
);

alu inst_alu(
  .i_clk(i_clk),
  .i_reset(i_reset),

  .i_a(s_alu),
  .i_bus(s_bus),
  .o_bus(s_bus),
  .i_ctrlAluYNWE(ctrlAluYNWE),
  .i_ctrlAluNOE(ctrlAluNOE),
  .i_ctrlAluSub(ctrlAluSub),
  .i_ctrlAluOp(ctrlAluOp),

  .o_flagNegative(flagNegative),
  .o_flagNZero(flagNZero)
);

regset inst_regset(
  .i_clk(i_clk),
  .i_reset(i_reset),

  .i_bus(s_bus),
  .o_bus(s_bus),

  .o_alu(s_alu),

  .i_ctrlReg0NWE(ctrlReg0NWE),
  .i_ctrlReg1NWE(ctrlReg1NWE),
  .i_ctrlAluSel(ctrlRegAluSel),
  .i_ctrlRegBusSel(ctrlRegBusSel),
  .i_ctrlRegBusNOE(ctrlRegBusNOE)
);

memory_bd inst_memory (
  .i_clk(i_clk),
  .i_reset(i_reset),

  .i_bus(s_bus),
  .o_bus(s_bus),
  .o_instrCode(s_instrCode),

  .i_ctrlInstrNOE(ctrlMemInstrNOE),
  .i_ctrlInstrNWE(ctrlMemInstrNWE),
  .i_ctrlMemInstrImmToRam(ctrlMemInstrImmToRam),
  .i_ctrlMemMar0NWE(ctrlMemMar0NWE),
  .i_ctrlMemMar1NWE(ctrlMemMar1NWE),
  .i_ctrlPCIncrN(ctrlMemPCIncrN),
  .i_ctrlPCLoadN(ctrlMemPCLoadN),
  .i_ctrlRamNOE(ctrlMemRamNOE),
  .i_ctrlRamNWE(ctrlMemRamNWE),
  .i_ctrlSpNEn(ctrlMemSpNEn),
  .i_ctrlSpUp(ctrlMemSpUp)
  );

endmodule