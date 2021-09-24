//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Fri Sep 24 22:37:19 2021
//Host        : niklasPC running 64-bit Manjaro Linux
//Command     : generate_target datapath.bd
//Design      : datapath
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "datapath,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=datapath,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=2,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "datapath.hwdef" *) 
module datapath
   (i_clk,
    i_reset);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK, ASSOCIATED_RESET i_reset, CLK_DOMAIN datapath_i_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input i_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.I_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.I_RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input i_reset;

  wire alu_o_flagNZero;
  wire alu_o_flagNegative;
  wire control_bd_0_o_ctrlAluNOE;
  wire [1:0]control_bd_0_o_ctrlAluOp;
  wire control_bd_0_o_ctrlAluSub;
  wire control_bd_0_o_ctrlAluYNWE;
  wire control_bd_0_o_ctrlMemInstrNOE;
  wire control_bd_0_o_ctrlMemInstrNWE;
  wire control_bd_0_o_ctrlMemMar0NWE;
  wire control_bd_0_o_ctrlMemMar1NWE;
  wire control_bd_0_o_ctrlMemPCIncrN;
  wire control_bd_0_o_ctrlMemPCLoadN;
  wire control_bd_0_o_ctrlMemRamNOE;
  wire control_bd_0_o_ctrlMemRamNWE;
  wire control_bd_0_o_ctrlMemSPNEn;
  wire control_bd_0_o_ctrlMemSPUp;
  wire control_bd_0_o_ctrlRegAluSel;
  wire control_bd_0_o_ctrlRegBusNOE;
  wire control_bd_0_o_ctrlRegBusSel;
  wire control_bd_0_o_ctrlRegWr0;
  wire control_bd_0_o_ctrlRegWr1;
  wire control_o_ctrlMemInstrImmToRam;
  wire i_clk_0_1;
  wire i_reset_0_1;
  wire [7:0]memory_o_instrCode;
  wire [7:0]regset_0_o_alu;

  assign i_clk_0_1 = i_clk;
  assign i_reset_0_1 = i_reset;
  datapath_alu_0_0 alu
       (.i_a(regset_0_o_alu),
        .i_clk(i_clk_0_1),
        .i_ctrlAluNOE(control_bd_0_o_ctrlAluNOE),
        .i_ctrlAluOp(control_bd_0_o_ctrlAluOp),
        .i_ctrlAluSub(control_bd_0_o_ctrlAluSub),
        .i_ctrlAluYNWE(control_bd_0_o_ctrlAluYNWE),
        .i_reset(i_reset_0_1),
        .o_flagNZero(alu_o_flagNZero),
        .o_flagNegative(alu_o_flagNegative));
  control_bd_inst_0 control
       (.i_clk(i_clk_0_1),
        .i_flagNZero(alu_o_flagNZero),
        .i_flagNegative(alu_o_flagNegative),
        .i_instrCode(memory_o_instrCode),
        .i_reset(i_reset_0_1),
        .o_ctrlAluNOE(control_bd_0_o_ctrlAluNOE),
        .o_ctrlAluOp(control_bd_0_o_ctrlAluOp),
        .o_ctrlAluSub(control_bd_0_o_ctrlAluSub),
        .o_ctrlAluYNWE(control_bd_0_o_ctrlAluYNWE),
        .o_ctrlMemInstrImmToRam(control_o_ctrlMemInstrImmToRam),
        .o_ctrlMemInstrNOE(control_bd_0_o_ctrlMemInstrNOE),
        .o_ctrlMemInstrNWE(control_bd_0_o_ctrlMemInstrNWE),
        .o_ctrlMemMar0NWE(control_bd_0_o_ctrlMemMar0NWE),
        .o_ctrlMemMar1NWE(control_bd_0_o_ctrlMemMar1NWE),
        .o_ctrlMemPCIncrN(control_bd_0_o_ctrlMemPCIncrN),
        .o_ctrlMemPCLoadN(control_bd_0_o_ctrlMemPCLoadN),
        .o_ctrlMemRamNOE(control_bd_0_o_ctrlMemRamNOE),
        .o_ctrlMemRamNWE(control_bd_0_o_ctrlMemRamNWE),
        .o_ctrlMemSPNEn(control_bd_0_o_ctrlMemSPNEn),
        .o_ctrlMemSPUp(control_bd_0_o_ctrlMemSPUp),
        .o_ctrlReg0NWE(control_bd_0_o_ctrlRegWr0),
        .o_ctrlReg1NWE(control_bd_0_o_ctrlRegWr1),
        .o_ctrlRegAluSel(control_bd_0_o_ctrlRegAluSel),
        .o_ctrlRegBusNOE(control_bd_0_o_ctrlRegBusNOE),
        .o_ctrlRegBusSel(control_bd_0_o_ctrlRegBusSel));
  memory_bd_inst_0 memory
       (.i_clk(i_clk_0_1),
        .i_ctrlInstrNOE(control_bd_0_o_ctrlMemInstrNOE),
        .i_ctrlInstrNWE(control_bd_0_o_ctrlMemInstrNWE),
        .i_ctrlMemInstrImmToRam(control_o_ctrlMemInstrImmToRam),
        .i_ctrlMemMar0NWE(control_bd_0_o_ctrlMemMar0NWE),
        .i_ctrlMemMar1NWE(control_bd_0_o_ctrlMemMar1NWE),
        .i_ctrlPCIncrN(control_bd_0_o_ctrlMemPCIncrN),
        .i_ctrlPCLoadN(control_bd_0_o_ctrlMemPCLoadN),
        .i_ctrlRamNOE(control_bd_0_o_ctrlMemRamNOE),
        .i_ctrlRamNWE(control_bd_0_o_ctrlMemRamNWE),
        .i_ctrlSpNEn(control_bd_0_o_ctrlMemSPNEn),
        .i_ctrlSpUp(control_bd_0_o_ctrlMemSPUp),
        .i_reset(i_reset_0_1),
        .o_instrCode(memory_o_instrCode));
  datapath_regset_0_0 regset
       (.i_clk(i_clk_0_1),
        .i_ctrlAluSel(control_bd_0_o_ctrlRegAluSel),
        .i_ctrlReg0NWE(control_bd_0_o_ctrlRegWr0),
        .i_ctrlReg1NWE(control_bd_0_o_ctrlRegWr1),
        .i_ctrlRegBusNOE(control_bd_0_o_ctrlRegBusNOE),
        .i_ctrlRegBusSel(control_bd_0_o_ctrlRegBusSel),
        .i_reset(i_reset_0_1),
        .o_alu(regset_0_o_alu));
endmodule
