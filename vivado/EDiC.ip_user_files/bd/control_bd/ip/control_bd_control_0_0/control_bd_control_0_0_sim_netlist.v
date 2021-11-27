// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sun Nov 21 22:56:31 2021
// Host        : niklasPC running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/niklas/dev/EDiC/vivado/EDiC.gen/sources_1/bd/control_bd/ip/control_bd_control_0_0/control_bd_control_0_0_sim_netlist.v
// Design      : control_bd_control_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "control_bd_control_0_0,control,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "control,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module control_bd_control_0_0
   (i_nclk,
    i_reset,
    i_instrCode,
    o_decodeAddr,
    i_decodeData,
    i_halt,
    i_flagNegative,
    i_flagZero,
    i_flagCarry,
    i_flagOverflow,
    o_ctrlAluOp,
    o_ctrlAluSub,
    o_ctrlAluYNWE,
    o_ctrlAluNOE,
    o_ctrlReg0NWE,
    o_ctrlReg1NWE,
    o_ctrlRegAluSel,
    o_ctrlReg0BusNOE,
    o_ctrlReg1BusNOE,
    o_ctrlMemPCLoadN,
    o_ctrlMemPCNEn,
    o_ctrlMemPCFromImm,
    o_ctrlMemSPUp,
    o_ctrlMemSPNEn,
    o_ctrlMemInstrNWE,
    o_ctrlMemInstrNOE,
    o_ctrlMemMar0NWE,
    o_ctrlMemMar1NWE,
    o_ctrlMemInstrImmToRamAddr,
    o_ctrlMemRamNWE,
    o_ctrlMemRamNOE,
    o_ctrlMemPCToRamN,
    o_ctrlInstrFinishedN,
    o_dbgStep);
  input i_nclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_reset;
  input [7:0]i_instrCode;
  output [14:0]o_decodeAddr;
  input [23:0]i_decodeData;
  input i_halt;
  input i_flagNegative;
  input i_flagZero;
  input i_flagCarry;
  input i_flagOverflow;
  output [1:0]o_ctrlAluOp;
  output o_ctrlAluSub;
  output o_ctrlAluYNWE;
  output o_ctrlAluNOE;
  output o_ctrlReg0NWE;
  output o_ctrlReg1NWE;
  output o_ctrlRegAluSel;
  output o_ctrlReg0BusNOE;
  output o_ctrlReg1BusNOE;
  output o_ctrlMemPCLoadN;
  output o_ctrlMemPCNEn;
  output o_ctrlMemPCFromImm;
  output o_ctrlMemSPUp;
  output o_ctrlMemSPNEn;
  output o_ctrlMemInstrNWE;
  output o_ctrlMemInstrNOE;
  output o_ctrlMemMar0NWE;
  output o_ctrlMemMar1NWE;
  output o_ctrlMemInstrImmToRamAddr;
  output o_ctrlMemRamNWE;
  output o_ctrlMemRamNOE;
  output o_ctrlMemPCToRamN;
  output o_ctrlInstrFinishedN;
  output [2:0]o_dbgStep;

  wire [23:0]i_decodeData;
  wire i_flagCarry;
  wire i_flagNegative;
  wire i_flagOverflow;
  wire i_flagZero;
  wire i_halt;
  wire [7:0]i_instrCode;
  wire i_nclk;
  wire i_reset;
  wire [1:0]o_ctrlAluOp;
  wire o_ctrlAluSub;
  wire [14:0]\^o_decodeAddr ;

  assign o_ctrlAluNOE = i_decodeData[1];
  assign o_ctrlAluYNWE = i_decodeData[0];
  assign o_ctrlInstrFinishedN = i_decodeData[20];
  assign o_ctrlMemInstrImmToRamAddr = i_decodeData[14];
  assign o_ctrlMemInstrNOE = i_decodeData[11];
  assign o_ctrlMemInstrNWE = i_decodeData[10];
  assign o_ctrlMemMar0NWE = i_decodeData[12];
  assign o_ctrlMemMar1NWE = i_decodeData[13];
  assign o_ctrlMemPCFromImm = i_decodeData[18];
  assign o_ctrlMemPCLoadN = i_decodeData[7];
  assign o_ctrlMemPCNEn = i_decodeData[17];
  assign o_ctrlMemPCToRamN = i_decodeData[19];
  assign o_ctrlMemRamNOE = i_decodeData[16];
  assign o_ctrlMemRamNWE = i_decodeData[15];
  assign o_ctrlMemSPNEn = i_decodeData[9];
  assign o_ctrlMemSPUp = i_decodeData[8];
  assign o_ctrlReg0BusNOE = i_decodeData[5];
  assign o_ctrlReg0NWE = i_decodeData[2];
  assign o_ctrlReg1BusNOE = i_decodeData[6];
  assign o_ctrlReg1NWE = i_decodeData[3];
  assign o_ctrlRegAluSel = i_decodeData[4];
  assign o_dbgStep[2:0] = \^o_decodeAddr [2:0];
  assign o_decodeAddr[14:6] = \^o_decodeAddr [14:6];
  assign o_decodeAddr[5:4] = o_ctrlAluOp;
  assign o_decodeAddr[3] = o_ctrlAluSub;
  assign o_decodeAddr[2:0] = \^o_decodeAddr [2:0];
  control_bd_control_0_0_control inst
       (.Q(\^o_decodeAddr [2:0]),
        .i_decodeData(i_decodeData[20]),
        .i_flagCarry(i_flagCarry),
        .i_flagNegative(i_flagNegative),
        .i_flagOverflow(i_flagOverflow),
        .i_flagZero(i_flagZero),
        .i_halt(i_halt),
        .i_instrCode(i_instrCode),
        .i_nclk(i_nclk),
        .i_reset(i_reset),
        .o_decodeAddr({\^o_decodeAddr [14:6],o_ctrlAluOp,o_ctrlAluSub}));
endmodule

(* ORIG_REF_NAME = "control" *) 
module control_bd_control_0_0_control
   (Q,
    o_decodeAddr,
    i_decodeData,
    i_halt,
    i_nclk,
    i_reset,
    i_instrCode,
    i_flagOverflow,
    i_flagCarry,
    i_flagZero,
    i_flagNegative);
  output [2:0]Q;
  output [11:0]o_decodeAddr;
  input [0:0]i_decodeData;
  input i_halt;
  input i_nclk;
  input i_reset;
  input [7:0]i_instrCode;
  input i_flagOverflow;
  input i_flagCarry;
  input i_flagZero;
  input i_flagNegative;

  wire [2:0]Q;
  wire [0:0]i_decodeData;
  wire i_flagCarry;
  wire i_flagNegative;
  wire i_flagOverflow;
  wire i_flagZero;
  wire i_halt;
  wire [7:0]i_instrCode;
  wire i_nclk;
  wire i_reset;
  wire [11:0]o_decodeAddr;
  wire \r_flags[0]_i_1_n_0 ;
  wire \r_flags[1]_i_1_n_0 ;
  wire \r_flags[2]_i_1_n_0 ;
  wire \r_flags[3]_i_1_n_0 ;
  wire \r_flags[3]_i_2_n_0 ;
  wire \r_instructionFallingEdge[7]_i_1_n_0 ;
  wire \r_step[0]_i_1_n_0 ;
  wire \r_step[1]_i_1_n_0 ;
  wire \r_step[2]_i_1_n_0 ;

  LUT2 #(
    .INIT(4'h8)) 
    \r_flags[0]_i_1 
       (.I0(i_decodeData),
        .I1(i_flagNegative),
        .O(\r_flags[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_flags[1]_i_1 
       (.I0(i_decodeData),
        .I1(i_flagZero),
        .O(\r_flags[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_flags[2]_i_1 
       (.I0(i_decodeData),
        .I1(i_flagCarry),
        .O(\r_flags[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r_flags[3]_i_1 
       (.I0(i_halt),
        .O(\r_flags[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_flags[3]_i_2 
       (.I0(i_decodeData),
        .I1(i_flagOverflow),
        .O(\r_flags[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_flags_reg[0] 
       (.C(i_nclk),
        .CE(\r_flags[3]_i_1_n_0 ),
        .CLR(i_reset),
        .D(\r_flags[0]_i_1_n_0 ),
        .Q(o_decodeAddr[8]));
  FDCE #(
    .INIT(1'b0)) 
    \r_flags_reg[1] 
       (.C(i_nclk),
        .CE(\r_flags[3]_i_1_n_0 ),
        .CLR(i_reset),
        .D(\r_flags[1]_i_1_n_0 ),
        .Q(o_decodeAddr[9]));
  FDCE #(
    .INIT(1'b0)) 
    \r_flags_reg[2] 
       (.C(i_nclk),
        .CE(\r_flags[3]_i_1_n_0 ),
        .CLR(i_reset),
        .D(\r_flags[2]_i_1_n_0 ),
        .Q(o_decodeAddr[10]));
  FDCE #(
    .INIT(1'b0)) 
    \r_flags_reg[3] 
       (.C(i_nclk),
        .CE(\r_flags[3]_i_1_n_0 ),
        .CLR(i_reset),
        .D(\r_flags[3]_i_2_n_0 ),
        .Q(o_decodeAddr[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \r_instructionFallingEdge[7]_i_1 
       (.I0(i_halt),
        .O(\r_instructionFallingEdge[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_instructionFallingEdge_reg[0] 
       (.C(i_nclk),
        .CE(\r_instructionFallingEdge[7]_i_1_n_0 ),
        .CLR(i_reset),
        .D(i_instrCode[0]),
        .Q(o_decodeAddr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_instructionFallingEdge_reg[1] 
       (.C(i_nclk),
        .CE(\r_instructionFallingEdge[7]_i_1_n_0 ),
        .CLR(i_reset),
        .D(i_instrCode[1]),
        .Q(o_decodeAddr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_instructionFallingEdge_reg[2] 
       (.C(i_nclk),
        .CE(\r_instructionFallingEdge[7]_i_1_n_0 ),
        .CLR(i_reset),
        .D(i_instrCode[2]),
        .Q(o_decodeAddr[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_instructionFallingEdge_reg[3] 
       (.C(i_nclk),
        .CE(\r_instructionFallingEdge[7]_i_1_n_0 ),
        .CLR(i_reset),
        .D(i_instrCode[3]),
        .Q(o_decodeAddr[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_instructionFallingEdge_reg[4] 
       (.C(i_nclk),
        .CE(\r_instructionFallingEdge[7]_i_1_n_0 ),
        .CLR(i_reset),
        .D(i_instrCode[4]),
        .Q(o_decodeAddr[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_instructionFallingEdge_reg[5] 
       (.C(i_nclk),
        .CE(\r_instructionFallingEdge[7]_i_1_n_0 ),
        .CLR(i_reset),
        .D(i_instrCode[5]),
        .Q(o_decodeAddr[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_instructionFallingEdge_reg[6] 
       (.C(i_nclk),
        .CE(\r_instructionFallingEdge[7]_i_1_n_0 ),
        .CLR(i_reset),
        .D(i_instrCode[6]),
        .Q(o_decodeAddr[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_instructionFallingEdge_reg[7] 
       (.C(i_nclk),
        .CE(\r_instructionFallingEdge[7]_i_1_n_0 ),
        .CLR(i_reset),
        .D(i_instrCode[7]),
        .Q(o_decodeAddr[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_step[0]_i_1 
       (.I0(i_decodeData),
        .I1(Q[0]),
        .O(\r_step[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \r_step[1]_i_1 
       (.I0(i_decodeData),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\r_step[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \r_step[2]_i_1 
       (.I0(i_decodeData),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\r_step[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_step_reg[0] 
       (.C(i_nclk),
        .CE(\r_flags[3]_i_1_n_0 ),
        .CLR(i_reset),
        .D(\r_step[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_step_reg[1] 
       (.C(i_nclk),
        .CE(\r_flags[3]_i_1_n_0 ),
        .CLR(i_reset),
        .D(\r_step[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_step_reg[2] 
       (.C(i_nclk),
        .CE(\r_flags[3]_i_1_n_0 ),
        .CLR(i_reset),
        .D(\r_step[2]_i_1_n_0 ),
        .Q(Q[2]));
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
