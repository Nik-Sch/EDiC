//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Fri Sep 24 22:13:56 2021
//Host        : niklasPC running 64-bit Manjaro Linux
//Command     : generate_target control_bd_inst_0.bd
//Design      : control_bd_inst_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "control_bd_inst_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=control_bd_inst_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=/home/niklas/dev/8bitCpu/vivado/8bitCPU.srcs/sources_1/bd/control_bd/control_bd.bd,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "control_bd_inst_0.hwdef" *) 
module control_bd_inst_0
   (i_clk,
    i_flagNZero,
    i_flagNegative,
    i_instrCode,
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK, ASSOCIATED_RESET i_reset, CLK_DOMAIN datapath_i_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input i_clk;
  input i_flagNZero;
  input i_flagNegative;
  input [7:0]i_instrCode;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.I_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.I_RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input i_reset;
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

  wire control_0_o_ctrlAluNOE;
  wire [1:0]control_0_o_ctrlAluOp;
  wire control_0_o_ctrlAluSub;
  wire control_0_o_ctrlAluYNWE;
  wire control_0_o_ctrlHlt;
  wire control_0_o_ctrlMemInstrImmToRam;
  wire control_0_o_ctrlMemInstrNOE;
  wire control_0_o_ctrlMemInstrNWE;
  wire control_0_o_ctrlMemMar0NWE;
  wire control_0_o_ctrlMemMar1NWE;
  wire control_0_o_ctrlMemPCIncrN;
  wire control_0_o_ctrlMemPCLoadN;
  wire control_0_o_ctrlMemRamNOE;
  wire control_0_o_ctrlMemRamNWE;
  wire control_0_o_ctrlMemSPNEn;
  wire control_0_o_ctrlMemSPUp;
  wire control_0_o_ctrlReg0NWE;
  wire control_0_o_ctrlReg1NWE;
  wire control_0_o_ctrlRegAluSel;
  wire control_0_o_ctrlRegBusNOE;
  wire control_0_o_ctrlRegBusSel;
  wire [14:0]control_0_o_decodeAddr;
  wire i_clk_0_1;
  wire i_flagNZero_0_1;
  wire i_flagNegative_0_1;
  wire [7:0]i_instrCode_0_1;
  wire i_reset_0_1;
  wire [23:0]instrDecode_douta;

  assign i_clk_0_1 = i_clk;
  assign i_flagNZero_0_1 = i_flagNZero;
  assign i_flagNegative_0_1 = i_flagNegative;
  assign i_instrCode_0_1 = i_instrCode[7:0];
  assign i_reset_0_1 = i_reset;
  assign o_ctrlAluNOE = control_0_o_ctrlAluNOE;
  assign o_ctrlAluOp[1:0] = control_0_o_ctrlAluOp;
  assign o_ctrlAluSub = control_0_o_ctrlAluSub;
  assign o_ctrlAluYNWE = control_0_o_ctrlAluYNWE;
  assign o_ctrlHlt = control_0_o_ctrlHlt;
  assign o_ctrlMemInstrImmToRam = control_0_o_ctrlMemInstrImmToRam;
  assign o_ctrlMemInstrNOE = control_0_o_ctrlMemInstrNOE;
  assign o_ctrlMemInstrNWE = control_0_o_ctrlMemInstrNWE;
  assign o_ctrlMemMar0NWE = control_0_o_ctrlMemMar0NWE;
  assign o_ctrlMemMar1NWE = control_0_o_ctrlMemMar1NWE;
  assign o_ctrlMemPCIncrN = control_0_o_ctrlMemPCIncrN;
  assign o_ctrlMemPCLoadN = control_0_o_ctrlMemPCLoadN;
  assign o_ctrlMemRamNOE = control_0_o_ctrlMemRamNOE;
  assign o_ctrlMemRamNWE = control_0_o_ctrlMemRamNWE;
  assign o_ctrlMemSPNEn = control_0_o_ctrlMemSPNEn;
  assign o_ctrlMemSPUp = control_0_o_ctrlMemSPUp;
  assign o_ctrlReg0NWE = control_0_o_ctrlReg0NWE;
  assign o_ctrlReg1NWE = control_0_o_ctrlReg1NWE;
  assign o_ctrlRegAluSel = control_0_o_ctrlRegAluSel;
  assign o_ctrlRegBusNOE = control_0_o_ctrlRegBusNOE;
  assign o_ctrlRegBusSel = control_0_o_ctrlRegBusSel;
  control_bd_inst_0_control_0_0 control_0
       (.i_clk(i_clk_0_1),
        .i_decodeData(instrDecode_douta),
        .i_flagNZero(i_flagNZero_0_1),
        .i_flagNegative(i_flagNegative_0_1),
        .i_instrCode(i_instrCode_0_1),
        .i_reset(i_reset_0_1),
        .o_ctrlAluNOE(control_0_o_ctrlAluNOE),
        .o_ctrlAluOp(control_0_o_ctrlAluOp),
        .o_ctrlAluSub(control_0_o_ctrlAluSub),
        .o_ctrlAluYNWE(control_0_o_ctrlAluYNWE),
        .o_ctrlHlt(control_0_o_ctrlHlt),
        .o_ctrlMemInstrImmToRam(control_0_o_ctrlMemInstrImmToRam),
        .o_ctrlMemInstrNOE(control_0_o_ctrlMemInstrNOE),
        .o_ctrlMemInstrNWE(control_0_o_ctrlMemInstrNWE),
        .o_ctrlMemMar0NWE(control_0_o_ctrlMemMar0NWE),
        .o_ctrlMemMar1NWE(control_0_o_ctrlMemMar1NWE),
        .o_ctrlMemPCIncrN(control_0_o_ctrlMemPCIncrN),
        .o_ctrlMemPCLoadN(control_0_o_ctrlMemPCLoadN),
        .o_ctrlMemRamNOE(control_0_o_ctrlMemRamNOE),
        .o_ctrlMemRamNWE(control_0_o_ctrlMemRamNWE),
        .o_ctrlMemSPNEn(control_0_o_ctrlMemSPNEn),
        .o_ctrlMemSPUp(control_0_o_ctrlMemSPUp),
        .o_ctrlReg0NWE(control_0_o_ctrlReg0NWE),
        .o_ctrlReg1NWE(control_0_o_ctrlReg1NWE),
        .o_ctrlRegAluSel(control_0_o_ctrlRegAluSel),
        .o_ctrlRegBusNOE(control_0_o_ctrlRegBusNOE),
        .o_ctrlRegBusSel(control_0_o_ctrlRegBusSel),
        .o_decodeAddr(control_0_o_decodeAddr));
  control_bd_inst_0_instrDecode_0 instrDecode
       (.addra(control_0_o_decodeAddr),
        .clka(i_clk_0_1),
        .douta(instrDecode_douta));
endmodule
