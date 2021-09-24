// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:control:1.0
// IP Revision: 1

(* X_CORE_INFO = "control,Vivado 2021.1" *)
(* CHECK_LICENSE_TYPE = "control_bd_inst_0_control_0_0,control,{}" *)
(* CORE_GENERATION_INFO = "control_bd_inst_0_control_0_0,control,{x_ipProduct=Vivado 2021.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=control,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module control_bd_inst_0_control_0_0 (
  i_clk,
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
  o_ctrlHlt
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN datapath_i_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
input wire i_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_reset RST" *)
input wire i_reset;
input wire [7 : 0] i_instrCode;
output wire [14 : 0] o_decodeAddr;
input wire [23 : 0] i_decodeData;
input wire i_flagNegative;
input wire i_flagNZero;
output wire [1 : 0] o_ctrlAluOp;
output wire o_ctrlAluSub;
output wire o_ctrlAluYNWE;
output wire o_ctrlAluNOE;
output wire o_ctrlReg0NWE;
output wire o_ctrlReg1NWE;
output wire o_ctrlRegAluSel;
output wire o_ctrlRegBusSel;
output wire o_ctrlRegBusNOE;
output wire o_ctrlMemPCIncrN;
output wire o_ctrlMemPCLoadN;
output wire o_ctrlMemSPUp;
output wire o_ctrlMemSPNEn;
output wire o_ctrlMemInstrNWE;
output wire o_ctrlMemInstrNOE;
output wire o_ctrlMemMar0NWE;
output wire o_ctrlMemMar1NWE;
output wire o_ctrlMemInstrImmToRam;
output wire o_ctrlMemRamNWE;
output wire o_ctrlMemRamNOE;
output wire o_ctrlHlt;

  control inst (
    .i_clk(i_clk),
    .i_reset(i_reset),
    .i_instrCode(i_instrCode),
    .o_decodeAddr(o_decodeAddr),
    .i_decodeData(i_decodeData),
    .i_flagNegative(i_flagNegative),
    .i_flagNZero(i_flagNZero),
    .o_ctrlAluOp(o_ctrlAluOp),
    .o_ctrlAluSub(o_ctrlAluSub),
    .o_ctrlAluYNWE(o_ctrlAluYNWE),
    .o_ctrlAluNOE(o_ctrlAluNOE),
    .o_ctrlReg0NWE(o_ctrlReg0NWE),
    .o_ctrlReg1NWE(o_ctrlReg1NWE),
    .o_ctrlRegAluSel(o_ctrlRegAluSel),
    .o_ctrlRegBusSel(o_ctrlRegBusSel),
    .o_ctrlRegBusNOE(o_ctrlRegBusNOE),
    .o_ctrlMemPCIncrN(o_ctrlMemPCIncrN),
    .o_ctrlMemPCLoadN(o_ctrlMemPCLoadN),
    .o_ctrlMemSPUp(o_ctrlMemSPUp),
    .o_ctrlMemSPNEn(o_ctrlMemSPNEn),
    .o_ctrlMemInstrNWE(o_ctrlMemInstrNWE),
    .o_ctrlMemInstrNOE(o_ctrlMemInstrNOE),
    .o_ctrlMemMar0NWE(o_ctrlMemMar0NWE),
    .o_ctrlMemMar1NWE(o_ctrlMemMar1NWE),
    .o_ctrlMemInstrImmToRam(o_ctrlMemInstrImmToRam),
    .o_ctrlMemRamNWE(o_ctrlMemRamNWE),
    .o_ctrlMemRamNOE(o_ctrlMemRamNOE),
    .o_ctrlHlt(o_ctrlHlt)
  );
endmodule
