// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Fri Jan 14 18:15:14 2022
// Host        : niklasPC running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/niklas/dev/EDiC/sim_ttl/vivado/EDiC-TTL.gen/sources_1/ip/microCodeRom/microCodeRom_stub.v
// Design      : microCodeRom
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *)
module microCodeRom(clka, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[14:0],douta[23:0]" */;
  input clka;
  input [14:0]addra;
  output [23:0]douta;
endmodule
