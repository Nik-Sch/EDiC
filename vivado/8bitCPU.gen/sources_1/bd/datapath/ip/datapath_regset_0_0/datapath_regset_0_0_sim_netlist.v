// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Sep 24 22:40:35 2021
// Host        : niklasPC running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/niklas/dev/8bitCpu/vivado/8bitCPU.gen/sources_1/bd/datapath/ip/datapath_regset_0_0/datapath_regset_0_0_sim_netlist.v
// Design      : datapath_regset_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "datapath_regset_0_0,regset,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "regset,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module datapath_regset_0_0
   (i_clk,
    i_reset,
    io_bus,
    o_alu,
    i_ctrlReg0NWE,
    i_ctrlReg1NWE,
    i_ctrlAluSel,
    i_ctrlRegBusSel,
    i_ctrlRegBusNOE);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN datapath_i_clk, INSERT_VIP 0" *) input i_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input i_reset;
  inout [7:0]io_bus;
  output [7:0]o_alu;
  input i_ctrlReg0NWE;
  input i_ctrlReg1NWE;
  input i_ctrlAluSel;
  input i_ctrlRegBusSel;
  input i_ctrlRegBusNOE;

  wire i_clk;
  wire i_ctrlAluSel;
  wire i_ctrlReg0NWE;
  wire i_ctrlReg1NWE;
  wire i_ctrlRegBusNOE;
  wire i_ctrlRegBusSel;
  wire i_reset;
  wire [7:0]io_bus;
  wire [7:0]o_alu;

  datapath_regset_0_0_regset inst
       (.i_clk(i_clk),
        .i_ctrlAluSel(i_ctrlAluSel),
        .i_ctrlReg0NWE(i_ctrlReg0NWE),
        .i_ctrlReg1NWE(i_ctrlReg1NWE),
        .i_ctrlRegBusNOE(i_ctrlRegBusNOE),
        .i_ctrlRegBusSel(i_ctrlRegBusSel),
        .i_reset(i_reset),
        .io_bus(io_bus),
        .o_alu(o_alu));
endmodule

(* ORIG_REF_NAME = "regset" *) 
module datapath_regset_0_0_regset
   (o_alu,
    io_bus,
    i_reset,
    i_ctrlReg0NWE,
    i_clk,
    i_ctrlReg1NWE,
    i_ctrlAluSel,
    i_ctrlRegBusSel,
    i_ctrlRegBusNOE);
  output [7:0]o_alu;
  inout [7:0]io_bus;
  input i_reset;
  input i_ctrlReg0NWE;
  input i_clk;
  input i_ctrlReg1NWE;
  input i_ctrlAluSel;
  input i_ctrlRegBusSel;
  input i_ctrlRegBusNOE;

  wire i_clk;
  wire i_ctrlAluSel;
  wire i_ctrlReg0NWE;
  wire i_ctrlReg1NWE;
  wire i_ctrlRegBusNOE;
  wire i_ctrlRegBusSel;
  wire i_reset;
  wire [7:0]io_bus;
  wire \io_bus[0]_INST_0_i_1_n_0 ;
  wire \io_bus[1]_INST_0_i_1_n_0 ;
  wire \io_bus[2]_INST_0_i_1_n_0 ;
  wire \io_bus[3]_INST_0_i_1_n_0 ;
  wire \io_bus[4]_INST_0_i_1_n_0 ;
  wire \io_bus[5]_INST_0_i_1_n_0 ;
  wire \io_bus[6]_INST_0_i_1_n_0 ;
  wire \io_bus[7]_INST_0_i_1_n_0 ;
  wire \io_bus[7]_INST_0_i_2_n_0 ;
  wire [7:0]o_alu;
  wire [7:0]r_0;
  wire [7:0]r_1;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \io_bus[0]_INST_0 
       (.I0(\io_bus[0]_INST_0_i_1_n_0 ),
        .I1(\io_bus[7]_INST_0_i_2_n_0 ),
        .O(io_bus[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \io_bus[0]_INST_0_i_1 
       (.I0(r_1[0]),
        .I1(r_0[0]),
        .I2(i_ctrlRegBusSel),
        .O(\io_bus[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \io_bus[1]_INST_0 
       (.I0(\io_bus[1]_INST_0_i_1_n_0 ),
        .I1(\io_bus[7]_INST_0_i_2_n_0 ),
        .O(io_bus[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \io_bus[1]_INST_0_i_1 
       (.I0(r_1[1]),
        .I1(r_0[1]),
        .I2(i_ctrlRegBusSel),
        .O(\io_bus[1]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \io_bus[2]_INST_0 
       (.I0(\io_bus[2]_INST_0_i_1_n_0 ),
        .I1(\io_bus[7]_INST_0_i_2_n_0 ),
        .O(io_bus[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \io_bus[2]_INST_0_i_1 
       (.I0(r_1[2]),
        .I1(r_0[2]),
        .I2(i_ctrlRegBusSel),
        .O(\io_bus[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \io_bus[3]_INST_0 
       (.I0(\io_bus[3]_INST_0_i_1_n_0 ),
        .I1(\io_bus[7]_INST_0_i_2_n_0 ),
        .O(io_bus[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \io_bus[3]_INST_0_i_1 
       (.I0(r_1[3]),
        .I1(r_0[3]),
        .I2(i_ctrlRegBusSel),
        .O(\io_bus[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \io_bus[4]_INST_0 
       (.I0(\io_bus[4]_INST_0_i_1_n_0 ),
        .I1(\io_bus[7]_INST_0_i_2_n_0 ),
        .O(io_bus[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \io_bus[4]_INST_0_i_1 
       (.I0(r_1[4]),
        .I1(r_0[4]),
        .I2(i_ctrlRegBusSel),
        .O(\io_bus[4]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \io_bus[5]_INST_0 
       (.I0(\io_bus[5]_INST_0_i_1_n_0 ),
        .I1(\io_bus[7]_INST_0_i_2_n_0 ),
        .O(io_bus[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \io_bus[5]_INST_0_i_1 
       (.I0(r_1[5]),
        .I1(r_0[5]),
        .I2(i_ctrlRegBusSel),
        .O(\io_bus[5]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \io_bus[6]_INST_0 
       (.I0(\io_bus[6]_INST_0_i_1_n_0 ),
        .I1(\io_bus[7]_INST_0_i_2_n_0 ),
        .O(io_bus[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \io_bus[6]_INST_0_i_1 
       (.I0(r_1[6]),
        .I1(r_0[6]),
        .I2(i_ctrlRegBusSel),
        .O(\io_bus[6]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \io_bus[7]_INST_0 
       (.I0(\io_bus[7]_INST_0_i_1_n_0 ),
        .I1(\io_bus[7]_INST_0_i_2_n_0 ),
        .O(io_bus[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \io_bus[7]_INST_0_i_1 
       (.I0(r_1[7]),
        .I1(r_0[7]),
        .I2(i_ctrlRegBusSel),
        .O(\io_bus[7]_INST_0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \io_bus[7]_INST_0_i_2 
       (.I0(i_ctrlRegBusNOE),
        .O(\io_bus[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_alu[0]_INST_0 
       (.I0(r_1[0]),
        .I1(r_0[0]),
        .I2(i_ctrlAluSel),
        .O(o_alu[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_alu[1]_INST_0 
       (.I0(r_1[1]),
        .I1(r_0[1]),
        .I2(i_ctrlAluSel),
        .O(o_alu[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_alu[2]_INST_0 
       (.I0(r_1[2]),
        .I1(r_0[2]),
        .I2(i_ctrlAluSel),
        .O(o_alu[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_alu[3]_INST_0 
       (.I0(r_1[3]),
        .I1(r_0[3]),
        .I2(i_ctrlAluSel),
        .O(o_alu[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_alu[4]_INST_0 
       (.I0(r_1[4]),
        .I1(r_0[4]),
        .I2(i_ctrlAluSel),
        .O(o_alu[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_alu[5]_INST_0 
       (.I0(r_1[5]),
        .I1(r_0[5]),
        .I2(i_ctrlAluSel),
        .O(o_alu[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_alu[6]_INST_0 
       (.I0(r_1[6]),
        .I1(r_0[6]),
        .I2(i_ctrlAluSel),
        .O(o_alu[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_alu[7]_INST_0 
       (.I0(r_1[7]),
        .I1(r_0[7]),
        .I2(i_ctrlAluSel),
        .O(o_alu[7]));
  FDRE \r_0_reg[0] 
       (.C(i_clk),
        .CE(i_ctrlReg0NWE),
        .D(io_bus[0]),
        .Q(r_0[0]),
        .R(i_reset));
  FDRE \r_0_reg[1] 
       (.C(i_clk),
        .CE(i_ctrlReg0NWE),
        .D(io_bus[1]),
        .Q(r_0[1]),
        .R(i_reset));
  FDRE \r_0_reg[2] 
       (.C(i_clk),
        .CE(i_ctrlReg0NWE),
        .D(io_bus[2]),
        .Q(r_0[2]),
        .R(i_reset));
  FDRE \r_0_reg[3] 
       (.C(i_clk),
        .CE(i_ctrlReg0NWE),
        .D(io_bus[3]),
        .Q(r_0[3]),
        .R(i_reset));
  FDRE \r_0_reg[4] 
       (.C(i_clk),
        .CE(i_ctrlReg0NWE),
        .D(io_bus[4]),
        .Q(r_0[4]),
        .R(i_reset));
  FDRE \r_0_reg[5] 
       (.C(i_clk),
        .CE(i_ctrlReg0NWE),
        .D(io_bus[5]),
        .Q(r_0[5]),
        .R(i_reset));
  FDRE \r_0_reg[6] 
       (.C(i_clk),
        .CE(i_ctrlReg0NWE),
        .D(io_bus[6]),
        .Q(r_0[6]),
        .R(i_reset));
  FDRE \r_0_reg[7] 
       (.C(i_clk),
        .CE(i_ctrlReg0NWE),
        .D(io_bus[7]),
        .Q(r_0[7]),
        .R(i_reset));
  FDRE \r_1_reg[0] 
       (.C(i_clk),
        .CE(i_ctrlReg1NWE),
        .D(io_bus[0]),
        .Q(r_1[0]),
        .R(i_reset));
  FDRE \r_1_reg[1] 
       (.C(i_clk),
        .CE(i_ctrlReg1NWE),
        .D(io_bus[1]),
        .Q(r_1[1]),
        .R(i_reset));
  FDRE \r_1_reg[2] 
       (.C(i_clk),
        .CE(i_ctrlReg1NWE),
        .D(io_bus[2]),
        .Q(r_1[2]),
        .R(i_reset));
  FDRE \r_1_reg[3] 
       (.C(i_clk),
        .CE(i_ctrlReg1NWE),
        .D(io_bus[3]),
        .Q(r_1[3]),
        .R(i_reset));
  FDRE \r_1_reg[4] 
       (.C(i_clk),
        .CE(i_ctrlReg1NWE),
        .D(io_bus[4]),
        .Q(r_1[4]),
        .R(i_reset));
  FDRE \r_1_reg[5] 
       (.C(i_clk),
        .CE(i_ctrlReg1NWE),
        .D(io_bus[5]),
        .Q(r_1[5]),
        .R(i_reset));
  FDRE \r_1_reg[6] 
       (.C(i_clk),
        .CE(i_ctrlReg1NWE),
        .D(io_bus[6]),
        .Q(r_1[6]),
        .R(i_reset));
  FDRE \r_1_reg[7] 
       (.C(i_clk),
        .CE(i_ctrlReg1NWE),
        .D(io_bus[7]),
        .Q(r_1[7]),
        .R(i_reset));
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
