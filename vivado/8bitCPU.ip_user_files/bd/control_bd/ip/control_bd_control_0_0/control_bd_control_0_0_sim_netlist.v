// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Sep 24 23:37:28 2021
// Host        : niklasPC running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/niklas/dev/8bitCpu/vivado/8bitCPU.gen/sources_1/bd/control_bd/ip/control_bd_control_0_0/control_bd_control_0_0_sim_netlist.v
// Design      : control_bd_control_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "control_bd_control_0_0,control,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "control,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module control_bd_control_0_0
   (i_clk,
    i_reset,
    i_instrCode,
    o_decodeAddr,
    i_decodeData,
    i_flagNegative,
    i_flagNZero,
    o_ctrlAluOp,
    o_ctrlAluSub,
    o_ctrlAluYNWE,
    o_ctrlAluNOE,
    o_ctrlReg0NWE,
    o_ctrlReg1NWE,
    o_ctrlRegAluSel,
    o_ctrlRegBusSel,
    o_ctrlRegBusNOE,
    o_ctrlMemPCIncrN,
    o_ctrlMemPCLoadN,
    o_ctrlMemSPUp,
    o_ctrlMemSPNEn,
    o_ctrlMemInstrNWE,
    o_ctrlMemInstrNOE,
    o_ctrlMemMar0NWE,
    o_ctrlMemMar1NWE,
    o_ctrlMemInstrImmToRam,
    o_ctrlMemRamNWE,
    o_ctrlMemRamNOE,
    o_ctrlHlt);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN control_bd_i_clk_0, INSERT_VIP 0" *) input i_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_reset;
  input [7:0]i_instrCode;
  output [14:0]o_decodeAddr;
  input [23:0]i_decodeData;
  input i_flagNegative;
  input i_flagNZero;
  output [1:0]o_ctrlAluOp;
  output o_ctrlAluSub;
  output o_ctrlAluYNWE;
  output o_ctrlAluNOE;
  output o_ctrlReg0NWE;
  output o_ctrlReg1NWE;
  output o_ctrlRegAluSel;
  output o_ctrlRegBusSel;
  output o_ctrlRegBusNOE;
  output o_ctrlMemPCIncrN;
  output o_ctrlMemPCLoadN;
  output o_ctrlMemSPUp;
  output o_ctrlMemSPNEn;
  output o_ctrlMemInstrNWE;
  output o_ctrlMemInstrNOE;
  output o_ctrlMemMar0NWE;
  output o_ctrlMemMar1NWE;
  output o_ctrlMemInstrImmToRam;
  output o_ctrlMemRamNWE;
  output o_ctrlMemRamNOE;
  output o_ctrlHlt;

  wire \<const0> ;
  wire i_clk;
  wire [23:0]i_decodeData;
  wire i_flagNZero;
  wire i_flagNegative;
  wire [7:0]i_instrCode;
  wire i_reset;
  wire [1:0]o_ctrlAluOp;
  wire o_ctrlAluSub;
  wire o_ctrlMemPCIncrN;
  wire [10:0]\^o_decodeAddr ;

  assign o_ctrlAluNOE = i_decodeData[1];
  assign o_ctrlAluYNWE = i_decodeData[0];
  assign o_ctrlHlt = \<const0> ;
  assign o_ctrlMemInstrImmToRam = i_decodeData[14];
  assign o_ctrlMemInstrNOE = i_decodeData[11];
  assign o_ctrlMemInstrNWE = i_decodeData[10];
  assign o_ctrlMemMar0NWE = i_decodeData[12];
  assign o_ctrlMemMar1NWE = i_decodeData[13];
  assign o_ctrlMemPCLoadN = i_decodeData[7];
  assign o_ctrlMemRamNOE = i_decodeData[16];
  assign o_ctrlMemRamNWE = i_decodeData[15];
  assign o_ctrlMemSPNEn = i_decodeData[9];
  assign o_ctrlMemSPUp = i_decodeData[8];
  assign o_ctrlReg0NWE = i_decodeData[2];
  assign o_ctrlReg1NWE = i_decodeData[3];
  assign o_ctrlRegAluSel = i_decodeData[4];
  assign o_ctrlRegBusNOE = i_decodeData[6];
  assign o_ctrlRegBusSel = i_decodeData[5];
  assign o_decodeAddr[14] = \<const0> ;
  assign o_decodeAddr[13] = \<const0> ;
  assign o_decodeAddr[12] = i_flagNZero;
  assign o_decodeAddr[11] = i_flagNegative;
  assign o_decodeAddr[10:6] = \^o_decodeAddr [10:6];
  assign o_decodeAddr[5:4] = o_ctrlAluOp;
  assign o_decodeAddr[3] = o_ctrlAluSub;
  assign o_decodeAddr[2:0] = \^o_decodeAddr [2:0];
  GND GND
       (.G(\<const0> ));
  control_bd_control_0_0_control inst
       (.i_clk(i_clk),
        .i_instrCode(i_instrCode),
        .i_reset(i_reset),
        .o_ctrlMemPCIncrN(o_ctrlMemPCIncrN),
        .o_decodeAddr({\^o_decodeAddr [10:6],o_ctrlAluOp,o_ctrlAluSub,\^o_decodeAddr [2:0]}));
endmodule

(* ORIG_REF_NAME = "control" *) 
module control_bd_control_0_0_control
   (o_decodeAddr,
    o_ctrlMemPCIncrN,
    i_reset,
    i_clk,
    i_instrCode);
  output [10:0]o_decodeAddr;
  output o_ctrlMemPCIncrN;
  input i_reset;
  input i_clk;
  input [7:0]i_instrCode;

  wire i_clk;
  wire [7:0]i_instrCode;
  wire i_reset;
  wire o_ctrlMemPCIncrN;
  wire [10:0]o_decodeAddr;
  wire \r_step[0]_i_1_n_0 ;
  wire \r_step[1]_i_1_n_0 ;
  wire \r_step[2]_i_1_n_0 ;

  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \r_instructionFallingEdge_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_instrCode[0]),
        .Q(o_decodeAddr[3]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \r_instructionFallingEdge_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_instrCode[1]),
        .Q(o_decodeAddr[4]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \r_instructionFallingEdge_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_instrCode[2]),
        .Q(o_decodeAddr[5]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \r_instructionFallingEdge_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_instrCode[3]),
        .Q(o_decodeAddr[6]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \r_instructionFallingEdge_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_instrCode[4]),
        .Q(o_decodeAddr[7]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \r_instructionFallingEdge_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_instrCode[5]),
        .Q(o_decodeAddr[8]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \r_instructionFallingEdge_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_instrCode[6]),
        .Q(o_decodeAddr[9]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \r_instructionFallingEdge_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_instrCode[7]),
        .Q(o_decodeAddr[10]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_step[0]_i_1 
       (.I0(o_decodeAddr[0]),
        .I1(i_reset),
        .O(\r_step[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \r_step[1]_i_1 
       (.I0(o_decodeAddr[1]),
        .I1(o_decodeAddr[0]),
        .I2(i_reset),
        .O(\r_step[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \r_step[2]_i_1 
       (.I0(o_decodeAddr[2]),
        .I1(o_decodeAddr[1]),
        .I2(o_decodeAddr[0]),
        .I3(i_reset),
        .O(\r_step[2]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \r_step_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_step[0]_i_1_n_0 ),
        .Q(o_decodeAddr[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \r_step_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_step[1]_i_1_n_0 ),
        .Q(o_decodeAddr[1]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \r_step_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_step[2]_i_1_n_0 ),
        .Q(o_decodeAddr[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    s_stepEqual1N
       (.I0(o_decodeAddr[1]),
        .I1(o_decodeAddr[2]),
        .I2(o_decodeAddr[0]),
        .O(o_ctrlMemPCIncrN));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
