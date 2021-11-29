//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
//Date        : Mon Nov 29 11:36:17 2021
//Host        : niklasPC running 64-bit Manjaro Linux
//Command     : generate_target control_bd.bd
//Design      : control_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "control_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=control_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "control_bd.hwdef" *) 
module control_bd
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_NCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_NCLK, CLK_DOMAIN control_bd_i_nclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input i_nclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.I_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.I_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input i_reset;
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

  wire control_0_o_ctrlAluNOE;
  wire [1:0]control_0_o_ctrlAluOp;
  wire control_0_o_ctrlAluSub;
  wire control_0_o_ctrlAluYNWE;
  wire control_0_o_ctrlInstrFinishedN;
  wire control_0_o_ctrlMemInstrImmToRamAddr;
  wire control_0_o_ctrlMemInstrNOE;
  wire control_0_o_ctrlMemInstrNWE;
  wire control_0_o_ctrlMemMar0NWE;
  wire control_0_o_ctrlMemMar1NWE;
  wire control_0_o_ctrlMemPCFromImm;
  wire control_0_o_ctrlMemPCLoadN;
  wire control_0_o_ctrlMemPCNEn;
  wire control_0_o_ctrlMemPCToRamN;
  wire control_0_o_ctrlMemRamNOE;
  wire control_0_o_ctrlMemRamNWE;
  wire control_0_o_ctrlMemSPNEn;
  wire control_0_o_ctrlMemSPUp;
  wire control_0_o_ctrlReg0BusNOE;
  wire control_0_o_ctrlReg0NWE;
  wire control_0_o_ctrlReg1BusNOE;
  wire control_0_o_ctrlReg1NWE;
  wire control_0_o_ctrlRegAluSel;
  wire [2:0]control_0_o_dbgStep;
  wire [14:0]control_0_o_decodeAddr;
  wire i_flagCarry_0_1;
  wire i_flagNegative_0_1;
  wire i_flagOverflow_0_1;
  wire i_flagZero_0_1;
  wire i_halt_0_1;
  wire [7:0]i_instrCode_0_1;
  wire i_nclk_1;
  wire i_reset_0_1;
  wire [23:0]instrDecode_douta;
  wire [0:0]xlconstant_0_dout;

  assign i_flagCarry_0_1 = i_flagCarry;
  assign i_flagNegative_0_1 = i_flagNegative;
  assign i_flagOverflow_0_1 = i_flagOverflow;
  assign i_flagZero_0_1 = i_flagZero;
  assign i_halt_0_1 = i_halt;
  assign i_instrCode_0_1 = i_instrCode[7:0];
  assign i_nclk_1 = i_nclk;
  assign i_reset_0_1 = i_reset;
  assign o_ctrlAluNOE = control_0_o_ctrlAluNOE;
  assign o_ctrlAluOp[1:0] = control_0_o_ctrlAluOp;
  assign o_ctrlAluSub = control_0_o_ctrlAluSub;
  assign o_ctrlAluYNWE = control_0_o_ctrlAluYNWE;
  assign o_ctrlInstrFinishedN = control_0_o_ctrlInstrFinishedN;
  assign o_ctrlMemInstrImmToRamAddr = control_0_o_ctrlMemInstrImmToRamAddr;
  assign o_ctrlMemInstrNOE = control_0_o_ctrlMemInstrNOE;
  assign o_ctrlMemInstrNWE = control_0_o_ctrlMemInstrNWE;
  assign o_ctrlMemMar0NWE = control_0_o_ctrlMemMar0NWE;
  assign o_ctrlMemMar1NWE = control_0_o_ctrlMemMar1NWE;
  assign o_ctrlMemPCFromImm = control_0_o_ctrlMemPCFromImm;
  assign o_ctrlMemPCLoadN = control_0_o_ctrlMemPCLoadN;
  assign o_ctrlMemPCNEn = control_0_o_ctrlMemPCNEn;
  assign o_ctrlMemPCToRamN = control_0_o_ctrlMemPCToRamN;
  assign o_ctrlMemRamNOE = control_0_o_ctrlMemRamNOE;
  assign o_ctrlMemRamNWE = control_0_o_ctrlMemRamNWE;
  assign o_ctrlMemSPNEn = control_0_o_ctrlMemSPNEn;
  assign o_ctrlMemSPUp = control_0_o_ctrlMemSPUp;
  assign o_ctrlReg0BusNOE = control_0_o_ctrlReg0BusNOE;
  assign o_ctrlReg0NWE = control_0_o_ctrlReg0NWE;
  assign o_ctrlReg1BusNOE = control_0_o_ctrlReg1BusNOE;
  assign o_ctrlReg1NWE = control_0_o_ctrlReg1NWE;
  assign o_ctrlRegAluSel = control_0_o_ctrlRegAluSel;
  assign o_dbgStep[2:0] = control_0_o_dbgStep;
  control_bd_control_0_0 control_0
       (.i_decodeData(instrDecode_douta),
        .i_flagCarry(i_flagCarry_0_1),
        .i_flagNegative(i_flagNegative_0_1),
        .i_flagOverflow(i_flagOverflow_0_1),
        .i_flagZero(i_flagZero_0_1),
        .i_halt(i_halt_0_1),
        .i_instrCode(i_instrCode_0_1),
        .i_nclk(i_nclk_1),
        .i_reset(i_reset_0_1),
        .o_ctrlAluNOE(control_0_o_ctrlAluNOE),
        .o_ctrlAluOp(control_0_o_ctrlAluOp),
        .o_ctrlAluSub(control_0_o_ctrlAluSub),
        .o_ctrlAluYNWE(control_0_o_ctrlAluYNWE),
        .o_ctrlInstrFinishedN(control_0_o_ctrlInstrFinishedN),
        .o_ctrlMemInstrImmToRamAddr(control_0_o_ctrlMemInstrImmToRamAddr),
        .o_ctrlMemInstrNOE(control_0_o_ctrlMemInstrNOE),
        .o_ctrlMemInstrNWE(control_0_o_ctrlMemInstrNWE),
        .o_ctrlMemMar0NWE(control_0_o_ctrlMemMar0NWE),
        .o_ctrlMemMar1NWE(control_0_o_ctrlMemMar1NWE),
        .o_ctrlMemPCFromImm(control_0_o_ctrlMemPCFromImm),
        .o_ctrlMemPCLoadN(control_0_o_ctrlMemPCLoadN),
        .o_ctrlMemPCNEn(control_0_o_ctrlMemPCNEn),
        .o_ctrlMemPCToRamN(control_0_o_ctrlMemPCToRamN),
        .o_ctrlMemRamNOE(control_0_o_ctrlMemRamNOE),
        .o_ctrlMemRamNWE(control_0_o_ctrlMemRamNWE),
        .o_ctrlMemSPNEn(control_0_o_ctrlMemSPNEn),
        .o_ctrlMemSPUp(control_0_o_ctrlMemSPUp),
        .o_ctrlReg0BusNOE(control_0_o_ctrlReg0BusNOE),
        .o_ctrlReg0NWE(control_0_o_ctrlReg0NWE),
        .o_ctrlReg1BusNOE(control_0_o_ctrlReg1BusNOE),
        .o_ctrlReg1NWE(control_0_o_ctrlReg1NWE),
        .o_ctrlRegAluSel(control_0_o_ctrlRegAluSel),
        .o_dbgStep(control_0_o_dbgStep),
        .o_decodeAddr(control_0_o_decodeAddr));
  control_bd_instrRom_0 instrDecode
       (.addra(control_0_o_decodeAddr),
        .clka(i_nclk_1),
        .douta(instrDecode_douta),
        .ena(xlconstant_0_dout));
  control_bd_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
