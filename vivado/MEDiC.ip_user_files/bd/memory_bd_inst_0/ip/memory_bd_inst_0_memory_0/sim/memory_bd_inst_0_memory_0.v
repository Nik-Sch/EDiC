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


// IP VLNV: xilinx.com:module_ref:memory:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module memory_bd_inst_0_memory_0 (
  i_clk,
  i_reset,
  io_bus,
  o_instrCode,
  i_ctrlPCIncrN,
  i_ctrlPCLoadN,
  i_ctrlSpUp,
  i_ctrlSpNEn,
  i_ctrlInstrNWE,
  i_ctrlInstrNOE,
  i_ctrlRamNOE,
  i_ctrlRamNWE,
  i_ctrlMemMar0NWE,
  i_ctrlMemMar1NWE,
  i_ctrlMemInstrImmToRam,
  o_romAddress,
  i_romData,
  o_ramAddress,
  i_ramData,
  o_ramData,
  o_ramWE
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN datapath_i_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
input wire i_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_reset RST" *)
input wire i_reset;
inout wire [7 : 0] io_bus;
output wire [7 : 0] o_instrCode;
input wire i_ctrlPCIncrN;
input wire i_ctrlPCLoadN;
input wire i_ctrlSpUp;
input wire i_ctrlSpNEn;
input wire i_ctrlInstrNWE;
input wire i_ctrlInstrNOE;
input wire i_ctrlRamNOE;
input wire i_ctrlRamNWE;
input wire i_ctrlMemMar0NWE;
input wire i_ctrlMemMar1NWE;
input wire i_ctrlMemInstrImmToRam;
output wire [14 : 0] o_romAddress;
input wire [23 : 0] i_romData;
output wire [16 : 0] o_ramAddress;
input wire [7 : 0] i_ramData;
output wire [7 : 0] o_ramData;
output wire o_ramWE;

  memory inst (
    .i_clk(i_clk),
    .i_reset(i_reset),
    .io_bus(io_bus),
    .o_instrCode(o_instrCode),
    .i_ctrlPCIncrN(i_ctrlPCIncrN),
    .i_ctrlPCLoadN(i_ctrlPCLoadN),
    .i_ctrlSpUp(i_ctrlSpUp),
    .i_ctrlSpNEn(i_ctrlSpNEn),
    .i_ctrlInstrNWE(i_ctrlInstrNWE),
    .i_ctrlInstrNOE(i_ctrlInstrNOE),
    .i_ctrlRamNOE(i_ctrlRamNOE),
    .i_ctrlRamNWE(i_ctrlRamNWE),
    .i_ctrlMemMar0NWE(i_ctrlMemMar0NWE),
    .i_ctrlMemMar1NWE(i_ctrlMemMar1NWE),
    .i_ctrlMemInstrImmToRam(i_ctrlMemInstrImmToRam),
    .o_romAddress(o_romAddress),
    .i_romData(i_romData),
    .o_ramAddress(o_ramAddress),
    .i_ramData(i_ramData),
    .o_ramData(o_ramData),
    .o_ramWE(o_ramWE)
  );
endmodule
