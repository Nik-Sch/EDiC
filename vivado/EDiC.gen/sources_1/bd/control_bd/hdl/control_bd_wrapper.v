//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
//Date        : Sun Nov 21 19:53:18 2021
//Host        : niklasPC running 64-bit Manjaro Linux
//Command     : generate_target control_bd_wrapper.bd
//Design      : control_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module control_bd_wrapper
   (i_flagCarry,
    i_flagNegative,
    i_flagOverflow,
    i_flagZero,
    i_halt,
    i_instrCode,
    i_nclk,
    i_reset,
    o_ctrlAluNOE,
    o_ctrlAluOp,
    o_ctrlAluSub,
    o_ctrlAluYNWE,
    o_ctrlInstrFinishedN,
    o_ctrlMemInstrImmToRamAddr,
    o_ctrlMemInstrNOE,
    o_ctrlMemInstrNWE,
    o_ctrlMemMar0NWE,
    o_ctrlMemMar1NWE,
    o_ctrlMemPCFromImm,
    o_ctrlMemPCLoadN,
    o_ctrlMemPCNEn,
    o_ctrlMemPCToRamN,
    o_ctrlMemRamNOE,
    o_ctrlMemRamNWE,
    o_ctrlMemSPNEn,
    o_ctrlMemSPUp,
    o_ctrlReg0BusNOE,
    o_ctrlReg0NWE,
    o_ctrlReg1BusNOE,
    o_ctrlReg1NWE,
    o_ctrlRegAluSel,
    o_dbgStep);
  input i_flagCarry;
  input i_flagNegative;
  input i_flagOverflow;
  input i_flagZero;
  input i_halt;
  input [7:0]i_instrCode;
  input i_nclk;
  input i_reset;
  output o_ctrlAluNOE;
  output [1:0]o_ctrlAluOp;
  output o_ctrlAluSub;
  output o_ctrlAluYNWE;
  output o_ctrlInstrFinishedN;
  output o_ctrlMemInstrImmToRamAddr;
  output o_ctrlMemInstrNOE;
  output o_ctrlMemInstrNWE;
  output o_ctrlMemMar0NWE;
  output o_ctrlMemMar1NWE;
  output o_ctrlMemPCFromImm;
  output o_ctrlMemPCLoadN;
  output o_ctrlMemPCNEn;
  output o_ctrlMemPCToRamN;
  output o_ctrlMemRamNOE;
  output o_ctrlMemRamNWE;
  output o_ctrlMemSPNEn;
  output o_ctrlMemSPUp;
  output o_ctrlReg0BusNOE;
  output o_ctrlReg0NWE;
  output o_ctrlReg1BusNOE;
  output o_ctrlReg1NWE;
  output o_ctrlRegAluSel;
  output [2:0]o_dbgStep;

  wire i_flagCarry;
  wire i_flagNegative;
  wire i_flagOverflow;
  wire i_flagZero;
  wire i_halt;
  wire [7:0]i_instrCode;
  wire i_nclk;
  wire i_reset;
  wire o_ctrlAluNOE;
  wire [1:0]o_ctrlAluOp;
  wire o_ctrlAluSub;
  wire o_ctrlAluYNWE;
  wire o_ctrlInstrFinishedN;
  wire o_ctrlMemInstrImmToRamAddr;
  wire o_ctrlMemInstrNOE;
  wire o_ctrlMemInstrNWE;
  wire o_ctrlMemMar0NWE;
  wire o_ctrlMemMar1NWE;
  wire o_ctrlMemPCFromImm;
  wire o_ctrlMemPCLoadN;
  wire o_ctrlMemPCNEn;
  wire o_ctrlMemPCToRamN;
  wire o_ctrlMemRamNOE;
  wire o_ctrlMemRamNWE;
  wire o_ctrlMemSPNEn;
  wire o_ctrlMemSPUp;
  wire o_ctrlReg0BusNOE;
  wire o_ctrlReg0NWE;
  wire o_ctrlReg1BusNOE;
  wire o_ctrlReg1NWE;
  wire o_ctrlRegAluSel;
  wire [2:0]o_dbgStep;

  control_bd control_bd_i
       (.i_flagCarry(i_flagCarry),
        .i_flagNegative(i_flagNegative),
        .i_flagOverflow(i_flagOverflow),
        .i_flagZero(i_flagZero),
        .i_halt(i_halt),
        .i_instrCode(i_instrCode),
        .i_nclk(i_nclk),
        .i_reset(i_reset),
        .o_ctrlAluNOE(o_ctrlAluNOE),
        .o_ctrlAluOp(o_ctrlAluOp),
        .o_ctrlAluSub(o_ctrlAluSub),
        .o_ctrlAluYNWE(o_ctrlAluYNWE),
        .o_ctrlInstrFinishedN(o_ctrlInstrFinishedN),
        .o_ctrlMemInstrImmToRamAddr(o_ctrlMemInstrImmToRamAddr),
        .o_ctrlMemInstrNOE(o_ctrlMemInstrNOE),
        .o_ctrlMemInstrNWE(o_ctrlMemInstrNWE),
        .o_ctrlMemMar0NWE(o_ctrlMemMar0NWE),
        .o_ctrlMemMar1NWE(o_ctrlMemMar1NWE),
        .o_ctrlMemPCFromImm(o_ctrlMemPCFromImm),
        .o_ctrlMemPCLoadN(o_ctrlMemPCLoadN),
        .o_ctrlMemPCNEn(o_ctrlMemPCNEn),
        .o_ctrlMemPCToRamN(o_ctrlMemPCToRamN),
        .o_ctrlMemRamNOE(o_ctrlMemRamNOE),
        .o_ctrlMemRamNWE(o_ctrlMemRamNWE),
        .o_ctrlMemSPNEn(o_ctrlMemSPNEn),
        .o_ctrlMemSPUp(o_ctrlMemSPUp),
        .o_ctrlReg0BusNOE(o_ctrlReg0BusNOE),
        .o_ctrlReg0NWE(o_ctrlReg0NWE),
        .o_ctrlReg1BusNOE(o_ctrlReg1BusNOE),
        .o_ctrlReg1NWE(o_ctrlReg1NWE),
        .o_ctrlRegAluSel(o_ctrlRegAluSel),
        .o_dbgStep(o_dbgStep));
endmodule
