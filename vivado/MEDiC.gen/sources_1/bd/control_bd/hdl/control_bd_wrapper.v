//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Sat Sep 25 00:14:52 2021
//Host        : niklasPC running 64-bit Manjaro Linux
//Command     : generate_target control_bd_wrapper.bd
//Design      : control_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module control_bd_wrapper
   (i_clk,
    i_flagNZero,
    i_flagNegative,
    i_instrCode,
    i_nclk,
    i_reset,
    o_ctrlAluNOE,
    o_ctrlAluOp,
    o_ctrlAluSub,
    o_ctrlAluYNWE,
    o_ctrlHlt,
    o_ctrlMemInstrImmToRam,
    o_ctrlMemInstrNOE,
    o_ctrlMemInstrNWE,
    o_ctrlMemMar0NWE,
    o_ctrlMemMar1NWE,
    o_ctrlMemPCIncrN,
    o_ctrlMemPCLoadN,
    o_ctrlMemRamNOE,
    o_ctrlMemRamNWE,
    o_ctrlMemSPNEn,
    o_ctrlMemSPUp,
    o_ctrlReg0NWE,
    o_ctrlReg1NWE,
    o_ctrlRegAluSel,
    o_ctrlRegBusNOE,
    o_ctrlRegBusSel);
  input i_clk;
  input i_flagNZero;
  input i_flagNegative;
  input [7:0]i_instrCode;
  input i_nclk;
  input i_reset;
  output o_ctrlAluNOE;
  output [1:0]o_ctrlAluOp;
  output o_ctrlAluSub;
  output o_ctrlAluYNWE;
  output o_ctrlHlt;
  output o_ctrlMemInstrImmToRam;
  output o_ctrlMemInstrNOE;
  output o_ctrlMemInstrNWE;
  output o_ctrlMemMar0NWE;
  output o_ctrlMemMar1NWE;
  output o_ctrlMemPCIncrN;
  output o_ctrlMemPCLoadN;
  output o_ctrlMemRamNOE;
  output o_ctrlMemRamNWE;
  output o_ctrlMemSPNEn;
  output o_ctrlMemSPUp;
  output o_ctrlReg0NWE;
  output o_ctrlReg1NWE;
  output o_ctrlRegAluSel;
  output o_ctrlRegBusNOE;
  output o_ctrlRegBusSel;

  wire i_clk;
  wire i_flagNZero;
  wire i_flagNegative;
  wire [7:0]i_instrCode;
  wire i_nclk;
  wire i_reset;
  wire o_ctrlAluNOE;
  wire [1:0]o_ctrlAluOp;
  wire o_ctrlAluSub;
  wire o_ctrlAluYNWE;
  wire o_ctrlHlt;
  wire o_ctrlMemInstrImmToRam;
  wire o_ctrlMemInstrNOE;
  wire o_ctrlMemInstrNWE;
  wire o_ctrlMemMar0NWE;
  wire o_ctrlMemMar1NWE;
  wire o_ctrlMemPCIncrN;
  wire o_ctrlMemPCLoadN;
  wire o_ctrlMemRamNOE;
  wire o_ctrlMemRamNWE;
  wire o_ctrlMemSPNEn;
  wire o_ctrlMemSPUp;
  wire o_ctrlReg0NWE;
  wire o_ctrlReg1NWE;
  wire o_ctrlRegAluSel;
  wire o_ctrlRegBusNOE;
  wire o_ctrlRegBusSel;

  control_bd control_bd_i
       (.i_clk(i_clk),
        .i_flagNZero(i_flagNZero),
        .i_flagNegative(i_flagNegative),
        .i_instrCode(i_instrCode),
        .i_nclk(i_nclk),
        .i_reset(i_reset),
        .o_ctrlAluNOE(o_ctrlAluNOE),
        .o_ctrlAluOp(o_ctrlAluOp),
        .o_ctrlAluSub(o_ctrlAluSub),
        .o_ctrlAluYNWE(o_ctrlAluYNWE),
        .o_ctrlHlt(o_ctrlHlt),
        .o_ctrlMemInstrImmToRam(o_ctrlMemInstrImmToRam),
        .o_ctrlMemInstrNOE(o_ctrlMemInstrNOE),
        .o_ctrlMemInstrNWE(o_ctrlMemInstrNWE),
        .o_ctrlMemMar0NWE(o_ctrlMemMar0NWE),
        .o_ctrlMemMar1NWE(o_ctrlMemMar1NWE),
        .o_ctrlMemPCIncrN(o_ctrlMemPCIncrN),
        .o_ctrlMemPCLoadN(o_ctrlMemPCLoadN),
        .o_ctrlMemRamNOE(o_ctrlMemRamNOE),
        .o_ctrlMemRamNWE(o_ctrlMemRamNWE),
        .o_ctrlMemSPNEn(o_ctrlMemSPNEn),
        .o_ctrlMemSPUp(o_ctrlMemSPUp),
        .o_ctrlReg0NWE(o_ctrlReg0NWE),
        .o_ctrlReg1NWE(o_ctrlReg1NWE),
        .o_ctrlRegAluSel(o_ctrlRegAluSel),
        .o_ctrlRegBusNOE(o_ctrlRegBusNOE),
        .o_ctrlRegBusSel(o_ctrlRegBusSel));
endmodule
