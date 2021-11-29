// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Nov 29 11:37:08 2021
// Host        : niklasPC running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/niklas/dev/EDiC/vivado/EDiC.gen/sources_1/ip/uart_fifo_tx/uart_fifo_tx_sim_netlist.v
// Design      : uart_fifo_tx
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uart_fifo_tx,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module uart_fifo_tx
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 5000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 5000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [10:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [10:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "11" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "2kx9" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "6" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "7" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "2041" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "2040" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "11" *) 
  (* C_RD_DEPTH = "2048" *) 
  (* C_RD_FREQ = "100" *) 
  (* C_RD_PNTR_WIDTH = "11" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "11" *) 
  (* C_WR_DEPTH = "2048" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "5" *) 
  (* C_WR_PNTR_WIDTH = "11" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  uart_fifo_tx_fifo_generator_v13_2_6 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[10:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYvhEjj3nb5oH8uSNLeXMIy7nJYVR9CgwYrS2YsK1wH0yG7GgJF3h7LWVAsRpUASOB7rHmuPVhb5
Ot5CFu1eFeE97Zpvi2xwlrFd2yOm/xOs4mKX3gkTIBIJmAKj42AUYk/LR9j6mOwXFIQmoZqYXHak
Pq2yC2ljr0hY1gwTFtI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z+2GQWpqmewONlHVkL658DHQ1gOkrvPjxsrm0NDcBmt2DgE1WctRC0/WtmZNRR2P9xNPEc1AnD3g
x2bmQ9ClncBm4tJJUerktYV7SZWaAFXLpL0mImalEctnoiL1emAUpqT2xWqYmc7/Up4fedi3U63/
6fZpFkfLPe1f/3mRlu+DKs00gVRP+t6V+01C1oWFsyvdyS5tDx/D7YWjpI8AZn7PAxGanwdNWWSB
/kAFPcC2bUzb0T91+nSe2x7K7ugumFrWpHW6iiuiY86OlLeqrAD5SZsqHhPT9GqJmSzj5PdAcMm2
1N7wj661ojPTxlfvw7ydkwisxeQEZRQ1H8LwwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NWkv++1uc4OUvmLLmKamw2rSfdpVbwBET7oFkV2XGR6y3sZCnAwLR/UY8EXqGYSYtRzQMSec4n13
l7DB/8txjOrwXvZKfRBpPdz4pIT7HDh50CC1gJaraDaEr18dxcLyq6t0fo14o+JyrAxZm7/nDg78
7/uEhQnwCkDeOEnusng=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RPz1UvQF5/1bAGbmkE93ADh5aKEj2NdkJKJJhSjosDEbYcFH8ZSL5Ew53E1CBLn7KjAnpfOLAKVf
fX9beeVP5C5vU0n7ZMu9ISDuX947ttq4eCcbaV78UxB5l1Lj8hlouzML1BQecqW1z0mUCgW7CBoO
kvS93cLpph/VpfSwuTwO3q41V7Gxeshrw2U3zfZGHMUL2TI8fX+U+qCt5oG7UGDkIiE+SZRN8eQK
SY18ZEkuzeSrAbp1xn25WHjeUYF1dwHmcNf4wRKiww67b89Lqk9DBKAL9rsw0KWuua8qjESM8t3w
D+f6RYj2AciBO842MNa2LlXNkWM+oLq1CtukmQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcQzkZp4Sch9TwvI82NYHoYu7Fu4A68g8HQ0GQQvhgP0VPOA5fVtIXlGeuCjshtvB9SbR/JdhJVW
H0AcjAKKgHxZK+en5z2azbfr9d1BbF03MjLpFIxdwUacvQfXpyvYKYFtjplThociLLWtOUmXj84s
4nP0l8PXdvTblIHap6SfZL6Dhv1jlcCTvUTUGoULVvQRU16E+vFCep9sJnLwhCCldBnB5vBZ5TCu
AXnNJpF2Gx4Y+BC9c7XyNRkVfKm11TUyI3pc5OcNWX+42CRvLbMSKG711f5VO+yZsWi9YEWqMTjN
RN18y3FwbJ9g/6K9ZswbGNgjRnn7l2PRbFrMKg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ic0gE1G8ZymuhdpWjbURYCva14oPCOYHWxeY1WbqEo4fRdhM6YimsmNp3RyJRpeG6TFY0iDQtGg1
f5g5G1LTD2KIG+dBZyfKNnTE/ZOWrLJOblPxV8gmBtOye+53NJXzi8+oEuZceCLJxPBg1t44/kD6
M9x687RC58J0HT1/+RsMdCvAGIhlkdNOkb4+dhOoGEPVtNJhV6u4ccNdcnLz1ZaIW6yGByR8UXna
8XH9yb/yWXZzxveULhlxfYe5edpqYlF99QdUnueTFFmCXxIYP4G0xwFM1S929iLWZUS13jbam+X4
5SLDsqw5epDM/DVK5Cv0VD4JajhRoM+fGT/I4Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W34Gq4IReWdH4guFD03wBoHFTA+s1wgkA3uEFz/xWEihtgcet7BzSoGE0K8FQKLVs+D+mR8yPD8Z
vuUkN7L+imyxs7FeoUUpCBNbo0z5XahETBApULQzISBGdsC2f/p8wwDdoHY5E0UjcHOTr+Pah6x+
Kb/OiJAA3/B3geutymFuXHhdGJVoLS30F7CpbZpHTVoZZBU1TgUTFXAySsVWu7k+NMAoSxDKr4k3
10DyqW8wuvTaTG+NdumVzlwtmHHXVSiGk0//Q/9EJmzEzH0Pi9m/wmiONCYRmb0c/K5YHCIs7xNF
nWpl/fzOUJQequCzR636PCmQz3/wSjGRil3HDQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
iEsUxC8JQZnRxQOm+O4jwBmkm5PoeeMBxaBqVOvKpTXSyjvbLGMDYSb0fxpNvdSJbtZpFIPnAww+
aq3rl7doHEf1kjM2dC4rjvZWa0jWRoJIANcbomcPl6IeiRfAUGCGIDrNDxK+Y3GNvZf2de79ApcB
dTaCVwgrbloNzIJwiJkRY1og57CtPhYfZGFMkwwQ1yHtCyOiuh1DFTM1HOr7jtC54Rj43wY2EpJp
V8vuUqRPQXW8kinGG+26i34AsoOI/xAYSbvXdBHrgwQSzEVIApd8q+QxH+P/twlQ/rFGh9QkEtsf
01rrVJSI2TzVwOQBjP9yRmeHw8y91krSW2dGHHjOd+HVO8Mpbdh4nOvQiYQjNK1lqwInPGOH2bM6
kuUfNcfP9+0NlRUDVuuhbzPVr++hGny3Hvo5Aq7bQqtKrYhqiaLWIWoY6mFPGyfIoZrbVClEO/oY
G2CKj5JTQTRFxNUtusbqdXg+69YwdnuXoF9oFfaVJwpFYlKtWBm5LeRv

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YKagekiHOyMnMVPg7PmagWsOMo70GABOzboT0+MRxNHoWf+7KtPwFZmbZAZPMjbv2wgx5vSsG1VZ
GZlduGJPTey/Q2+Yx2fvgCJb2dlR/HDmPB+1X4vVosJEw5nD6m8yWJd0L+NZCG6gtRelGjAxjm68
yPC9qOiRc6jrOM91cmFC6Xi2jeY4t5FHi4zmBceasIzRWIBnat7p0fZ3CZaaY76+K02CE2jND22R
W0XlRGoYVtWNukn5s4Z4AkME8oKdQugjp9rNooVbn7sWp5td9RHT1ZxOWgINwiHb6D9MOnsOSGwz
2K1jXhGDdXe4TOnFPIn6VglS5Y05u1snfUxFlA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53088)
`pragma protect data_block
ApJ8NkyZt99xMiQnBGYXlEeHtA3OopKUZrZIteV57hZT0181IV+jxxk6k79cQqLLIOmZGuxmv0JM
eOpRZRETg58mkPXd1Vwb0MaAXI60Swy0e6IbGY+rWE7yS4K/yhcdn6J0gt5CZYiXKP3ZU4TLmvQO
ShftSYYHvBb0UyW16Qjaex0VjLmhxxMT+eaa6CzIC8D301Q7MYp6gT4wnz8O1RR7oZxbiBBq1TIq
PrNeYHMTetXhG4+C15R5WcT6WnXN2vkmcGGkNohpvGRMYe+vinzwSWjneRRBh3NLdOXz9Uyp3F/X
gnJs/6zD7aUtcVKaZhF52YT4tR7HUCH+I/wb1Tb2x5i+lLUM/hGu0YMIiP1m4fNVlDw822Wzibpc
1RkKNHTCBOx+ewzWBM/CbhxZgjW/Ms4PBDSmzksE3iI5fwXoMG846JHsQw8IdZKAOXQbqcZEa+mD
fEwy4iOysPhf/qOux/iWDocwVMM3AU5OpNXTwY86yGL7KTMorcFktieY2Ji+Yy+LyWSJvnXRREbG
rY8TDrBomPTPtMlHmec+VQSOxyM4G0pzG9wRsMIpWmapHVBdX+mrcsv9lK9TB3sPa+OK4fKy8SFf
da/RwHQOycbKdGKYFFIbHnPb/AKhLgVJytpuwcrd5JYRjzYA2pOQS1EwG4iquMMbXERGkQOV7MK+
erzlYjBoegYMyN6z2Z68nZzZPvxTT9ar4HK2MRXOegYnNGemczXmvhXmo9EmzysnRfXVcf5TUhtl
wg11QKkXYU5/0NikmLNJTfu9dTVUXIQaMpTOiFc7+icHBJ0ZrNkPttg0cgcDlKeCHjBylibJrwLr
jFAfPy+rTlisPLBMic1uJHcZfHCRCriPiIAkqnEIe/+czyCd0fxpW/86/SdlEqvDQjKaN6XpjEN2
kUe9EFKlOLw7oP7HRWJQzN+DFaGUD3ELQn8yiiVBb/p8/+V35GxjuO1mjHswBZX0oTnmtEX4Cpj0
/MYlSUoThYIIUik3H/tJsxZnxBH6mCG9yDVSdMWAP5/ZYtovyBfhS4SrgQ4vbuGaSNS/PBj1iXSY
23ewGMFMWXZtQ9dgTOeXTx4daPEvo1LAm0dEToE4o/L2G2jDabOaPgQHCwOjV4jxftqwrrqgcDzN
S4D0q1b5W3xTq8u2ahylI5wHuUbfYEHNdKChTmQhkrad2NI4PvSjy2XtNOlHxGhGTWbmUDwttzLo
a0DsuIBdMpynRrRYfRgI0j+RO7RRttrGh0kssEGkiPw13CkgNFbWUSfa3b0Ya6fWawjdb9sPtyXX
zFSZaTuWHxpIUdAKlhwGPGaXqfyN16Uu9gOLbkgElJ0/iox8YqjhUAJfBXaANJTe0aeVnEQH3v3y
5cOrD6cpuy8zCkGQPke1LKUt5ZJQfelLTOqMISitNeBtnEV5zMzj+q8/nNBlFxwPKKOzWCVv/P8E
up5cCZsL/MOIdPsZmNUJ3FUIz0E0Fo5OFn8osxI6jH3xTq2VuxKwzCV8SMUAtCOcozozY6Jv0AP8
ceCVcydmlj4MnVg7UHxSGCxvahEed/p8+mjATFR1WWAzU+3Gpt0PQMWzBNE8rdvYp0PjL0gGlnjb
AsyYKT812B0mpuNwTexYke3z5Ew2tGpgk1OlpSteAn72J3reiSkNP5c8rbukaLvM5Ql5Rl41jOxi
2SqH3NPUXDgsJrN0uSCsE7oAm8J3NQVK/v+/uN9fu9HMvJGlnoYXgPSM+RWw8KdUy55frwZ4pli+
s/toMh6VjJ/FoSZ/gD92+iMNxZJpslMgFLalFh5FGDYeHEHHZqMsISZV3wB4UXsKp56D1yOs4KP9
u+AF6TgPRudNdkZt1OLFOUg7edgDtZnt7JG2Df8zl5EhoG6iKmRWMqBIPdvm5wxfNMbv7HxHXEqn
o+hTFH+A3/M4MJkHYWLXCdQqxMUPt+XO9SyyJm/UL3JZxsw69/yfMM8PTCgzqrhAP9xHofxYWJ2w
wDIhch3iYUtiPsgu6q74Pcgr9TLwwtBI2rtSfPU93laoU4KyxJKFnMq5X3YZ5uzhEocJU6DFntBX
52sG6V9WbLIgRmvpF/Bi+tE8c6AOZykuTepW0z0ypO9fsV1GRO2niTINQgJVD6RJT67QGFaxzsyL
h7u+1ekaik293se4+OuXtAc3SILSodMazxHue+ux980Nd1ZGGo9ZR+BmrYb64EoD7JYLGLwEboLC
3xne7rP5wYXBmlv1d16Ujw4srU8KPkWvqglS1t/uwQDBxg7asV55jKfe7MU81DIvA1z+tkRuZxY7
EL2fsXp0eUPt20FwG83k/K0KDUJuMfjbbEVRvgCgTcFNQ5gqLW1wbYiSA66x0FNRZRiDfTohsuao
5+2j3cPi48S3tullAt10F7OnA8AnUOImC2CTHvYlF4afmfNjq73mYDtrSL4oRX5ihm0ntmUbuG/z
ERjCsZSpAUtC0lqjLRlckp+HVRVFeqp7ESKLG9BsMdBMsXY8FuzvvCuI9a3+H80KzGAwCzN5elAI
9UExTfDg/9UHWA49NpKIAzRvtqSJfnTsyAkSkXaUd3PpBbpYBrfMgoUSCma4KQXuVDrA2LkSM+Qi
OZfqZcpYs6cDy/46i89GITgyiI0JPXP8kJVOyv55XfLEY2VP9DrY7PH/ZnaTrjZHqnP5Y5P2O+qx
3uPIOpWy89i606jjpZLFPnNRSRbWgE5ysxRPXqPESzmNYbn0hMcy865ABJxOOqgHN2hB4S8MKDud
msR5jbLj5ihi0YCDjjMYArglijSu80+zCiB7rtrfqgXM1lcSNVpf0kyqjggX/F34MLxpuShCoRMk
9Ur8haPzG2iOG3vFEUTqtB4FFQ7yHUXkm/En11ZBslnpNJvA6uopBJHBqoqvW9rHIeqUCPhPAvoT
kdK6HPBKMKom9IpkDx7Q9q1dhIDr5iSe1qf3ENl3MRp0txYf7EKxcbMe0hNDyj+2QqYSeYHGIQJx
oE7MA3xwkTLAYyAl9sfnE7pZ3/woAtTGVCQDaVg+T3fYUsKGZOqWNz1X7BTw5ER6DJzUYJtvGe8P
LfCvh56PnNhwbs8F8S1v/IknfVb/3URFuNxCP4l/22Tt0pwRIoFc30Ao8SVDcU6abzG63EoW87R0
8PqHDMBRS2KsDRKnAUMad0af1az3hiSLiCqbCPT+Ogrh4p9ulB/t1uoiH+g3PsSthOLeNZaTCU+b
SLMQ3n+6lXRKwnsQr/T24RhfRHi5nKQCw1TCXCDHasqYe0bgi2ELnkk8Y8VIjWuUZtYR5Gu3pt/d
/TyOD9kirztfvJs1G81I7nghLv6TGOwdH6Pwa7Ns3R6qt5oJ/Vsn+ev0N4UPoejsFJjjMa+I2yQ+
QB/2QrQO19rPYSkdSHlFeI29CYaicvqpCG2XQDp7r69P1dccZ45VxD77cazjkusjF05rnX79iNhv
PozJf99i6i9kTB3rHyz5YfneyPhikjt2ENNHhSQ241pBokUP9va6CC/EKSO2YtIHu5aGVqHhW29e
VB+dN919R/sbodyaQznt9E106mjzMybnkTYXLz6uTqAJYdTRMuer9KQvt1VVt8DcJ3GK+wvbZxHU
golYpk+y1YwUbvxEzBCAq5Crt2PeAN0rcNJ0eWH6Q+esotao5QHH9e0nVRIEsshPKzJ9nIoSwrZ/
4j2uBMR1YJwI03I6lgiT4pf7VITmj+KIhufGPS+7FdQG4UwuN+8Fj3vs3bwSbZ3siW+eW0ONInGJ
+TK13tpoHJJrMQmZTKHt07shZJMohzl+yo8SyunlS6Hqu2C3vYHJg0XKHBBFdMBykm1tGSntYT5W
uWSwHA7m/yy3UD4Vh5cMYjhnWLO6xfvXW8LZkouRMOqj1yXKp+1SgMLyec3blgsun5evCjbUml3j
whX5IQcOaz5OcebId35JMb5mSx9MAb+VJkRAjRQxf+yeOJXukQHV3DE8J8RZWTU5bxqRnK46xFwz
egEyFhEjKbJt+8ya0ykLOqGjXsLCHKBcsJTT4VHh4D/s1kxe8Bo5rVRBaGe1Sy31zyyua4+uFhIz
ZR42m6sYg1N0+RGdYTlfRad4s3WE238+N16hRJwhlzwC/C9Uu+kXaZBlV+CTEbP6fFzGtDa67H91
GtcqEX5G/Loo5a2QudabKVC3V/axt2jg+viQJAQSQECIjxJ9S/JbscYLjM4RBy2NRRtIDhovL8hA
zmKs4nq9PUaGPrwU7sdFMDg9zWWjggnX+EviMArpOTEMjqdq3SqNS1oS/1DXsjOhUbdiMr1qm1/l
emlWi9ay3MfMaNsbLJpGE63O32E800H78cKegoE6HEmr4sJJHDPQO//Zvy42fYdWPajCA9u33imR
iYNbSIfnSh0ttzkzVf8jEvsqvtnZ/SALonMhMoOYhRLFYFkVut1jV88ey24Imjk7+6Otwwz0MrnG
vUPMyMJYwY0+2Og+KKzp48DSxjrM3pvipamt4DJxe0or2jrIQnIl9zUNWDV3C20GHfVWo/PKtP9S
il0HVgmn2CxoZW4qSdD4bALKpBSJrfDJQryvyzRvrpS/+QD6hYU5G589Q0Z00zVH+hDT8Vmkfw1l
9JjBWGRUjb9a29UQ7M2TNS7MVVMushUmoNIi6Mo7MYrUdQZ3MuaS7I0sryJ3kT+FxJ0T13eOKEaP
ouybRkE75v0mLlsFZzUc/4tWukwLapRjU7iApU4Z3sT2OvVkOP8IZnhrhkHVQ4wVLLZ+BtFRFpkQ
IZDm7Iy/YJpACyp4mgVYH3/PvYB61kklcPM9gnwZXmxJWhXmBUrIhRZ1TcV9Nvt/ko1kNVHumg0z
Msi4RrL+rpW1IFexhjX+6pgSdp3zLo/5J9DGmCYqcu5V5MZ6umMoyUfOv4Qrhd8IXLiz69qjnEVv
0BhWAE7MPEHWHuMLbZ1YrWTlgwLGPuOD6RZZTARAiVDWLj2y8nSmn252ZQ/2XU+LirIK46+0vF1I
QIw/d1hwvE6RHzFdF3yCG2CmvSb+xhmLkwtiWW827Jq9GJsoZ7t9j8L3vUfevQGrvEed8Dst99W+
6g3V5CzXFMLfSFD7ALcIrfTvrPq1z0dO/0QMvNOqLtJ1Fp0SyCFbSUv3hTa8XN0KVcY3YQceKOvI
6ujy15mHkaPCmo44f4HahqoAitBVh0/pyCCdmTANKQqU6ICK7GGGuoFePnCnr9QJZ36nNksHsylA
lLZdUqkcnmKRyQR55EgwyjX7Sw2Gne+x5mc805WbKc3ojLBbaatMxBTmRIdH82LaYxHsMaJAkYxp
uT0A2JUaSXzbFLYvqymZOdVWVvmQrDJWUpGpGxReQrUeMcYnKhQmaUL5D2rEddS5O9HXUbKpgDPv
IOuv25ovPLlrpbRhXKoBby9EhSFEqIk6n0QFHy1PkpLQm/k+ZyEm6iWfJv4thfNhT2q+7u2bjQhk
Gb1BXMVO9ZCNT6g/L4GrBMGXH+DNCRSDBab6FGqOo1I7oFPhJvCfTCxiP3RN1UVC6aYywrbhrjcg
1Uj8yq+AwXmyOcE4yE3AI+OvipZgiW/0uobHKapFSInWQaJf+7tiYHH703jHqxnqCHB9DHZcn//D
Z5fU42xnCdSjVNVxdTNIaCZDJ2BtgdflQr/QHtBgpBnrTbbw4FKxzd+mauTGKWCypoAn6iwNZ8YP
iBWK9pVVr9udbBXWlMJT0WQz4vJmNo5MKJv0QBJUgEwK6Ccc2FUL8J8H6tHBi03td70e9WO4WktH
6oUAtFvJLQjt27wSCCt/7roZzBL0HOLLP6332v0UyNI0JqwKPpHQkq46uX0XyppAWCELJp7dgJPP
Hkfu7rXW0oFAgCwC1vjL2h6HzQc1V4MvaOCmHwJYCKgeJ1VEX3lgpCR1DwkNr/llZOZFkVxTZNgn
uzOgaJnHTxGYjQAXHNkZ/QjOqWG1VPMSAcYk3kemt3ysRVRtCZTpMnR5H+BQQ0lvvDmgaTabrWgo
gpvDA0H2fZOBDdO2LHoN2bhU/LdlFuTIY52mXqdG8dE+sVbkrXxoE+py9cVUhZsO2D0k2DwvjTsr
MtY33BhXvHVZLMes31HiW6iXsDKFv/PT4gt2pz/ALNyBkfGDHMe3fJ6ojhPHmzo9eOm4Ma0QwQIV
0yIJMFgusUpAc/WbaL/IQaBvzvqX3+r+fMjP9PmPDIfP59jPqW3FjMkeyVfdYoKYAxV93Yhgy4Cl
YnGkhRpgMNMttwNfwiGaYiqH2AdGXFEukESbyDnOmTH+FaDaB9pzw4U/Ew3F8Zam9N1nLYc535ZL
jVoxCrsBymKvOPejeCjDjY5W40pyPt5e1zT7WS0mBZC0pt9Ka0QXqcpAGtc9GG082AKmXl05a1JX
66k0NnF1PvbrCVVA0fhxolf09FOp2jwY/Vp76yMNHf0JALKJ0BH+Yf70AC2yPtJmJyyrSfqBiFTz
FKfjlIYaliPUmxBzySJ8BJ2P5vL/7QuT2vYEw5vJK8Euugp21XNfaSVNm5HAxk6A5WcbVaFsQeSq
GErjbfepSY7T5ZpZEHfhHk6k5PxC8Ci3LoEV8gLqQQw2chVmgUDTRf06XRxb+2q7amwcTszHQh80
MH26iDRl53iAMRGQvTPaiAznJIvRT89pYSRSxdPF96pI0u4OkVz88n+BfBJ8YpuCnwDzLaDL9O9Y
8vA7FwrfGNQ1M9/4rly3VOya+LBPkAT8P62XE02VCX52kV3NQBpcektYh4FxBFWaD6Wkeo2EX4Wz
HoIHnoHTeSLOR27QdZFNTHVou5wdlLx0TSTxnfvscAZfQZ2sZwzSoJ4LMuYvN66qS6wU2/4qfQtP
MkAdDolsCiHAIjDfb9q4LZ3aXTHJ1Xk44dUS/KBH53jcqn6HuqlA61RbpU7uC9/MFngjRMrLcijG
Q0O531I8D8X1deA60DyES9YPZXjMXuRr7TPUEMEzjioFKb/V6FEhJhUnu+Q1CM/23P3Nmj5T3ljw
1ICIeVlVZgAVBrzkCZQ2UGuTssOAi3GvS0W/CMFkdXp5mvGxrsVao5o9qVppZgcvQl9jA9XRLR56
428xz1SLjUrefl94q/F6Xa7UVQh3mHA5i8kX8A7KDyjLPouDJrqWl/S+F6AI6lJdqMAU1k4JPC4A
yvyAv5K/+nrLOWAyNaMrfQnEDBRVTPniMpwICx4WLqe4JMCjKl9PhnEmeBeYGmWMZS9dH/Daj/lC
l5wIJUgGckHHH+l0wqYli+Hj9rzOalUL8y5Q5sONvtyVUKc54tThkQYSr3iZA/5f12GZoUq6a+T8
Xe0h0j4QqPI8Y0BXWEP1MYMaYMgef2dyUCsgBFw3hXHr0fYw0JQ75/2XmJ8In6c5Gl0h1dZMyHeK
0MhmcbmxfF3M1GyNwfLTvtmTy/1elwRN41tIf8LO+bq3hvYq4o16irjGHn2flyizuDve9mAJvZRk
/b1Bkin/M8HX+pp3955g4j1ZpjO6479LBMR90bdzEGsFpCIbQWZQJ4KoYAkNZ4122UtWrlosrHHE
59H8GkluBcglYlno7DFxPUNZ3U4VTwZhzgksH943p/GwmnjfPmyFqc/IGK+Vv8nK1o/XPvlzPtVZ
A7pEVfAyg3cuBFSZeqx7TB4it5TJCLIaTXXsb3jcl8pGhEenGVln9oXdirlNupx9OtHYHL7n2M0A
aN7/pIoAd8dIBXbOypkAqoKJnt+epc/cFUx4uWGFGB/Bqrntgm/R0O7rGrU0ebq2oAHDe6JuOpV6
Ku7s1m0SETGD0pIFTwsGM3DNvWdmy7ZWcI2NxaoFpyPnW02nKxRF49tR9Scg07fs7Qr6Sv3pqmC9
tdUrEv2Vt0grJ/e0KL/4MsdkM/GmOp9hWLsyWRgNxX4/3H/Mfi73amUG7lds1TVcObNh63ftvlq7
LLheOwapw2RuhaIUTHghPd3M5cm+JqZd4qyAqhfSK4/GgEqTGIuXxPaBxlG+jVykghqN+4CeRKTz
aJUjt1TBUsma687gBuLX11I282uvC6gHuFdCpzR9hXYTt+s6N92Xcgq4u/wD7tzi9Ds1PcVcVzJX
suP3RKHINfhNJS0MW+TsNvH2n7TpAOMBtuCzY+H3riuw4iF+lsL0lWH8LbcekixYSIplTg4nz5pd
gr9G0FPWWJgd+aZ5XTR5rkzv4nktGwmGUG4tup9hBS96OuizhKUk6DQsX/bHeud4QfKO6hhAt3+8
LNCVCGXgmmFg/ThjYFFJ2SxzrwOjUOWQXf2SwwE+Wo2szGld0IHLg65ZTYvnjEJRhL6BqVyyoQgu
E/Cq7B5F4i1YSVJy2hExsyGHecYJ7b6+IpQ6L/x6jkENmpumkviUK66yYZ25Zdc42s1hNho7fLMu
5sMEzgrKhrtCuBGNX3MR5FkCip0XwO9VIeOKEmDt+Y0gpO+dN92aNssjN3OxSV/M0HKLLhRi1/oP
TNCLmtjVDIOnpM9LgA5AgG7GwvPWvOHSurHY/va9xTAS0D4p0NIFQIEzUMz52OtnjCJe31mgde0J
gw07PSFBqRkFSNg5O7ZbR5BsBmryk0sf0p2HrX2rvnZagEtOXSOqcbb6NdnrtCF+wQgz7aVaYeUD
dpWpioKPzrbacwKjjZJy9hmdoe5rYt/8DlM1Vj1he+35QqKPqNyywpWWF6ExlJu5ots6iFkJ1Hzx
JN1zQu0gH1fitYnihzHspm0vL4zLj22lcpY9m18OArLkII7PGsf6bpNUEwhrt65sdrJyB8LI78Gd
wCLXZk+gKZOHF8QjvYYufouz44CrUpVCPKG8FobMKyp8/Vp7DuDBWtjrRcK2la/YsTVEadnFKO4s
8+/EJOrfCGrldBbc6CVQ5vLP2emh/HJk09c8B+kCM0Yq/TvcvnNjYqUC24v12Khp0Li6SOidDMK+
oXtXISP/zNW0e+lGFyUXpwvF8Qko5Thl0nCS6nJt05JRWzWLh3zOTnsq7MnJxT0YFgTBKpwLHeqy
JQjUkItr4sPHfLA5rjGQfbWUNJnjWdUKvf6mqT79zA6ajG1PHXCUSxCaUQpf0cFo83GcTSQw3cif
fCwW+2IrAS1UFyPztJUq+zU99b2WfKZ+xaLKMWFvcjWusS+ra1eTKnGoWp+crWQBUKDZix7qttO8
Z8fjkwwl3yZygWmf/afsnQRp7EovWEbJe/4IZZypm5j5Z5NbtFXt9C8wWmX7u3l4nBj+Gjdab0RC
yG2x089Clh2QfPHEmCgzA8J3Lw6XXtkylilgJjemo1G8g8HCgop2DmJGSv0ph2A/P9mxdt5ahzgS
6F4JIef2tuZAS7Tgmp75R89dkQe8FyU5UBiK/bNKANRyT593wa0hZNnHna84DJmiLGiDH7vyg2Bw
GhMEXxGHZSlOFS3Rd+6xDhyOQmH/b4iUyb/lN5Ll+eiwAqsaX4W8mQH6mJz+azKxMt15fGR39H7v
NjkBrD4RiKT1XHjoZeh/qIO08y5YbWe07JfXljt/l5qv3Vl9pWc47RG2aulC2w5u69d1I/TurqWD
q47YYwQjHp3YRS9Se/owgaLDvELBqbhCslOpGxeO5myD4djFAmW+zhr4nS0tt72H8+V6frPiCdJ2
qUdtvDthl67FJgEImHZBZzFdZgTEAoo9/h9QuDxM74nTtaziNSxYLjEr5aSr/HiJGchlP/SgWJ24
Mm9xrAEZgWTOHwdUeFCFJTMEEb1I1jaMsvoUmV5QqWwGSyy2UovO8DcQi+uq8xbPan2AYIsDAEqQ
0/eaLB+wsN+lnb7W0JpfnuHczuK92gtqOVO9abtoJNdBREMSjUV8nKMP/TvKDWTGPpTsdn8WxBru
dQTyHHP9T+5RhXrowDLXC5TX2/G0WmpKCZKawyeT2VsDgBW+YO9oaufAYIB6xMwq09kyRtwWRJW7
UWhlyvhn5fJ4VMqlXGkCRaXMkCKrH68RrchQPjuHn6Mcf06q6V1hr+ShPHyCgPpDu4S5bgMjLWo5
PmmKoi3wX+j+w44pfIIVtrMzjCSUzUgnVf0c7ZjCRiFrSP8pekpBXR77y8lmN1vo6dDuyKJMu4AQ
5trF2dZndkhaLWgsU5KMYdwGcYR8iPiRNrtpSganFzj/0Mbh+uSRSsWoOhCrfvQUCCaqtQZXGEII
QNEVmuXOeb+S2xzwqrN40uJlM1wkmBPeDAs8ez532HIS1MX89Q828xJV29mMCqNFcCQ1OiggJ0Pd
oNOCvzM1lOOrlFroh2kIH9+SYQnLVL8sNDbdaM/vESMvAa7hs5lBBrfqQ7taL6g+wCP+gD0//ui/
Kz6aT+WTfF/+ArvzG3V4+f9U/v/F58s/E1Eac3LwHFIkO+vm4mI35uoIMI6c2147ygb6HdIgcoHO
8hjYPNV8Qm7i6GoCTv/FFHQyVw8QhLefEDJ0kauKB7944UhFAfm06cLDrMJS5ydjBEnoDE/xUa1F
oYoOmBs4xlJf7TRqSwmPpiMpcz/vLDoBGPnM5r0a2fPRBwbY6rwxxSflkERlvKPvaWGLMP85pGx5
bRywcywRky/tBaW4HrqLCeQx29Uej5LeciBVuqI2zl3umRArpB4kfRkoHSf25muEli8EBNFbcRXG
TmicyDQUUyWouOJmOnfksc8Dq8Afm7aXwdemchXJxzNtQ5/SGRSLBdUxPLwWy4ztuV22zNWGtym+
TDOWQvC0ChigpC5ve9iddzn7qQULVzCs2JnG/XfRkUCzMONbijYzSY7cervh7f89dlPWf+H7aiXX
NrTyXZCPNDEASKKaEOGrLGZX+HaRltxhKfNWVowR6Ec1SbisjTcD+ujvH0CMhwM734yGaTZTvo4T
2bBGvNZGWMkct9t846epTCxf//nSVzLg21bFDUZZoBitpiZUkGo59tqpG668M/z+1V3Vmgw4beNg
MOJ9FedtWuCHHvmJZEVoXljvJ90WrKVvmm9GvsVdmg2k8SQiSTY5SKaDCSsgd7Be4LZ/EujXwQEe
afert51MpWgMcFEQBOW7azGaMGOJr0K7w41+YIbDH/RXxPeOXQwEFDjfE4W7/Oun6Avsclp8qYg1
t/pVOhoVpwXV75rrAHyTndoTdleuqbiWsona2fi5VDoxY/k4SNHQzR8+U8bm0cSIve0qiakQYiFp
9/cIlmPfpvJRtX4BwBnIVFQrZl2dMCvi+R5qCpaj6y6Ffb00VdLqhHbogzaZ8ru4kLkFzlHIkMdD
mlIbjYRG5X/7NTAFHq0poyggaZHeDTqezVQmGg9+5w1Q69g6pSSvTBlub8O+H1JWoduIYJfIQgGr
tOQMlft188Emg7jcMLdhA7mT4M7Enh5HvcDaSJRI32a7ZY1v5KMA72TGeNBMyarCov3HE4P8PRb4
8dsTD6haBqNsAYKOoQ/vxd+jczCdnFYBRSFurUbxNwYOp/BMmIDxBGeHHBM585QDOPvuAZ8a0pkA
AgmjNnJ6B3seAorUjnpDwg2cxT6v+PG3evSlA0Lbg5myepZ1m5BHiMV9arqUVnm+GuwHgInJi1WQ
PGl6F/rzMdBX3m7DBOQHiWlkJ7xnc2Lhq5S44vq5WTkLAjcDqCNwoEMEz4GGbPM02w4vQknXGZBp
OCCXAdz/6XvbRIhRtD5AlUG/QrQlRP7LDbZbQ8GqZdbcWVCiCo01SitjIxXhIxde36PJZq7dq1Ki
SEa1+BFHH6CJYKJkOcBlLmqeQSaaOj9CdV5bmBB0y0EQm7l20UBRTnccPVL1oLOwNOu+r3tLc/Fa
eFsxgVPuX8lWEWBz859y/+1vT9T0A25d8GBXHFheZGMWlx+Y7U+VqdEo3A2XZyKOggZJ8IKAY/dQ
ksagCwMm8ofmQfWlSl78yE+CuoYHsGQ7EIljoNho4CrxB6jGqPNZ/4bIqwMpAM2UjunS8DNo1x7M
2Gxih618YMuKnRHEVMe5mnyS8K4FyC1WNe7xxDuRu8/il+sm79lLJAlkbqd0A5zrzYTpN5T33G/N
6a3ATiyynhKqHewsgcfGDPo29tW42SDq3l1aVtlVVU5VQ6BQE4hMSA4IXNFlM601URX0fvjH586s
kfz9cLJZf+zavXvojTj2lbx/aKnMD3C9FMF6ef4xmxi0FcHQMcXYDUEaqOzlfUboFumMpU74RYQg
8d0urOSp75BHIC0z4vvtNOO65vTiwXwImaEbgzVoE9afDM2YpLitCRHLTctIRHJX4zUT+/Uh+XaK
m9G2rDuTE1VxG5RodTNqKkmFclQp/YI/DocX/5naonnbnkeQWvVk2PI5PMmGl51VQeKe+hXgFNp8
7k1aluw+J/QnPoNrB5ShK1t8TY2uNQl2bCPx52JpWn9Py/6dEIuJL6jQmFo3UvW9ZqJhaA0ioGcf
F6+/AhE6Hx2fbQUJu5VTLaVJvaKwaUtdNXoXEfDx2s9/8lUx9q2cGq5CqNzuSHAKkvSRfE7Ze7ke
bMnyPby97Gd+pYbo6jAGZGec2IWKTfcNFBa4MZcvguptKSUO0ihz4k+T8x3EtWpQg/XgBcj4xjff
udLfvptybbK9WhRs5viPW4Wuip5gTojBx9y1Dg26N/vxN2eWIvg6wcVoxkpk9q6nRXnxwN7HuJ2z
7obv6sgR65veJJMLYdOZ6oICuRRJgpWXHsr3DAJKhH2EsTh6BM/I2LoC95vWGX78UiVA6KTSFnKu
vQ5Y+rHWeEnZcnVustuelelus9rtTjQq99rTFIrZSeF9+MbpmV14o/UFuh3/p0E/1EsLcIYixEbA
z+gOnRSgz7kOrChae3jJCriyrjzSZGsVQQWEXuU2eq8sOJZS9Z8sGnmWsk681qCEvHWIP8MxFbQs
jHImxS/8lraKR3S2Twt7ZrIs173vD3qol+e7zdSh50XI3Dv+DaNMkAFIBqS3lcjUDaydiOBFSzFy
0wfZO+oonW7OabpbTSXdZ6fKWhYY8lKgg6ktvRjRbq5MOYZUksbLibN8/p+CrOVo6I2RFFnd7mYW
FVNoIoboy1R2GJnlHX0p4s8uP4dJPwX1OTkEEFhEbRkdffsKRaL6RagmvRkljcIUYraRvK0t1elz
tv79uYbS40c07B26bS05IiJmaPlHt8QUCljMHzk5kYcxPvdJ4dyLPF0nyAQePdI9AC2lD41BhB0n
nxgyWHheyxUXzS5XNQkxbpzniTjhDaLTWMMCd/MuKrZ5NZI4T/2ukDCI0KbHVJziBdJCFZt6prRd
2CA0+i1yoC6r06EptdS0s3BHnfpnZdNAgUkg/JFD87MLyt27SuK4cQtZ+i4eJcQuO5791LKD4o2J
EFWbrEZcHxhx8AYVU8HQIdmwf9VVvVwUH8Hb8aG5b/dkqd+nkFPJLCzVlzHwkxOOhWefT7wwPj6U
CVofdt3ckF2tVON+0tIyFZIt0AOLQMIG3cJBqIzQfMqmMZN2Rvmn+9lB74/jTcnbAw+mqPgSyC+s
mw6bsZPf55fjSHap+1RStM2T16Cr39aH1UnoVTaLyFZ2OSrNDBT/QccRJJhFQcv1a9n35TrjpCC8
xwy8FWM7i33M8jgBzARrRTv8Emh3xxAuAcuVnIVKY/dgO0IQloHylWDzdDDNJR/V/LG2qLZ9uaja
JPOVvF9GG/lcIudK+3JLAxY3i1V4DcYIUJQcxaK6msH6s0Scq0/f3F5Ur/BU11YB7kyV/Y8Cqfb9
UyJKHZuBAg/HsXMuQutfddI03vmQ+FdDaentLjimkRqElrO9+TjC/kt3RgtY81BtC7gIEouY2J3a
tB0wY8I8xH+k9l57ytCtCAnAsBNzRIRP5e3Um3CkxefV5U/ZvntdP97cyY5mW67Zw3XobdBW9ubk
pls1FnbKPNzYQq1aQ58mXukr5C0wRDLtrLLsYpM3t6z07zuwYbCjk1U04U50VEk+Mum4FRtHuKXS
PED96nNAiwSua29nHMzZadVkmOZ9FT3bgoeACpRIsOOsG1M6XYh1jmRF8q0Z0iD/y23vffUdy9OH
yswdmXUrqYE2usHr0nHPAHcQOw+coM2HKdSFLTauc8Y9JtXVKjIRDw36ORXv3fa1rfmuhBKQONjX
agMcj49N8vNlJXZS6YoozTKAvhyEGTSE7WW0jIr4vb71HB3l4F4jzcfr+uNnpVnNLxlmIGWqE4ey
kuoNGpicExmFGHVYoFAX6pfVNhsxrAokogYxx86Zb9GsABXhQWo5qfkn0VHWJ7320oGO5Ixf7G5x
twHQox2GSfZ4bfCSelEOvHsc1u1ab9L8Z5W0vMU1ryEWm6tvvJiTwEZ3sDWqnNn6JTgN46CbLzLQ
gDX9pH5/Fq97Jhg8OLD4b58eg87hhzJsBxIYzOmhepTBTUczvATAup8hT7XH055ga2VJ+flVc3hH
sQbrMS/EsU1tDnZ40t8mQMk4mJu06I6k3sq9RWYJhgh+XCYWAlSlwsR3ewdNUYp0DCwqVnQ4uLRd
iDfWPpswxaDpG9ofnCmN2hY3iNgs5UWXPg7Hn/k8jcdj0D5/Jf0UoMRntkOEoYd6MY+YyqzFNJBr
R6pjUdUd/zfJoOHswRCxmYuqql/NyuULfTFkz2jWDVKHgX578P+GkKo2yPajiSrKviq4PebBppG3
VHKjnfOxSywh+kZtfj5ghtFbLVmbU2WyEJY+sDHx0dL7cLai1lK2kdtTxaettjDfsSRW2X4p86vQ
Cy5B7tIqlH3pgJtP1bp4WgU3mdLJMa8kM0nGYVvomglFRKKwD9AhgoHdBvJX1RbQtpS+i7MabSY7
ZK1FDtv/RYPkzXJQB5SpbQzslHS85s6MGTmImLbX0T2rfHuFdLQGco292wimoXnN/PWrAsMqTvLI
2CXRtNyw7FrjwwBwUlplpQppYrbZULwp+p6tpDgz9g+eU6tLx1Bx+ILbZLSOOV29bx4EgrZ3HuUt
a9y2AK2lNhFfyYFYELVFiiuMYp+sB9Q5yTjxjpzZ7OLWuUKPo8dK1y+1HYC1r8SL2wgw7K9VI8fJ
03PGjYFALYMAy84vpyP7X+5N3h6MQChtwq+6A//RaBy1EDX6FMEDeDq5wWG0ZBBhVw3x7+S5QM/W
cdUWeZJolkPQAC9QWiaP4sWOpaT4fbuI1gRYO/tp2jzqDkMl20JFR5lL8Zzp2U5R4yFozeZbAZks
0Gr6jX6r3gPJ+nrS0JoSyKvcRsDPfBWlwKUyRrK4rEYbYfshzTowOPFJqwH4Hagu05T1WpLaLN5Z
VP04nEPsSzPCstfJD+XbK+PHZPSfV4OdzxfZLArB89nGlViVfTN2EZSxP1NFMwjfUaRSCPx8dBH+
KvrgcESDz99dLd1lel52WddfvM/YYOz4zNi80+e3XACcmxI2IDHmWPUZIuIZFYKBi+W3JGC0grNU
3H2eyUkStJGHbmWnPlf+LYcvfIrzVrSNPJTIofwYhjT/Sq/c/xGKiE3BvIk1MML/+kVrRKBEo65t
lTOnTnbYxQJwd6wq1u195Aeiu/9/3yE9IGIM2oR/8TvYcAeKl+WcdqKjMQLm+0o0EBPCKQlk4FYi
VbAB53TAdY+fFozbff6By9C+OikykRxFlIC9fF4biymyTKnrY9dOV71tjVOg2obrf74fKZz3busP
ggKNuXkVbduSh5A0Eeyn75RvuWaSyXUO8oJpsr+movVlk5fw8nkTUbS+6CUWXfEdHTenz/BuKZQL
5LcaUcZ0N7ASzMn4zfpllCG6e0bl0NbKyHFiSarvGnBgWttqtsnGUBm0b5PhzF8W9jaQ0CJ887cM
389t/3dhJZUS6U5UFGCrys590zb16hUeULaKnDVK7K/wPsnQm5pwMgpTP7gbJNAjt4fK303pBuJV
nobFCzhNcUoC84eLDqX0RVMF2lKaoHkq2McuxJyN0DsudzixFtfUXo19maLL4C2iKs5H7g5iWbT5
Q+d6QQaOBWX8afTkSqZVevpmc1n6FFrjKQaQsLdK9VuMAJhx15wZLcJwmRqxxBMtcTc6nOzOxRuX
piZ8vJMq9zv/vjWR06CFMF+STmh1yjYhF9+w8/gqWSLj7TK6KSQ+22UvVY7h9EJxi4CxTJmzFYio
x0U4CfP6XoOpjTe/MX/8WzqMnoQCn8vazDZGdyr8tDPYi5541gXIR7pyGErvK489O6WwXWen5Drq
mEdQZ4CPIIneS5j2Pj5s/u2/LeKw127b4XyOhcP6csqGtSSsyepw+rYAG3/BkcE+lGFCAjn/ACRt
RmYgEy6wJ0mYqwWYZqYJkMWS7TGy8Sy7qm9KeqTw8avBMo9jG2CEdHtQ0vBqC/2z0o+oHsjLvpeW
N1nQGGPX2kcfIlzDxgtTLD882DHdzYiGnWKMl2SI9LF5RkziAvZce8OvBuWT6L2F4dPicA7cvu6H
8hQgvcYToC3w6Aca1++oIRjsAvETPUyh9Ubyc0rnfHYafcyEr7R2Cjh1QqLO9TUxN/f/aEjwHZeT
pVTPenshL8nunLffLetKuXn+5P+1gccKDj8A0u7SCvBiEyNXmMY5bUiK+5iQP2zyPFCGrGTIBIEZ
8LsVpU3GYurE7IVRgMGQXOaU7OsrTPxiHly+eq9lKwrPStmgGVRf7T78bzOGUtTeJfYq+J4+VWhc
zb/QaL2wcwXaYx0mWEytmR6RriDTDyPlQMd/HQOcZudVr39Pfx6xdaIamrlGR5VnmHm2nr8H0D66
4Yg9N8GfIUgcwXaomhb47Zc5bp4B8vpf4r+yp1LfQjjNvRQfor2/VKXoLp2TsPEuyqO0ONrfNwXi
XdeBufl2J9H1jbN9605dtfnWl9ve6LYEGLwkmUVjAS3Fz8d0Um6drgG3iZQthiWJWFfvxn1DFbxX
eCE+qVKj16EpwGJObXeIDXCsbGo271+7F06rV8qZBDOfstqGi7L1KwvsVMlksqBYAP2RvWXCqmhJ
5squ0BO3Sv+ZGTPApaPlnmrZR495cNaiVYs7HJxtL4Gt6FF2njRDelewL4rJ7jNQHJxkkuNv7Naj
oeeUfJ0sqHw4Lb1LrBNn8cCazlJyc8LjDm9+yeiUaJcpHpejRSa/n+n0vnzSVLwA2cgRW3xwhZms
cRNNnIJ79SZOvKILN+8Z56VcdlnGhvOsdERaMjAEmmQ9FRFC4kMeGxxMmFflvemi4LzSJTL1Bbsm
yBJRxddztshOnPC9s1kvSTr3AqWRlRKdhsPz4VqwvLCwRAunwEuw+Yq7lvVKuZQ8/1W0zvWM5yK4
BaLMryngxB33SpWvpXovKEhozfJ3BiSKz5fwPAoEE/KbLZYockBOVETkMxYqot/4hdVYfjJ5ehou
BDEhCeqSkKAjoS22kX/hndzW6++k/3oX3pmSOGHGPe+tRFhF1womBSTW2eeFhEhExxCZAwmtovMp
/fOKau4Lg/REKoK84U4oVnh8vx1dMCwuONBsmo1aNpeLllwRw+C2O+h7pI+RRh/tyqlX7zY048sv
85UriSHqrYcOkVSxHu8TDXpvLIlVpS0GXA3mQR0eUyZNPZZIkWjn4zI2AfmywggHKwE+BsYuWQ5c
BlaXpU+YdKy99odCePk0efx6fBccOK7ag+yvqGh6w3Dvsy+9mAfjGWKq2PGi2eOK7WU1/YShfFEP
1AW/NHN/fEyhQ3gCWxjw2G1rYuRXY3MJ8s6aDEbe4K64KSwrhe2Zjrx3GzcGcorf+TbZHmhQZoO3
WsnnDY2xqgpMy4xEBbjkFui2y7SuiRAQqK1o7VnPyu1L6LC1ehdZyEQc8VeS8quwohbVLDDB1kQO
8IrNDGjG9dvCIaGZfz7SBXBmUu1WFA2yQX2/cb4mv7dTVgylagFrc+KN9H/hRibUl0SMXBYkmSLJ
8UHXeG5jrioo8gIAQvkAYD+7ULCPqvZp0H7efN89dO5oPFPRpm58hvvb2poj1bYpyPwu8jONNpm6
hPrI8+pGo+h0J4oIQxROVsA0KV7HHIntdCpdHTmB//eql5yihRE2zYqyPZx1vlfTMGYwN1zGsHyv
VP4mlRIIETHG7bUBnEKKVdgSBe9qAK7i5Pkw26gFsfXxo+SzS828z7uA1OEpiKFfZHDHrko/CjaT
OVpQ1xIGG4wblWeOAtpXkiWtd7iWtTpUwQh1TSd5NVDltukDWq8oGmZeRDp4QK6yuCpnrH+MpROb
quWUj7qmuMZIAMsig6ZDbUi1VhD6p8rSxYwAqDF7sMm+LeFAaRgmOFcVz6iZkjQbxOQikMy/Y550
OH/XG1MJZiSwADeO7FJWTjL7rY9nNK0v/OPtHV7Re0yCUQwYPEzOjlzcEluk1mvlqDX+V5kjrnZG
a+DmOEX34F8hY5boT0fTOGaqQTllEuDSe8bYSlA1L7V5ZsB50EegrNDqLCi+Ocd092GsU6kkJ+C5
BitCgSZExJ9h44snT78DnDQKcWkEPzgSYuIzLJvvi/0b7LdrXto+S6vg4VJe72mQga/AcgeRR0+K
Uya6IJ9sBLmV+242JCJgeVwYBOfcz+56Z73DC2nZ8Ta3P43C4eLEng7RbYsDmsrWf6cUKM08V4V1
0pWV+oGMW8YzhCLrUIPoxHD1OmC03PcaMosFz1l4hmaYXCV4rYbaMqSUdqznPt1XwIZHshQL8Pfd
1RlpUwY+GdA1X76e8aF7tvWgH9qxHyOl0rVwZ/SMZ/CyNqb8cf4f8HnYgRrVB4c0OWEIe2evTB2N
/lgqAGJaJKDNyxBNy4b08+HkXaGpTDXIkhq/nmMmo87XKNXWY2z0nStFgLghyeeBRpOSQ9YeCyIU
Px8rUbQwT185ue1EcBF7nK1nlUjHRADSw+6i5mKZt21Wep9Mh7zm+5d6KPqIIgmeylEmd6KeJ5df
pCBfZGA/kcfUUTiyi+25JXU25L/k8wIVR8+PkxnDxKIH5NBxmIGB0a4il97kZZnChngUXRxPFfTV
yR2gwAa/YTuw11MtsrJ+VMF1THAjh3qfPchrXTlKUpKCmnZV0eiCoyVw0G6bdgSuQaf+PeDoK3Gd
7MP9t9Ep8VW39f+NG4N4X+qY9lMbwuuzdvGKsEVhjPcGakS5BhzI936VOVrOjkotBLAadyuFqQl1
TWnSKagGsfk4vEpfAgAso1tMEWUNXv2OGhQECn21ctoGzL8V3OfaNytaiw7+jpSYyYzU1bOVk+4o
GuHKtnIK+uAgKfL9Mj51dkSBk3GvWXVXrQ93CrC2IBT5dOvXed1IAZ5IsFoi9ofupzPhoeiPjnoh
gOalFhtaTDtrreEMdsYcieGzpPczUZZOlqrzomRzduUFKt4dKuZIVKOXGHLM7sUV3e7wMp0wcqEz
mVwvHqdxXG/XPFSxMQtbkZgwGLE8GuHUz7bpwpCezn3K7crUelQo5pPJzT4oc5b1eabEnuhwkgFT
K0eTW5W81SmADpCmBhnopGkp8JCsGz/c0yZM3JdAjiGDNemRFdDhF2VMPJEbGhhQjZJheLEFnr/E
i8D+4hrd8vENg+xv+kazcLdiGQI47B6ywWhUed7XPhN6mGjkuMxTo+5MGB527m40NaDavLKdrs3w
L+Akvq+SlNbTBqCiOnnjRsEUG3FBe2HzpDZyZI2OJ/m1QVFSfCUfiqCsUagjaWXFP4OtPr+4Kyi+
aVhqWqN7Y67F3Z90eqwzaSorDu25WMWRnjc4RABfZ56kx8r7yM35HrfKr2MDwlC5A+kr/VWPA9/F
XKGYQ16FHnIoR+f3uFVbPfGrTQmAObt/N/6uyxzDEfACpRL3jZz+HNKFpWyNtB1wasBsjNW2bR0I
kak+XH4E0OCR2iVAqyHeE3+n2vtKvkTVpb/tO2psIVAzubpEXr10jHpbnm/fAs3qeg0y1P0ybsYi
L5i1AHNYw1Ybqgbyp+CdUCgX/BTS9jSkUsiKZrSeCNxoRoXSCA2bNLAo9gdzeJigtO74LHTi/EiD
az/ZqCYSn+zdngkIqkBleZpeygq8yixB8/tnOD1lG9h+OlAY0TlSA3rd7PL3IWzLV+wn2Xv3MI2R
IJgPfbZlxGqTRrXLb/eP05dGcGNsaazL3cqHLZDXVRcY9QQO8CUrKkQmq3Q6rQIloX2sAymNXrnx
ON7MLNZTrR/o373wm2OR4QOh0fLatJNgkLme0fYTdI73scCIz6PIaRzgfZo8PkZIAo7P7WhIugw4
hcnJpFVflmDtnTnEJM5ghyy6gWX3jqrR4P6Mdlg2t8q/mYRd8VKvR6VuWSI13wfZc6Vnm1xX5/aP
vIJhK9r2TwtPdIN4AjufSnv28OnCOCsjNz46eKFGHDXpIWXSWYEoMXFNap5piVT/dpTgP5VdVFhl
xXe1T9pDt5huixu3qw6Tr41Pkr62nRKEAsdIekjt4nQnIdroGQWk2b7lRQKN2vqDs65N3PLYjgsU
JY+dmI7GG7Rv26rTvHMwyDDRyfucc2dYccIf4ZUdz2dho7Bo259e70pnss6MR+7mphhyt0mMMoCG
TMFt3Li7E0tJUzaTyTvLS3gEY7ic9lHNOFFqnZ0T6Xg3wy0AwKOe0QMyHPmAWN9xu3oTc1j5fs+8
bH7gw4iR4bF1JTRUkiWW690NdxwEcPcxyndnmdNWu2ZKvC7YneAXDdRqrjiJfQmyANaITI9VcD/v
PtAyRQW/bxb8GPDqSUq8d7HuyQQ8Czk/tW/BCXSLh0wVhTvW3PCn3p8odlBGkuQHXlLvcodvzgrx
7LU1uobJpoAvCk4fdh4Q38uAPtkopJk7aiHVNBrUWcgRm6Vm3w8XMnGMiW5ChfxEHlF3n9S3tuFs
++lIWZASkx93ciQjj71MwJ+idbp8mv/zZRT47i4sHxMHvJNsvPIussZWffVMVqHN9/pBhGJtiIxF
3qcBpRle4nF6guBn+s9+QQLUOTfI7dslNLekAgwADTpS0HZWw4Yh7UX/yI89pY8aZeTDtn0WMUCI
yCYXpIM6fQQJCe7wVgHhKHeUHvbegNqVrBq+hnUQHXi+dY4yCuTKk9vdhO4LdmmPMC5IVSiXfQh2
b6gLwtWrtNwKSNBm7ko18Er0hnGw19KajAoQnVA2wvOio1MnmfveMEJWPUtwEWjuLme7l+T8V+Vd
eZBFmzH+OEutmk8k4Yc30Eq7dQR3+ErVboGvbM6Dfm+sbCNU9zZef7UdH2lISRPnxwcHxYVaIv84
8KwyEVN4+S5L9olRg9qP3600k19KwLsFX3vzkQDPK9sOqkG3dzLdawG7haUSGua3TF0VAE7qKJ/v
qBH5RQgRrUDdUbw+S0yfZbyAtxEg4zipnQ0A6LjjOH06CtE/73kjcfRsUUOdzbFA1w7TlZsK5Seu
oFW+efs4lKMIWgrBUlXAlVL4Ez4+/8MdcYIbauW6PcMW+qmmiCmc+E+KnIESN9jct7JiI5VgoyAu
xBFPmd5ofh4N2rd1vLc+T8ehdhjtmIkbRhpEpNyY/n+jwIkAKHMh3lJGBhdWBB5Iz9zrXmaoqbq2
e3/NdRynbDbQcNH535nM1BC6SWubntlpDMIedOoLWVnTWjKStuYNyDirBmHbBgx3zRMAgXgXSrDM
1weSQv4LTEOTVVYqt55hwKYeVjH3rgQQEr93ffaHQk2LdsajOPhEXic5MCj/SCIXJwhfnpCpoMOn
bKJXaub+efEn7+tG4XSe/I0uCN/AbOp7WASBP/sIoK61o7n4M3wZHaYI46OgfdrZGF9tdWhdRJ2O
cAJ7FOexNKdNAO4yXTd48BmNYT477SEca04xHl+St/waTJ0UkZ2y+hbGHdgddMP9narUrkEtPhkf
yTOB1U+mpPb8noP/fC6Q1Jj2GH3VHOjhr/hTmo1T/yBOkRgpow4WY0TNzmpzxmE5hbYA1DxCTJli
20Z1s5hJVi0UpdPAp0lnzXaBRlfT6SGYkZB5JVfT3XrtlGsjgoG/3tWdMY9WdK2Y42QC3PcovyNv
ySDSTpRflvlfdM831ihJpAZWTAdw1PYvcWzHwf8973XY8HksfKHxwSTS+2DjUs8jevLNa6LG7fgR
Yiw4nm3ct/dGyk2RlyMfetDVS7vuBeyAkbT/KzSR08DAKOEpWxMtEScn6PMOS42C82dOhoDehQfX
VHtnArznyVNG7r1DXcbPSo5eJ6a4Sa1k4TW4BntFIJHMeKvP3QOQtuh38iO+8m8zm5v2GPpNVBfz
Pw8hG4NRr45kwJezIqH0vEpxGtGnBDECWOv85urRBFs4GfTRREsS/prDr16zNUECy2IpWeKVDJw7
KC2FCNZYzH00XadvQZvTLAso5RpcOZQBduTP0iZSfqBwZBz+Fo4JZdcpXLBinABQCCuv/aJnKQkk
+xrCkR1C7C4QN+8N5GDmL8kE4970WS5yGTb4lqQrxZQFDTGmQv0z321BYYQe1fRGRtfSY2jya9J5
P+4l9OMo27UNhw/LWD7sL3AsEtFYr9os86frBHjKy+WUChekCl+I2V+e4PP2A5aETZ+u3yLJJRbc
bYFqhceE1ZDA41VS0DAt2+v0oGFNvaH/RA5GYJw3J7c+b6Pt0JNx2qM6gKLEfk+pZxRm99ecE2hi
NZ5kMuMWitoOrp0VK6908WARcokgVTzo+zZILWtkSfzVxAUuJR/Q8U9C48fQCJXMgOxoPXVOQ6O5
f6wgy81ZzQqMer6EvTSK2Yxib8CQgX8PjBR0TdWndD2Gbk+pxIwMzSqgmBwWNuWeJ9AFYuZ8+WnU
1+Pwz4KQurOUh6QF1qQhG6B2K9nVglSYj5ZKtZTGlDdSXxdxOYNspreVNAOw8DkG8oO+NK5VDmE5
wl9dt1qFdN2ZIloSgkCuV8hky5hVOyz4NHG2PZkeJcJok/HcktzCd4MAWMO/0WzerUKFuN5KiStr
WtNs+rN0tfkkzOI/1ok0qpMc6x9kKX303e6r7vYOZ2gEcB6w/M8j5YMxFCNLx86ganCfqd6ucMtr
fb4A+gGjpdDJb42rMSeSpL6GMhNiE0QscGbXk3qglEcOTl9omokC+/JtieCgelYi7EHzC2ptk35R
KH7iQJrzD+Jq+3Fr1A9HqIbzcdtjH2TMHuBm7Q9f52mE4wX3JXHvjY+VECrv8ysyhHLc9++a/JBe
l7BdCWvdu47jQc+7xNYdHmor0fUFQBL/5/kkR7UltvO0k8IfYoET+SOa9PC0+cgv2X9qwkvKzGOZ
GJrnj2xZkjE3xxQ+t1fsxKhdQkaYBr92wTuHGPp7WoLFGpGAhWrgbGBxWxU4RdxhlCHQBhtLz8TN
kyu/OAua1uEb5bc35HRzUmX5S+L+RJZybNPpY+unmgQqHOZjwBiBzle5h/Kw8B4eQur2MD/ef5xz
RgqAaGIaLUc2cniDOojeVHNHek9sNs0eCUz3nNYUOaivUvrOs5FEh3mT+shDwvufyvN1RdNilOdA
3MoxBoHCQf5IzaKIb9JMX3L3ecX7hbpvybpB7ZIqh87YvOKK5VMihStPb78JJt6qwdAM2z4u0t80
cRi1+l7nKu6B0dbH6Jr81OmfNmGTvGN3phwpJWOd5egTj9isesDtY1ru529zvuxRmi2wEW2Dl+or
XGfbnvsRXnirs4i9Vml9BFIC2+++SdkHA2rGAnzX1wsi4dQxWttw0hNUrHmlGyBjE57J/uE7KFvn
j5wOEBv+ARbS6W1qDdbfDFotK8mwAFNBPVgSsl7m83IU2P6or1NU8olwKdS7zhkRqHt2rOzLsbWq
AXal6PNfToELjqCBE2dpvl9kIHTSvb/AsKE61+YELiB48xmtDTG3eCUR5nyeuAgGtT+WF8DQs9ou
+Dqaw9R0IqlXtWIvDDZgJTyjxlpVVTVNm8RiCsk3vuax3T3Ax8CADbfodkAwWCUUZLtR4zPG3aFV
OfcewLZmtMsQAULDTD2UYw5OpnmIDhdjSa0YW9shcSGLaCGyPorZ2cwcn0+mb3JN7MSpSq9B0exE
0dQqy61Q+k4Vlbj8kdzGBEclUqlXS/wNujUMFdCEn9XDH/LaqzXeh12wCjhb00Vvejvjf+LVhNvM
sBZFgayhb6xQpniYef6ytbljwDzponDxa6wmb75CrvGRQXH5ioSd0oVPgsk2YudxUw5Qy1MbALfF
3655U/DCsOFZEP+oHeG4l9kjGBTX+GV6H4rx3ooD2W8+HVaJviWuaOtl2zKJ38cmKqjIumLFRfU2
e4mTBkQhQoEKJ/fwLZ1QrRYv1doRrXRQWgrfq8Vh2NeGCVbnl83Fabst4HsjnK7os5E1btDTMHxe
6PGCHNOEmTKFVJnQbEKBuQS6efacQ/WwIs3EH1F70i648EdEO1/5WXLVhZZImoshK0Vrug7A60gt
W5loRW/QtERN2hQ2voQj49aI+GtA9dK+s0kT3onCnwYLHFTrvUU8hmj1wyFwB/Y12+rzB+rrQQD2
aWfcryu3Qk3KuYve+r8Skgtgs5fpDa/A/z1GYCgCe+boi/zEN7MV/18H2XusnMAjht5c40cvyTMO
6PcA131TJ3BZcUvJDsjnMpJRODQChkrbs+XZVvrdPbJ8r0x9xo6xOk84LQFng2hosH/hSTDUrpv/
NPsS8gFJdW9umVgFc2TFx2GQSV/f0Fe//8Li320DenS8Wf3Apu4rbk5Iq3cD5q+bMG+wF0YlvYDZ
FpTW5+YQnDc69bKhCi7VhR3UZH5JIn0F4t03LI63AeDbj/dX2GPH6UV5Ew3QdXqVWKIjiJyo2+Pl
83j4kYgoRRFd1IKpnwS/qghL0OpYNyFwW3uGhJCOvp3kc8Es4EKf6wjXJ5FooRbAwwbIfEH2Jd3X
I3zhyDo0b6+PF2ERmnA1ixE7ttFMyCU1Rr5eiKyZ8GxOt//H7+VGdJPgv0Xi5F1hsvWMuxc98upa
DzYpoRiLuQSuvXkqtDTS8mTAIlk+06y44mt0wWIhUuwoYob21fQQkGEKmQUGbQ1zDhJLaEtcG2AD
ZAScFdAeyx8q3HWMvTqtDZ79YVbjnyG3e5nWgGlwOuqNBcoPnJm2EKIlMYPw6t6g0ymVKt/RySWF
htALwR0gdiALypl561MBYT/qH4rQUO+fcY1I4j00kaxiJyGSpKV5tPvH68Jn/3uANa2XJfOtlfnc
+z2yCUbBuVIQmaw02m/0VlJsWU4GC311GAa9RkbxG8NH9YMGUWhmOnEfcoKOS5K4FzyFfoUKYP+M
d+bdnBexl1+6H/zK/tlh2S8gD6I3SeLVDjLCYw7wjyA5aGjQ3Zct5NAeU84G+r7qMbbcmcmkI6ir
CP7oURcUVRBY9nmCyx1mGBDusUAiZLNWw4cKwmU2cTMtHACeGc9wHcE+sy8/jv+n/0iz14kXn0Jr
RM5iGwfXIMAXoPw4g0FbbNTLMyeLIjtGbYjFZY5a8cBKnLVEkYZkiKU51D4F9vIgncLLQzk1sa8n
CxNMww2CguFKnAaIrdkWoc8E9jHg0vvrQREo+TLBkHBVsHsPq4otHiJuDth1v3wtMqBrALB7crCk
dmQR5Ad5oNAMzf1oz0VdccuK5wYh983PVbAZfKTgFFBL9uNzHAJAW2jDACEHhxAYPsW+ybWSEprX
1kHyFxzcjfbtVxO31+Jkwy0JHBtugfIGLUwhaJUC8K0cVba+5bRolcCsu2BioY8cwfQcjawo++WS
CGjUw2Pl27QrjIA/aAv3MulE4C8eRwTncpJrEqc+BLBvTkxQ+r2dxDxNonFhJOckQ35raHxZBX5l
Lna7L8TVmU0iZl5KyJLBZ+sym7dURBe2FTUtKR6cn+0tjNwGvWJs8E04b0NnefAPlJnYMjWTdnVd
3k1cUFQAgHULjQEvrO0ee21DCsG7gorIgoEQNMItfhlALtscq4UG5G8YnyZc1ncbQg9jI+SuMKKz
26F7m1J1p8Lszx8KjQir2XP0HP0DMg00RX/BiM/JyAtsUZuIvBKb0t/uzh3yacvy2gK4l65tw1se
2f38Zr9fIL97a47WEMHnX0zHV2mvld/NC0hYPBf97sV8gRdNi3X1RNYqSqhPkP2Bs/s/NpzDvbLB
eUK/O2wcOdPZA6UzcdIxYr9xRQUy/IuC1qAaZwreg7YZIRzsCT2nPAiK8ptGw5uOkgrUeC13z9wg
ZEVB6xn4CBbRp7asw131JrUsrCHvg40SaSvbxx5sZS0LT+IQQ8vZAjTmDBLrLxf9GxAfCw+P35sD
6JxHOpKWCQfMXHFbqsBv0WZXsGykhTI/vU/9KGH1Nb7NgN/hSX1AneaAMvNgMs/jt3ZEas7NgSli
HyY27/jXl8W35pg6IorvP3DKEDCOY1UUdbQ+0V4kJLgNlPfTYFsaCvXe+QDbC1jHl9qxIHtV+hSx
ucIJ/Mfie1c0Tfwxc+N0BJzePvCAeOEBHK4S7ALu5cET7rkznwjobbRrzKLP3xsKxb40QfQ7hwer
dtsG6z2voyvkJxpyxJAD8a7LNokkFkWAzDxwQ5vOSShCdaPkQ/09Bra9076S0sCuLpEft8GA4fHE
/aQnIFcac+8r3KVnDFndaTeSBS4HUpTJym/MIJ4F9CEtsxeUIP+i8qFxDgp8VsanJdq6WEXzlXUC
+B+QdlBWi0J63l43g/UhBjzaEnnPiZmtPJwwlh5tGKTxJoGa36h5HHAMxAoVpQA3oQC+TfxnK/Os
Zoa4GXYN2LXXEFE3xMf28Mn9fHRoT5fhVhhuBInmx/yaFYuBMQ7PxPwdjrmhSBNGdbEtRl1jNNAd
PQDW3Dzj2rA7A6YCGIXWJZstXDCKxOnoX2dHc/T5vU/8Tms3gXvfMCmGDjfxH2ek7i5HtfXt6Qg8
TSCtLVF6AZdAlK/mdQYHN8M7UbqYuqe+P20a2cdZNA3Z+yEoUpX2joXZfwfLz5QVJNn5Ulg0ga1Z
FHwrGZkwOQSrZV4BsK6PpsPp69HxRqD91r6s8GEiwDLKN5tCUgnEY780FDrqWCEXkiotwv/I7y2k
hT+7WltypXDMvMhdR/bMiQDlzzXjpkVjB26t5osOaut3GtznOtNt6Lq34MqBTZFjH9oMKfjYC8Wg
i8tUmrM8V31O21bJFZS0WknkWsAFn0NYlFVQskihSHXCCDOC7kgvxebAjEy5T53RPMbH4G++f0/B
lOho0A0WFfbj0utrgOQRFzXcRxMzgY7Nns3AXZ5DrL+rJgH94S6W9KiyxWe8C7+CynqDyaC62pd9
gGHaA4/oa7ufQ78+XIXS0YSrai//g3wgwhLSKidNS1gDXrBz/s1QNx9X7S6U7298fW0/0wR+XwRR
efIH1YC+j3pRS5BNbOm5mlurjfAE4J/qVIGzC32OEEVFngOrXkOVQ0cH/r70w7i5kYrZBv3al6V9
WIEKHoM1ix6me+QY15kFRun5iEtOxLbjQZ+IOlh78YZZZIANlc6C9v1x95tn0z+OasVqIv0MM4Jt
ltlWQgJ7Qim4gvvKiDVOR8g59kxmFyJw3M4yGkgR5vE5VopK+oIhu7MLLkToECXv860pgZtcVwNt
ljwtTruQa3TIGTecist0+tx2TLmRNudnvN0KIto8fXwpw6d5O9AmLPJOihFCxyzbj6UFjaQrP/uC
EumZ0eBqN2saWkHGrRbMIhpcXTp/fMVu7j7QFDdUgDB24859Lep/WKqpfMFI25rZvSZEpoNYv4+i
kyBeVmTRhnlNT6hc0BMEXmi7Bt5pbHU/Yv3aDV1rF/cTBjJ7k9afBj4CWkeWjbOz4EQ2NUJaM5fr
HY3yhMjw4Kt9ZyoLCvOyq01+f3uPaJsIB6ZMM52mZRZzRr4yl86+XwyvoHkQ4cMMPNozUX9d54Ol
2yBdXnLVgFPViEExgsj/WuYFPG0rDGjoKdBMQpao0eyEo9NHxofUGP1pscana1uF7HWHIkhkzkxn
S8NKBCVQgsSs0an79xrUhbLkfbtSHHCW3veUseurl9aZuOp24FsXqBY6ua0451P2FcjwGD5lgPg1
nYLKx5lU7mrYk3QD9oGkbbRsz4m98EJNkGqXGrrmWlYhMQxgaIkhSx5u5UwNzSLFPo0mzO1vugm8
Pqn5z3lvoV7//sMNq1qCmie8zXqxKJKlLBQrtadDbpV5et7rTviHvtkfk6A2SbB7j2+fZ9Yn562Y
wx5hLGXgYSJhwQvUIei3HCeCAHVinPW3WKnQdWcEFhMbfLMJTHptaMPScMZovl6OPzuWXKsujq+H
pCV8b/6oUhqGskGUgfVbFQ0z+9PMe0E7nGMzUKslRfxutBNdE4qlK3I+jPUzj4cPKTkQXaRLDQ9l
rBcdiQLQB1DvEjhWIL4vFP+zWW1cETN8WfIjlbqmU7lo813cgL+HeE2cDBkJRuD93xrZl/n5M1I3
h2ixyI1d6vP1ECJwQQa58bhvO7lJhfDQqi0JG/VAa8jaOhJIXEv3J9uFhLhJ033X4WePqyxEaGV6
pI3H4Bf/AlTBtxmBHcvHL3MwjXwsGSni1Mzhcr6TprwziSwrgiGxaFfLfqej/fYK03LojfcFheMK
4HhvkBPwb+e4XkaMHd5QWPN0DHU/QxSeonYCjA4ya9k6qlYZRHgob1yuIdIATY84f+oLH6X7hOK4
eCNziqrV88G2IBSxPx7k150j9+iJjHVlot4aMZXI1DOlLMCG1uhESeQNqYdKCJJQozU7+ARwR9pW
nzr6K+RfMTyNThfGSbxUKXuJtsgEPb2BEOV2HggutInQEYD7QRNYKm0rZ1fvcwVJImx9pj3cFjdU
VD1uj1hLvd4jfhYXtERQKnE4n0Nux2K9rdSd3B/GEN37ii3kmy7sL87rgdTxRY9lty3VR1hd/m1x
BQMdllhHRa16OHnA/KQr7iSp3I+v2xWocQQc2fXt0IXgRHBu3Qlm6/dnWIi4lFQDdrn6Q1gLSEq9
AXEjvIAXakviWCMnUJRuo/kuXu9iKvqxN0QlRbUrGMtDs7B8ucI/Q7nnb8OF8IZ3GP1UfJa/T8YC
H7LqXIHOF2YeMCVf6Pxbc+IGjFpNvnzyMEEyfbbBj4IkHd/FeF7WeumJtBhNXw08+k4brXRG55kY
7Fl30rBRUjE/jnBFm2tCISqFcQX30KcteyRwpr7m6PFT4BhRpOP7TXynNobFZaRJFr6jOf682r4D
hic0YLOcbLjYBm124wkxD2t7rFfVVLZaVbH3gl2vPzu9lvOVe9ZGBC/e3MHEjkSM4MxO/b/TYQln
Wz7C3Pai8DqTSOiTh86tJtBj7IO4ChdluB3RQoQWEK0YUpRJNmp/cr4BjYl3QI/DLRBYoYG4fjYT
QudyUpihlH/VkQXqv1aX3ejGrs0QSXxXqmsD9egRYdAV81YWMfxpSkxmnBHfU4OW8ALLD9b6CVnE
K1NL13kU3n0iSIxA6Z7Ph/FaPwIaWHXXnGFixplRl277Y4h9T408M+gC2bY9yvQq/0Hpx2Fe2HBH
9LF2EMeQHJ02gK4msAi3BAzLM4ljs0hOwLQ2DpIYMwcygZRNixSNlcypKTNMOjlu37Gy+aj0bnOB
nxEXUdTuDbCChRp5NdAIjZP5NLMEhWTWj9tCNkfaT7fylmkGacnQFpaMw+swG3VAtLU98Dr0TsuO
WHk539Ijip7Bc6D91/bdKKZ3I8PKB0x0z4uGpC+DtZYc6FvZNjy6IguPG73wAzAKFsNPhRezURFW
jI0bK2VH5CayLFPuqJvotiEQviH5IA+GWuWWYcPQxzHJVctSbCzYz28IGabuonyqEVQ6JoZXMp+/
VTF4RZEXQ/bS73rQg6uTY3hBVOlAsqvfFIUrOACTAPv84XdFUbdlouAt7w+QKOYyNcDfzPr047ld
IgKa9aNWla5j6nCKlek/nFXCixmpKHfnL8ho7NEJShuqSyFrmWcUXsWCHctN64IkiVYQOtJWxkxN
cGT9AwBfJpYgilgnBEgIfrO1B1CyrT/SaGh7eSAwErcsDfau4ZVDaFzmU38QYskcLcpMJPadJQBv
5VFlz/phTGE3q3nZQP/2Ogk3RhdOL6772Y6CyPGTtjQEk4P5TmQ8Yslt7KBFzw63a3LQUozChSq5
NMe0huD11RsOXTo2kodwWFGUxALZLv41ZT6KOtks0d9yx5fP35UQjbJUtKF4wey3Ija3vGfi6UmM
MIKxGdL86wkVeAj+gWaJwbfowvPqUR5cdCpL3B/2qfhkp/5AATKBYGnOXo3XdcAKcnVe76/805nu
Z42zdTj2Wad/dkqX4heynztde/Yd3a5L/Ag2p+9Oyl7/GtF7xMYsfeFDc5JXeDVRxJDcB95McV7W
kDpFYFBz8McOqbGa6yjrI7uXJEFo76xIngPQG5sMWQV/zH9vC1RfXB13lEPmA1A046JbMX2X6n/2
b/Xl0y89AiLWTiQHuUbbw2kbhXG/kJPM+i5ACiM3xK/j7Orq4AM5CpQNRkl71B7SZyEg+QS2XpZU
QVLWKFLGk3Ob6FIgh0zvay2TjKfAHe0CxUxQGpYWkYJICN66xmrxwQOjkePA2zdPCvThBwQSuKdQ
uVqQ3M+mHqL2LiKhj2PgC2D64Jp/lnBqY9/9AJqiKQ7cyqz4qt/ErseQezyQdN9PqavaXiJAJ7Cj
x8LFJpsSV75z7sEeWJrls6QGvI9aFHMtuJF81AeUvoFXlRmcO9pmcN8J4SLNly2wxnbpkXmTDm8t
DcwfHTPleNzpAypST4pZf9NtaJAvwjDFi1Cp2xbW4RBau3QrxRIGWwpsJJPbv+IXNUmlc87t/rPv
3S4alwyROYMfsZjFQGr20CUA/a+OZq8KkIZVz0MMlgDUDu7kkEGue3AB8tH5Mm64c96xqYEZzbww
8jK394yMATSRxLihL6ktSKdlY30BxgzkeeXzZaB7Bh0QfNAVaELgXetfdvzoiGHktH6VxclpHC03
xQ4IzHotp7JdZyUuissIeUN9S1ENT8RjOCCdO77YGSxep38BqSo9RYjyZ1J7TvyKE+7wfcK+4MNX
6t+B/LK24Mfg6IVG80JfhPQSO+D1HUUnHhU5KjOvFgjcpMK70uYE3c07w0+5qUaHgqwi4IohTjsK
9S4m1iO7xOUB6KImSdngpOknxMeW6boDjFQJZdVwE9DCt+Mzr6FN0LADYDgyK3/iTBGg5RnDWHS+
WEaajpMDhSXy3vNwz4GFPQrekdQnuMCwVstUsJezzNhpI2jt8ohAGUP7jvCLNM3goTIvVp3RC0P5
cj3x+tigmw4PE6xSVwJ3bp4BDU8XewAmdW5tyzCcr551AOP2jwFkIvW1zh060aC1/0Cj0C4Q91Vl
NuonjiPJqwP5IlE8D/vaFblvwuoRscO47WIngUiZKz8p0YxFDl3sA7uTiCq0gqLKSfGAP09fGEuK
I3fp/aLqCKH0U/mDWbW8mxdE6WV84nPui696caaRJjyKC96Tz6moDPKY0yF1rkSVg+I5mJxYZIja
NMbZpwXSU60zrb0i6A/B6ajGYYQxs+dPapBFxbNrWxR81EZaHT1yxrEnpokmrGXDl7vCIqnjHpaM
gw31NG4KtOs7xPMUxEZLDPP+laFzULHFQAnUCOzHY/E1hjYjb4dg2V7tUUp/ojrCWYuPdjTKRlRK
2ekoeHmjlhzSaz/Jv4D3w4FcWc2rRMeitJL+cEi78el3Y2ml76H6iF/YYhdYRdXOUJxXrnYedkhj
MDyOVY3TauMYnO9F72DHDkg0cFzCiFU/2gn+HujqkQZI7oj3DaECAOvSvQhiSSdpHB8HW0S7Ldm/
OKJH9NJfYvrKFtLpSOb+e8mo2exHXSfOtioppsGA9G9No3lo/CUeAoMRj6KXSbiaVDIY/jc9B9nB
MvmhHKrPa43zYE8goi37AuIm8KAJVdWN3w+3HkFotaq67Dd75nbZPhcWpkfAJY9YV50akHx7qLX/
QoCRdUfd11GKPb85i+S5snUZ9ENt84pqMLgueOdpoV6TL/WFFCBOOwz9TuxTr9rwpfIhgjIT3M1H
2fvY5RAvVPijU+Hanz25B2iw/CtpT4g1K8/g7nQGwrKUxhKB9IWo/esua1lXBLPvZGeFSS9JG2WL
jHOSMO/xjx5K7GboDdWjP+LuH6Qc+FrzceBbxQpHvIy8pgteGSq+XtYpsV/NOu7MgtdhsdcChKPT
ppszfRjVpH9PLbVG3cX6uQPd1opFNfgjOmgOC6b4smK2T3LDsJ+XIU1mzTSnckYT5rG2ihZSQ3Bm
Tkkv+CeB06yy9G6lHnNFvECxk/ck2EszJW7QpSx9uDAABZD+wQax9gVJHEvQ4mrfWBEICWDDkKlQ
tf3wm5y0Zmq/FSZFVSbLj0s6MMGzYqrlYcsgkmCDRhaa4Ij5p6ka1x0yxcDSh6NmCFmm62WFB1Y/
KJmN24jnH7wTWxCPjFuCevHs0TyvYrSnrXvLYzL+wMh8oCBheC4MhlwIeRPmYpUxMVu0Q3fUOBhY
RmW5bPHhtigq/mSrx7TRoIAB8eaXLVJn090WIXB7/dYreanZYZxrjb41YT2PgzyJ+hKil7N+HcNc
wO8rZNH6aR3bXPYj1x0iLF9VThP7fmH7HUr8GeMnU4okeWpTglS1ssiOhhUaleuLQZi/YsBuvctc
QUSd2wnmogY0hdB/NazVlFysNF6GAmAKfi+mQqt5KVZVgvaCoED0hnPkleBTKSnwgJsIQ+NgwKzX
5A+q1AzL+xlTNdfxB87SZJn3YDUEDsyC+GoKhk0rvPtbAxa1TeErkpQBmG+JLyRXG6gmTZpUuzC4
O6UnR/I43T/YnBP0KVxWi9OlgRTPAICh1P6Uli25tD/gY9chsYdyyKb0c/lbJYEql5HEHAE739vY
+u8o8ym8a2mnxZYRveSrMzEVCbeaq8gY8zs9GOHwf1HDqfqNUtmkXgKMRC29fgyDnYmi+ynpx1Os
eK5oFPToT07xrvn2yHXQF9jrz77XsnuJgJV6J9v13rDORrXXlmblRSuTBgDR9s3Tn2kkxS17gl1o
3aI/KETdBrybYI7HuU1UuL7lhneJlIg3AQvu7wVBNBD4WaRZjIQceh3OSAVKkyVZoGGmXvfR0Nb4
dCKY8eQToZTK8iO/FNhlIojyiDgF4qR0Ln5jLScFknGTSFfAAb5YtKK05ThSgqXrmHpObo6ASiRN
Oe34nuosSm8g9DfQkrzS0gFINCVbCc2kyiEA8MwBru78DNEYpXP9KfI1ViTqlySa7zzM6/WqCSZU
S+7BXOgv/6Gh1Ao9x2kXPPOOKtAwENc+MAUhyWeFUklPbSyo/tyc4BWEIzvhMV7yChwgd2zFluR2
Zoy8qjtLCot23SJuK3frNNpnibh0tR8KOgrZlnvPIeYhGKyqyNs+fr912v+hKIOet/ozPtXIvyQm
lLAmf4KLc38bR/W1VSOVH+nl2CYDqsUgxq1z4dafqC1LgTgE0x1b8A1NpGn1lQPz0SLmof2n+/5B
oZGUyEh99cH4rq+1FbwCODJOlDrN5krFrdi7rTnf0JqXdKEiGMuy+2POO0xVoIZjHJ7T8aizg9AQ
Nt66d0QyRt0B6xIWN/NCrGLiLKI6g4YwSolQAAHg22OuXHbws2vZEHa2tgMHy09cr+xRLPhu6zvu
iuOF0vbhPjhipRWjOyfPx6isxx+/aooPQc07hNhWtU3cPOTVci5ClsTfjc7h4PAQPffdA3iQZniQ
4XKrGf0TN3mX90s2xY3JS/UXyS+T+2deP+rQrHdcwcLkC25zH04mkCpjSySZn3RDuJ1MbPI/4Woh
MnQwOyx1pDtqixXTPppz7ZXnqV/c/jaG6wXdLHb2aDSYqg/kg4MyuUa23xwwTbCb54hj+2IwbUmZ
duH4HGfDRUqR4YkSvoWAV70qI6V9v5KLVmehNmDkwvJsJfPyfWmsUytzNIEYzaX03Or3XyZlaFCa
O0nIMcqA7uzPjYld7+w5GVCr8ccwymlpxgKxb2BoauSFNltJ81lUeo1D0cNQt6DSRvoGAkqndO7z
qDycSch80ug5frZXzOM8gEavPqnqLUWYF21KIzHrCBxiL8h0y/ceYbgyyPgDuMzj7sruH+FiHOdo
CxGXTKC3P4pBKPWIWLJbidEnDJGyjGT/tTUOYTEgP8LACal/7CalJQKJ4ikBEZqJ5FqPiDsxLnW9
RSYzLWWEUHpKOV6sRaJhCt1dEVwBBdDIn5ohwQJnDNILSCRiaYXs2gqDSQjNUpaHf+qULpW+2SBP
cjM2UWfe7g5ZrPCS91qfcZNDtiQ49Iuc1PfMEp6CtSj4DX3Atu4MN9CmKELl9mcw5NIAGX4n3kdS
wjZiW4FYIVNylrmCsFfRm6wKDWRuCKo11LIs70dsWk42h0oz6biWHCzVRVepKKC/nxYMu5bEg9Mz
k94q3+KMWUtygdCawatgCTSXevSxMtfVEP9t8wUe2+5mFGaPyqDU0PM5hw4ttbrx/HzgRS6UzQwJ
602tdNTG1S94v0+Byxrt10YJnZfaql80VeIVknaSIBErENbtIgT8dRHQALYL1RE0D5dkUGwWGD7J
y1qZOoAsCCZ26n0/zjF3hxFRmK/9VQoiSOhS+D/s//5y29pX0kS0uUOgEjOclirt/6eIEhmmdv7R
+3Fd/5OR8IJ2ZBaY7QZ1YFGPbDzhjjyLTgLDl9VFupWsMUFW5RxmJ5shAQTs/YRbAMCHHTe8yBUL
5x0GfEEpOkJOzYj9h9FUnskvndxH/V8YJsBz2GCVqIF3KbW1SpTPfqmPVCpIg91qSgvEGQd6ZxDc
OP98nvfF+Bh4pUqXsHZxKvNcHM54gR/I3N9eSOXTOsDRqLL/NRBhRGpIjlFxPMJfdAavY+S3J15b
R2SbGWmgm3yFp3VtHtuYl54KwYSSRU0tFfJOKtpNrLMX/9psI4wMGYCYOlXHrcxzDx+nfBN/OFX0
2be4860BkiDnejOnvqj8vfElLEnp/fUFOWCGjEnXVHLS57paieYwEKjwEZCJ7O8ayB8Y6mw8zBmx
dJ2Yshq1QjT5OSY89uH9JLsboZ7dPHnNEoEQd3kAUURBTQ8eKvfuI4JwOiWV7Jto6MfE8AGMFhfP
EqAjE0W8DpA2jHQ5JvIDtzinlODeposmBCOSflgYlqxpy2NxBjgiJfuyijN4C5+qcUdNUx3bU6eL
3+eZfMtW/xu54zRQFRnn5K6eG9deL97i2qqqvOFunp/L4z46mKzU+O5JVsJEa88NseWS4S+jbPVd
jZyLnAv1XZ9Kat9ZSoR/4ATZPWO2Y/P7z9+csSZrhKu6kC2RpluO6O9CpM9ZphVj/nQ4Gex9Wujs
qBMRF/wIWSmUR0349spdwyquXyzeeicFHMtQxSwI+6IQEgtqoJAjl0GeUXsy43Drd5joXYhE+A4+
Dsx5n9EAE13aAkETwW8v+m1c17Ux9I0MOuEjh+opbyeQJUGsHyO7btzL2/bHWJHHK0WA0v6NU+Xn
uq+hdNBQYXpugHG9km3yzIUgaq+Ln/3Tr9oaB06CWIP1vFDCXQVprut2AtgF2rFr0S52Bz81WhuU
k2bkm8zJnd0WeKaFXPYbuyrzUQufn69/WOOdgWJScV3SJIrKi411gqwEzhp50naO9xKlNZXy+cmC
LV94xXP1yTg4vDeItY77BC5Uni4gTmY78TAG0Cz4BAtIUg5uNd6qseULBccgtd5Svy9ZTBecLg6u
Ggd8v9ea9sdFvflzD7wsXPqWzviZ/VaTHKjOsrOUWj3HlMNUvIF8xwiOmzB7r9DLV+RT50c3MUnn
d3RwveO0L1gAVHWwxF+thZCamhrKDLPDK5AoFLkqD7L439fYkIIADmnGIj9m2bNgZsonMFMQ11Z7
2aGMBBuSWxXySwA/ugvwnnoTAFLlEQ2W9zMZGzcT3om9m3WxvQB5FvqnkO3JExtXWqO4GWSRiOw7
Lsl88bG6GLBcBkJR0rFcd6Wd+OvhTB3nugCjwssMSKfZgXBiuW0VEJTh6qfYEXeZtnUIOQDc5mtn
9BJpjpvIqsIXYKXoIBD87+0R7JPDjhqKsWj0NRI6mQFS9BxsrINTlRn8I28LKCuBww2WUDzIM4+b
Or3mHFMx/yxZhsBtwtdGzGcfc29jFL20nQct8TvKGhsyxzKoEPQNDZzy2FjTCGaFVcGtWWQYlEzA
JLpD6rNha27Zu+O6KAj2h16qzHNCyxk2u5D/+DRjSDyEabS5l9hftxMR6AgEzd5Q1WZCnc9Kd2Zj
Oti7jOzPtp0kCrFsegos1nSgvTIeRjh5daZa/Cj866+pgc44SZu5DzLVmvGUWOxC+uURzs6TUeWp
eh0HZf5DP03AseR/5uhQvctt7oltX6QtKJ7uliPgcrWoPTlU/OTfd1+f6Fq26K8tOAstVoanF/Y+
BVf5u3MC1kjdMBNXNXnyNp+KBV0HuiEOh3PDgVozPbnmFoyRJHzfgLzEXJhAiFQWADMNBHK+Puno
GEvvnQkW0QPVzlAm5QukE7Ah7hOHn5uyreCKkba1AJu6tt64veiMiEGS6Wzc99GmvLl4/GPRz3QI
g3NL3MPJ5OxE+fWJO5sY/iTP9pdbpBiCAdwR7XNOhvFn0UmkouObAFTKRaqgNkTIAfGwS2GPvXti
EWSRaBuLwJW9hmkhUV5UViYEE8T8gwO02IKjWtO5GrdZIY6JURNOjxCRCjLylOJRdubVxlxh78+z
2G+sUMgAF2+cqsN1fveL0nj0HTB1sLI8teNUfddZQGmztwqj2SPzOKNI9XbGkL7JVlOpBU/TG5ea
mz8k0NDELPhETvfNemTOSGahML+Sa4GOIB6A+1KsJ3pB5vFDVJ9cfR/p57ePe/5x3Qhp+xMGbcxF
KSpgBGm/WBzooGuzmUJPSYvbn0G7FxAuMxTq8Psimldwa8dRn5F8gQrsAY99vMFYBi0r+l0aYL6w
cpkyZ1VE+dFiP1H8ujJZQlGDMDlDCUTyW0U2BRLMsALmO/l9gS+NtHH8yNwoWv+ixBJEbkBQMOWj
ufRs2zudYBGIlAnfgO3Tac+fv4Eha9ricpfvvmft14VSO269/7KPT1tJsfY4pzGwDNXpLcsepDtq
pYkAofc4E9MTzWOPhowmObgMGyAy5h+VIeqHq8W7WyU1nxYncvnguMFPJ3y2bE+JdRyH+svDnZuR
dKKqfCfx9rdEReAE8C2OwAuj4+vtpM+81Bn16SDhcczl1ir7Xg+AN4lGkqSP6PYzkmPaX9kj2LXP
rSomX13/LV8tOCV4xDrLbZA+WwrHeCyHgd8a9uNfrizdCCCtN0PG75biOHV6q02EWGUH5d64tkxC
DlZwrh9x4n+gqF9jPiGa9lfnAKA693NOaD3xBwlH6eJsstsWoMnzVGHQjxSCNSXqPqp7tyulLgSV
G/6L2VpmkIe2vv+Dx/J6nZ2dhIjgIzVqka0k90P/u2h655ZviG/w2Yy2P2eYmS5ANZ8k7+N6FrUf
4JnDsM//fhTnMesiNnGeU3igXkyb/iSv1rCWcztY3fnXXEneHn+S2DLeh+qUUG/qNZfe46NVvYi0
nou9JbOq1xr94pTpjCXxVPp51j3ow5jTxteRA3kfHQm8lROVAYZZGQj35NjHbWFEkyyOSVj+96hs
6FKgDo01N8vjnAELoM2da1TVslUfR7LgltmbezxXdTZ2pvkOT8VWaJtp4vwqSfBJjzrubYFHQuiq
2MsRZi0P2DXoNo4gh17UJMn988siF4y1x0Lp3hJ+a573Q6Eo35FKfTi6HKEAQHMbrn0hzlfyyP2m
L9WNw2NnniMu+zRCDzdOz/RPkFTrGlf8qbz6pXO0NrR8sOOTYk9eI5Pur3bE11ykWtQzIpz6Kf6T
LXrPDD4tV+V+DuaxJ2LKJUS4WSJ1ilGt22dTNrvNlhvBc8Wa3jLzW6LQiKHd8UpYkmNDRsKCBR3V
zj4E/oot9FfU1lwlBTifJ7TzMJB3d5GYNatGGVe5PFVD8ZnPqrscdgiGGWw2+YDbjpWm75b01yiG
uCdlRZ2GUBQqdpvGgOzSp8h4wdp77q3hOXOFMbw9/TFwV4YzP932KzJnYHUgqS0WrmqESoKOrFZ7
T49c19BVuyfMVX3ncE0t2Gr0Km89tCTuqGAXXsyc0tCSOIgNK1cyXJfmTv2bLF7gRb3B/Vppq3A6
TjQaT42+3E8ox+qa0raD6LV2uTM5m3wfriAcyt4KODQQc71NepRzlcCtjfbmm47nDYG09nnGiJCZ
nOqfUqz7GTX40ZRSJK0DJ+NCc/T/C0u+4ZtbJP3DVgG9b4h3AKBZBqgTIgx5oX6LSO90DeoyYeAS
T5UtKiv6/HYFXMlxV90duQdiwC4U+6ABCpgskD2O8yqRt0CUpvyt7jaALU6yq/xUfoACrI8C3GMs
IUJfCTJmn3bJUq1tT+kpr+b+L7e+31F6p6cYOFvOYfosi0YwGEAza7fxRxHasBu5noTLDb6/nm3Q
pGhp4jqdLXSSmlH6kk3M8WqKwxhm98mUgRRqTPswguja8KMozjJ7ik41Ncdm6F6oI54+qz8IpniP
rmjMeIrhXkR1wseSYTOzRqHoGs84SsIO/yF/FKU/kFJ1zgchxpxZqLJaY9duQ9Qz4p34HKSEVJqm
i9cwX8DETv1QQZWlKHDAr3SmQjX9wnTDynuOiKR/vaaW8ejWaxYfjo+p2xCPFICvN8Pv/M8dKh0a
7qDO2SOmnT7WJYwq0ih2GjoBZ5MLhLItNKo0ivzthCfTgMjXC8eMzXAdAl7JMqi+w8coJ2wxHpLm
FmZYWZo8wW3VAj7WcnuBTMPwHA+Hzb4wZpNOEFF4ayr35pR3M9UkajZRp6S21ntUE669IJt7t5kJ
GFNfYHs4z4Yj/AW4nqBBECRwGdajLVtrD4BjRodoh9ns/0DxdYtF6YzzWhoDFt46iUwP/7X0s7bm
diR/RWRcTzdQwBW1SqkjkuNw/T4UR1Zr746O7qEhI1tjzZM4MBAZH6FbU5X75TqvHDh9tRndWFCQ
P+yCFPxCJz9owDFDIimtnfE9eY6e0Fb1Ujs24vFFk/WrQTRRLzqNX2GCpJiRj1fAASvhm0504xKS
gX5XrMP7/6pAWdvCFfgWYFMF5SxaWBGNNANYu/mw9NaQ1Eapau7ehmbNybb+YtTL+PGt15XFoyis
1fcx6OROvwRv2DtoOWjG3GWNysCLs89HFmMkEDgWCn1bDhfwecno7kvqyNs3aLg56cUpdMDNB4No
rDJyyLxDHxyx0eBBDfqNOnd59KrzB9rw5V+oJtCh5wH2j6wgp5qMfWyYFmkURfcq9dETIjqMBu85
LGHw8EaBt0hcnTbXgTdafbRvZcpvrzWT3+5fCe4fXNqG9Eg6ad0MKB7daxzzoSRXfYw3ah4PR1vd
w3PtD3n7mS55QG0kAuWRVN5b87y2wg0lZUxuSTeBQbD5GU6G3vzCS5xbVCbuNXj0JRL31m808xi0
WawQ9PsHYiT43SJVRyP3X9AQOur6FZIEzHCcNfwx/bqSHOpZDLhh1ib+9mE0WDHeX3D/EbFQbg0u
HTDEykp5fYGdcEVsm4m9Ykaj//K5FI5Nas5eOoRn2EHkQc6vugO13SuAXyxkmF+8mKarkvV3/mfM
CoAzMV3ZNcNoG/iKjJkiuT9OBJJDFGgIqaYLmqIcAcBlYFmRV1Vqb1SXAEbF18gr2pRpz2jKZ84g
JJjL7MPVTHWAbHcUgMpkp/CQLYGY3LQ7FOQX4dPDyzyp5mv1FYoGqOfj5QmVDikI+Q/SVBx5r715
B7LEfbDPH/88xgk6qG4aaWdDTzHnUQjAtNZ/NoWiRu9iSM5vMb0mD3qNqKtIIL5g/YZKL04r4HKO
jXPBJQmoEyD8egT7W7Lm8mA3Rex0/NfQuQVwRh6t2r85vu38BuPZbWV/jpRUM3W17uJht2b0noUU
A2u6SkeRB5gsRBcYEGd/K+hE0D903SSsT/Wn8DTb+Ikf79+JwWgqZA++WPtkJZxYsnt+W0WoBGA6
xVTPIG14iT2GgtazjcSVQrKI7Fnj69gOo29hwI6idIqWkQusJ4fvgKS8O0vQVdxKZ8YFdHB0rXWD
dXKz2YbXNUv2g0iG0mevBXhIo19dXJpTbfgJsEnr9udTv88HZ4ghEvZcG5XC3PlC1XLwRz6hSAQG
Qzg68F+LiXvtX1EPbnS0RVxOoMm2RMAgQ5I4VugUyWvuSkEwkvKY4Crk/Y9Zv/7cbrzPAu000nr2
Uy1JDEdlmQkIrmrsKhacHhsgGWFsCrEND+vkw4kimzi2ppVUAuId8RdSBAivei/yVFpRcuOpAh5H
iPMG8E5jkIW1wqva6m3RMbxO2FJNGuI9BKVEgd9n7u1hjjI+y0gVmBdIy6YF89kE6cf+tY+hpeFM
oKsjhq94/1zeS2KwKEkw0AWHFod82XB+w1cS7t4JQdx92PmJVTfA1e4RvNcrBwSdlwkSKM7EYQSR
ZWfuQh8Ck8tmuu+ETGEKodSCPEHy4KEKN2hUlV5UL2ZtA+nOHg+cBAUlRmy++ZbEidH3OO50lv3C
CZ9Raq4UjlvqI8Y4AS/VuRFK9gItzRvbA2GaFTJHNu4XwE6yYwDh4tFjKCfBXLGibPusmaG8QLkE
be+ZUspr9SuDzd9gbhtEHhG0QWgwoHhD+ebNqTIG1B9uvd+AjbftcFwOpqMUxggv28atUAP2SA9O
AEdoUswWONCg6i09ixYI8tqoNY1KhvmD9LZgsw6G7ptIoObeq/bqriUhxBvJwtlyb2XpSyuNO2BY
Sv/m5BLyt6Rx2cRNvP3dl7rdx7TnaO3570sF82+hrXMdwE2pfoSQq9TyzHCMwxdrjWtFYajJjWcF
sKTfs4AKKQuAvdzB2Tj5+nplOXSIn7LRY4laXDDU3BCq3ubcg4BZ+fqfcQwhIQKgh/LqYRJ8yq5M
eG3N6fDWX9kI9ALIcFQ5SxA+k6+rkoyXd90owQqNWfPUihqTU0XzJMOFxo6Wr3N6W0JTixV5KVVs
KX+e3acBOxaSATcGXllLa3YH/lXiem6lukKid+h3bEqDY1wtT2zcvSjNzosns4DgTdJ427RzN2fx
kjNeuACJ/v++h6iOFasM5+evxV9Ir2osGuaDfrBOdljm6Ofss+QLe3NP4uZav97Rb0MRP11MoEvF
Cffokq+HLB3YA/ouC8NUUR+gzgKVq5QainkAheEh8f1rxcaHqOXWZG2K3Q9vjB4GRw4zEIkwUpis
oSw+FIni5fH2pTdh2eKHtiObeLT2KT/t85fEyBgHcg0YZwOdTlqbSKXRQc/ZPHxJM4z35lbbd4UE
/9MqSrXlgO+Apva6yKeBJwDm7A4DgBUeBBJSW8Xkp+8uagINLWKiDzDi8ahfd8HqjeCS7jfP4foD
lIjl2qO7IWXsx3hheNlqsOmMC4Xs/FXXEyh/T1J2UcnyM435wSaZEwDJ7RE1L8bDrgkPHzYJEWte
p3vg/XsNciD4DqGE+wGbsfZ2TRjlj4e0ahkIJiOpnvp0uuLcvjV6IbmvJ0MFV0k8E/9bzWWcmyNS
5RVkMV9NiXguFWQfpNILfcLoTNMqsBc+HjimHPyO9TtBZoGfinvxvtPrRGcBddm4lGxUPxXNFjv6
qGgMtmtn7ye+iIF8IloqAEAL8br7XO535bvA/gUeLOhruBq8qUWI0x1Uu9tgkPkxN6UIvNRxYYoU
QaT3l78kMbqzWCRmFq7QbXBKBa/SIOqmEUlYrjyDsBqpODIdSOl898DOZPel1FBZewEQSh8VHoRm
kcmZexHNg7NUN3i2ZnDsFqJ93oQRsIe7QzxHHClEFAoD3AxN0x5zm9mYH1ton7f1lpjp7XNk3zmY
cgwq/ay2ZAdjnqriMjYXr2GcEg8R5NcP9ArSZWVt8mg4oe7GfdXj/CP4pdN550VKOUcPgLiwPUY/
dhQsqzpJx4vYEnXuAERn24hUDLOk6LnP1ePmOyVwEWB6kMqZeO59ytC5G09BhzQD3gWXbO55B5BE
Rh6lfM05ytcdPkDC8sXHdWUcOjhybznie7dRhByHYzIFynhT5Kyh66o429VYQYArngBZucW9j4uV
vx8TS6d7dTir/ZmRnnep19AP6GKcq8SFQWrWKR+tWexN0sqzX8l5yaesgD8wVPUNcycv80EQ5LfB
19Y9LYN0ywK2iYJQBaIe5cayyNf+WtuOUSKsrj0Ooj0E6UrkNaDzrUTFNfDwA9JxE9J580R95A+E
7lb3Xh5w0OgR4xHCLkAzjKeJWnMk5WIJKVm+f4Q3ifBvwbP2ldlJp4n3ASLdY31wZjWDkqdyf5bl
M/G3Stqt4bA2L8NPAtYjefpgVIxfJXIes8LNcokP1fbDPUMaN9ZX1pQ/NtROE+KoyMncLMX5SUNx
1ffHvVlc6xG6CdTZSrsq0hwEp2D84KzFfbQoLHut2V2Gx3R1CbSUrLPA+1VKGuSsnejMPVV3lHI3
f/Nr4jgqpu2DFdYvOjNi2a5uL2PQIPN1jTQ/b/eWszfETpXnqWwSNV61gsxpyuIeqM3vk2bNVORh
8oeawHSgn39Ij5RX4Svh2FcM/1adsca1F9yiQjZs2LDIWwvi3yYgVGNbowIhBTjnd9eG+I2dyMAy
HHzpHFcNPN28ppXnymiCnempZxXrwelhGz8guIOhNp2wLatWjtv8ail2/1rt83HmNx/Y+1ZDr0Fa
hmtRTdr35a5YNiHGTgcs2vSW8T2jP6oAk9NPPACMK3Nv34HOyy6+CEvWmMSF3QrYiNlV+m4RWOVr
4npNxf9GkTYk3xYPPWDtGtNtZxCbmUQUsJBqmN4VhqXveGRT/q6nUyYzsNTeSRcEIdASvGasWZt8
19wzUmiPjxetumnie6GocblNdyJ+S864AK7cM41auspHRANX72MjC4d637ldRqDPpFoKDOXaZ2mv
5MptbqBBYuV5/DOuzdHTDhymiGY5Z+BS60S/FPRWKEWJJWwAwb6FP9RMX+JJvJOX8IdP2BihkNVq
HytrdDn4jsU8wMtyaVH9ULEBS9XKgmRyb/+8UXdYY1GIP4J3UyuGt4Sj4/rLaJv/JkX4knuLG4f0
qyedIE89X+3upzq7YYW1NyFb/BBy5inIPEdXw1+pijrPHBM89bj0hJOCIKn81wJnnhVRwiv84BEX
9qo5gjujKNZ89jDhJfaezsOkr1mq52olqLDhhSC3MfIf7oOGfuqpAs0diXUWEfpCpoUEPDAnVYA0
AyJG6SeaYxvn66mymiFBBGrte6zQY2MRZ6SP9lgGGr28ZdNlWgVsADOEyq2gqoNrFIkmu/RDFrSa
DNV4Uefz0Ta+VOyf3oy1pUdlY492AEU1ZC8mygBnL2OKVW41VSZPeoJKO2EqaZTv9e6yVw3xSQQa
HdRAFfUxxrXRiwvnfHrIQ/pScGXOIg6mViFJCLe6pLX8sdLpU0EHph1562U+AP2qcWIsDccd4gfE
vqEKqCJZiu8oEyKbqHCaz+XMwfX/jYi1qhvd4K5QVmH23Z2+0yHV/0hqfV8K9zqws+jn9ZzzzzHG
K328f2DS4+QsFW0uDvW3TG3+MLWcarzuGluVjAAW8PZjXDfr6Ehnl8AfT/pAAqKrKAH/GhLVRKc+
gfMEZNMVXm9WHXyWxLpSuD8JeSg+Zgd7ak4FGACTsEP1reWgFyAU4bSVc9LS17ulegWd0584bv4F
sySyjHCZ1Xeudpeh1zeeEb5Qrzzei/V4eQtFA3kWrrTGo9Qe45WVQeo9fgD4deHN5RyfVEbvwHVk
KfkKU2cGgmIe7WTUL5Ld7HdiwwpqL4ZnU0kccQXyCtpR+FnoLdkmUXCVc9YbKpVMFrGuwkRq9NwJ
6fu12GpSGNzTo+wZx+AC2X9CMo6emOn1U8jSA/Y92fcdhoGuiV+a6zKvjTu8hE24+KwFC33oBmz8
tQ2aNSfS3j5QM+V0HgEpNtYa+wSiMk39nOjcH2KcNcZaxUigs7uh/wTW73HcDp6W8lCFU2NMOEwy
O6nY3EALs7Dazjtw2ITjoqb4VJ1q+gc9TVElEhfVz8wTPf5bKFQotbaJK8Ps8zRg0AA+DSxp1z+j
qfIhs9MQssHF2O4TW5Dm8qhJDqpLcdnlz61mP/LCQ+nEuywmkv/IZTt7NxygVa7/d/IpRVWvPzmN
nHw0YT+LC0I7NsyzTaS+RZoRowNYOLw7jQkMe83PxpXAkJXDh91wwHrLSrdbsquUSiAAuA3PeKJK
MKIVv3Pe7pVDSEn8Gdf/N2Tf9ONCpyQoYqcD3ChpYJIKsadJQyr73BfFZA9/3eINu812AEQwlOb9
NQonOOk4E3KGfH3Cuak8orkmEtrvsXJsr5gXtYpl5sx1VHRr5au0OW7kvtLchhmVlyZK/vN1jr0M
CHReyShHG73NntRwE7e6aEEx5pljiegGNcFtBShtme5VPWP7oA6BTLc3M4P6HYocojDMbAVgl3r3
/tYaQsQaY3fuljYd3YiYIXEtvUN2ASqrTZZywiQSbtdbF795cE2wKvA0UCNNna2uEOGtIc7K9BE0
mO4NkVwHBxz7gUPmIm1GhU/M+o/0qaPfKHnZCYtjG0lqwzJpK9yo0HuCwEM4fDvxt/6JFrFuTd8y
hnVo5VqK2p0d3k3/xwVWkuxB+B01EzgbfYUAzEjNyiWgMdOSYUgfk1UeDOCX+T2IEBCQTYbGu2wE
Mmy1FwAY0Vi4s+tUTSfA0uzq2SOiIOasgvRVVLB8zLdYZxJ4NIve8FATpOhotHTRqr67dfqy8gDt
XiBYtydZiiDrnhxzwv7DYpImnf3rpNQ4wnPmod7VMe85mGU8Q9C4GRj1xpyNsY+XQf3TXscB9uMP
5niFr0co6wwpE+HMbWLAzZ+1pGnq0uSh9kMryZ86B6229Zf+KM6A79hL0dFAOZU0tFTreh0jcmPz
YYdfhsXVrDT/IH1kOUFHB0pd1/4uv8RUuD+LXPAjmI5Px4hbu5VutQxaPTmxhm8voCHiq0AlNK+y
3F8mLCZJAt/7SNbnBjKzTXKaHrJtK4AkUk/mHQgJCgsboEuBdkQUfcki2lx2t8EXuoR84AIWXEQy
Nei8IX32C7bqVCOPlwWKpFdI2S6eXfeUGsRpvRzKns6ztFkZTIcA7sqhs2M4yj/uyPeWjvjlfko+
hNYMeFZB7VldEp3LrRw01hVsIAqVIOINrmPBfStNNKlg3xvsg2lHFay43OPyqV19Tev7tRl8YoQM
fo6hzNea/N7pfQ+Vr24MvurcVI2EUk81fl2z9wia3NxGi/Z2cmUidwJf/nao+HzGvWx1U4gbKOfh
vKpmLVyqsvrmacq1J28ZKihhL5bzbCr/t0TthTm20NhM5EeWoKuEp50XmGzdQ18N4WcWrA6Gbg+L
AydSjbCRM8w7YzoH9T0hXadxQECnZUvbrX08dgYci3ee2AyYwaq/dacXE/1hicbE9hL+NzDO4eE5
j3GvHCuvLeylvrQv4xpLA6eyKG0JCGquaVtPSC7EwfVtHIWLGuqtzapKz/4gTQLxqWlGS5MFTE63
0oKLPxsDPc37sOhKaiTrAJmncEoXAMJkCqUPZeVlcJVVJWU3RMd0hDiaw1Rxn+oaFwSo4p5PkdcU
GlbVflLwwr3OSHQglT8XsBoRqoZ7+P+qpVYc4XQdW+6/cB74Wrp80toLXGARHV1Jx3nVFjG5C9MK
pnVj/e+GinjBoWrgux07EV3kORjW90IguV/3CZWCuF4Gwwpmkhdh1Yo0ClBWkzzu6GzqHNfXcv4c
NoH9WVFtO0soWh+ugQdp9FN8g0UL+suTvzDyY78Uo0++XCiRaN58G3PhPOGNy7cKwFGzWKsJUmSu
CW/LZX/foqF1+WEisGJ19iQxBMM0EIbG9sUK23HSL/rajOM3mEM5VFpf5NUpgzfWYOZg9/UTSfEa
sbxYdwRyTQNmenm7DpTa3ULFjvVoPftkwvB2GDlO+6U1Vynzhxr4SEaVPMJzbD3mYykt5bpG9Cav
kvklwHSb5mTcXT3FGhKoyeLLuvVtOSrH7q3+dvt4k7dALRvnlzQJaJnWAamS9pwOTrG2JBXQvNWq
G7qwVgUzvyEhj5eOKhbpT9eJnGj9eEeyzKb/APo2L/d0/e2xZO/umhCbDggQu6P5CpnyfdjO9CUL
OKJiypTBWmcFL8gnZvo5vioJZWPCHjYFCDHQyCiX6NuP7QkOY+GfqAVcKg2Eosm9ejqrqdgWoEIU
u07OyaDayjy5YJkhN7xTJFPfsbdBboaEI2zOqgGATePW8Om/6QYvQ+gTeY9ZajJPGrLOApF2W19t
SrjAoJpfbWNG9zi5oQAJj3/qdNHQWr8aCS2eQfzyNzHnP5s2+VGFZ0Zml0dWBUEGQHMtuPejkpoe
T4KnMd1butwH3F+pATUlj3DidL1jrCbuAaWOkMIOA4Svp4XamDooUkKETtXw/TxvTVZw6+K8KH46
gLF6jxoUbnAkkRAMk5KR7+IyagJy7vAOoy9bYa+fhUl4+Q1bYRt7Xv6fm7yHABBpzAc3z7c0QlGZ
PCitChqVxDccbEMLBnGRQX/3wle/bWP5NQPadkXKO7mIZ5VrDKKqwXpspYnFcmtcVT0Q9hISj1yp
JEzbb6Q01ilI+xfSDn8QT7G+qIyA2BrsnL2PLAZcfjY9UY5FXIzy2BImxS/bxTb6UFLiidp5/7Gc
oT0hMTfDd30kGm3LLykxvobZqCXYcpe4my+/uiZ7mZ8fb7W6b0mXB1Y8L4ZLHxJ51RXKf4645A4V
9Hd/Xu40W65aGO5B8XFUulLGrMp/MagW0T2FWNDumdHrlUFuAJUEBlS/p318/E9H5qWVgpJVv6b+
RJ6+nfy7YtGvjQ7spBAX88jQeNOACW6oAgWNCvycfQxWZ9t7wYzmAAI1ng+jo+Lfv4T6l+NNsk7g
CSPYqTTlQm01VnmfEtCBjHDR33YKxTK7yfVrDL8j9ZMEjKeYqQnSGTcTPdDuLZ3nHQaY5x+6GKz3
rnvPUZdcT0S+BE2ODddFKbLG7jK8UYrADjL33i0ueh38joWJLBWFlgDQBQU+5M+DRBM8XshZTb4R
ldzc0XyN1qPCs8aaot4UaQQhkMNX+K8FaYjFNAXolxDysFygiJ1g/ci2Abob5g88ctEBoL/2okpg
GukzUXVJdURY53a4BpP2+QbFYK9OatHTOtD67zW427qCCFXYB0dB6RQ0pM68PyKaQ7FTqHCHZbYe
ryWXNMwK6ykwTZ2EEHyp+pEZDh4mR4pDn9Ui40LN5eCjcI/IqtpO+9fSBq81FDf7uD8sDGK0Bpax
VazBh8gVnmrnDJK9hajlYPpCZO5zJm3E+nFSEvmgot8YtSLwDN5AFENgGItOLlTAbMiYNbYRa21V
tvjIo31WDmFayGA76ZlsMTD6c2EwlzRHjdnmk91DAzmGu/wkiwAyUJbu/FcEb8WUtVZBaMKc5iQY
I6iZdp/frAgTIbDmgfOFCfMuuUteBfBA/RatOQGaAhOaHAL/WNFTQUdLAMcZor8NmGwerL3q1wLU
8C5juG/X1u1CJko9poOcF5riH7Tyn1Jw2wdZA+JPQQhCX3Etwh00jIc1q3x+gdU7oz5Venz4+gLU
8ba+PYW5e1Tk9th3l6OukLx+zFWDJ/0f+FUUoUFURHtA3xrq2CXTxDAvCXqo7Fp8Yw0xFeSfj90r
KW9vhfh6iPBFvrkB9aTRpdJjk5Pyi42tsIXWpt+F02osa2Xl5Xshma+DcbZ9hiUld+C54COTKWLD
ZPcnBlDGR5qhJOXuvduChm1S6P7P26w0hHlSJ0XGFKloZmAKVDiR1imTbJaCe8PBp2bdDN4PduO4
NVNoqVEkZLkFb2E7hYf3DoUqI9+AraQxy2i/FvDgauDwDmJMocwDmfoJFwWs3tEKVWLQp7mRuMcK
1GP22O8+8A7esGQdfzFGmLIameWyphZq+MVrai0xo2KuH/TG8NdJ5R7QfFzqCuNW6rWwg+q4B2CG
MIlWhOB1rwQ9eZhh7NQ+DvtmVP2ER5v9ToDuhchI4eVSKO9QZZx3+csHWD1QsqLF8btUuJy81b5L
NWZmeHd86gT0Wp/lQViR684p1MtIbZjfdY0ojPOQYStYr1k2xB5Fpw1w327lhPFfEByeWqPUaB38
o4xWqcFaQ1ynNE3pizZs5VozPZeNPKQ0wExLK6BfA9OPNkpMYY2XJYHXIYBG0la5FN3iDwbofoJq
z+SJHwzwuQDQ2Ln551HNNFbdxN3ly/VD0p1bb6f9pXsE7oTWZ/hng0bKmE7HjERXFeFvRVBSECDT
BIF3TIVGzCRgScHJC5MFKonY7EORxzDoi8MMPb1Bc546e0GeHdfbgUDigEA5NXKc5FGGOqDbBbLe
J3UxBc9RZsvMeW0uDOgK1tjdOKHed8gPZhD4I8Hdx3acNmAI8Q8cECo3WeQUINqQESJlc3PqfK63
IBFsQbskLo76WNfP0lprj8FdAv3Kmrj11FbYXE/usvhpacobmDB4FiXwZPDXDDqc0mIjtKEyORE0
mNcp8AZi1AWC0xYOdmVwoDXuFhjaPcDxz2kh09UCviRoSHMgjGirXoXrM+Xz8aZ42oJng+e805hZ
v2P1g6NXxXCTUQ3/Tf3hs5e+EOJfP4KA+eGlpyLlX8Qt90HvLyVfL2D6V0f6/Tv/YdpWpaT5/jnU
FHOt3kA1Pkz5YX+BHESPk80dkXUnSpLgXI1iiW3Hnrk4w6RWqFeQWJQtJoOgjSi8uAGADJIquciB
nU9/nW84rpkhddQxdIwEcQJflqpBWRfxvvSAVhOhnDfmQg7wrhvlApibfdBRROCymPr31tSw3Lbl
MSUVbRMccJVXlSynAboAB3yj5R4cht+kRB2TjmcForRxbamKlIBq+qf5Z1guQ62rTk9WgPgWJ6nm
jx6viaxxt5DBGk3asGMUmoO4dAyKK0kw3EFU3axWVjCm3bAjmlvBtbkQUsXJxEH87Qo/Xk8oRIcU
O0njjrKpgzQCYU2rx7nmx8WccRAbQAXLiUalPDyfTh7lYFlV0VpUmrohfQDvt8iXhzb5doF8Aoor
5+V7abt0kpvI43N4rPFtwFWKKBu+t0tEEUqxaXuTlgUUyVMttCL4XAyX8KpTRjeMzj182RIUugpF
XoirAaJXFU1dHsKVxMz/0BjZ+dEcUgvAcGbXe+nwWkUFaV7WABAdING2CfRAL7N7rxGHKCS61Y6Z
GpzFzOw2a/aRc6HDOAW6Eeugp3Jhx1AGp9j5iePiK/Tw7rvbNEG8sdSWIQRpchmSuD0e+CXD2Vnl
EY7cENYhQL7EY+NTlZNCps8uRD0Caljm+PL6s6ZFOC2AGrlli/18XBc2NPQAxLFT1CESJi3uZcE3
0EqWjGFTn+w99TyrfI5fY8y3SOgEbAvamXPBvOrgQIXO31FkfKzdnFJt2HuU/gxByQWyyNhQm+BN
CYcOu7lgym81lK6BKSA3ciSj+A3rGrUSRWUsuGdFO8rbohDXV0CL4LWS6TSX2KPsM7zZJIfNhFaG
llC9FZ3Q6oztZTRG/gYNEaQdoJCMMTfjKovYl2HCTfg9T3vVhEn3LXkSOOioYZMfjhTdDgdCfoY9
E+ZTcqIkypfFzVRspKQvS5hNXmH2CcXrTEpOM2boxU4jBqLhUZqtRsahXl/uRIYMfFEnH8yVzB1E
iLAafNXVw4H79TTF1ZplK4t6sGFwbv6P2bGBgNLb3E9OyDx0IS5feXaXuLpTniAwDP0IHBoPtD9F
lbWYsuWmEnqNFjolAZxd/ZQKlHo8SzS1JsiA3UYGCCEOPzl2C6cYPTyZO2+dN4rJ4syuiY2QThbB
80y69Vu5dOnYgny1IWMObcsR3+ei8ENYzOM7kGrpFGgsuksPy/GMLGzvKxgBmFFVbReNytfkKdtm
BQ6It94/HrnBzXhNW7WfNN66Wp3BgvTNpfsLiFZ7jO6PQVpDQ3EU6oHMSEKcy9w8rJDxVC8JTXzf
1VLypZq5I7ngZq+9FcPOcp2G/Z+dikDFLkb3fExdc411VSJtY3RnkDFWcLxSsIdJJIQZ0vGodpSA
jnpU7G/Way3ZARonTyw0AXwNGDc0yEo+a68P8b61OImj2pgVqcS0Vxbq+ZK+9zzx1dPsE3GZO0BM
RUv9FJjXSb2NfHHg8J9FxZ24RJVA3gZ2OnZGd6FkdUlHOLN4HvzpkgPVcTLPDsFwriiw3PBwbFZ4
D+PPXLQsdijZhZ3+IYQ8Zri10I9VeCUfexomqo+3Bf1uaa/bFJ+n4aSdi7CLaEhAFB8/sOPw5aqg
rj0hwYbvAxeoUWOFWOKoVK/1omFxpUguPkOlAqjsgyAy6ApSwnvFDkWSpWHhD1XJYASEtF9DTRoX
+4MGJKqUXTdzYYaAMi6ZdBoAtOWrfV5VWD3NBT0nMLYemjKHAHg9nkwIkmmsAciknWDgT8Y1ny+5
tK1/TfHH7+jAvIgdL1yYwjMdxzZ12DT0Lrny1RZsecEROnKpK6TCnYTf7/jm3ojSI76XYd0tA+1z
17gbGXkP0kXINPTSNVh7qj20nnCKlkBvZ9UpLoSZRAq5opPFNY9xJhwdvxRXEmwCXZppOzKvNrjU
meUdj3F/MeKnfRxGKVB7YWng7jeLsANcMrjfIoE+2hJB7ZMdR4/qJQDM8tasEXuxoILXJ3il0wu0
yn50tdM2pdMMdQsoZ5ywaqrGU7906UXr0G7s3nSTDrNsSajQQ2C+QvSUYX1MNAZA8tfubZiIYmbd
OfKlgS/395YZchqbHSkJAiMLks708a6tRcInb8+KlvkJJ5J+oX+U5BOoqDG8zAiWwh+GqAoylvGs
UtrD1xnFmVI4msRvpQmcGcxQFA/VzhUXAH8thdX88xsPuPy6dGMvf5Q/0DjFORZdcHaAOPrYBQGo
gTckFSSX3aSSPds9zQoQujEiYdDGYRSg4HNM/wwq8FP8Y+0ASPHRur6bbFZymswm1MZHCVx3Ucsg
iuWkH4KPRc2AkzGpHwwBnoWQXWBvvJ/W8a2wvmpX2cSAN5i7PGqetZNmyGHlZaPnTm1urXRfncPC
DDG/SucqBXm6p+msIk3Ppqse3OUT6V5+REcty2/1eobKQBqGhMRWt/ZbU9QgeR4grtS87PjLAce7
ZEyala/Lgs24WEzfmXdrSyrJgit5AePfI1vP55HZqOrzuNjowdty6zQ33ojk4qkJC0jaRFht+8uS
nsYQOqfxPYUtccVPw7gafe8+ZQliaV9On2zO41mr9QHgPYoLcpbIEc2aVvPUyPJ4C91kwuLpHhmW
uJhhyZ37/O7+uCFM6KUelk6fLVq2OifZ20KzPZ9pDHdou5bGUGTt0XUoI2nhaP1IN/IGpTLwQOS2
etVA6akHIbxVPJedKq0dXjlWqVp3Zml0v+qc+KgkwAHrgcRJDv7bYxAg0JahIde7FHLGSJ16ePBz
fSpSGDW3JlSfSx1+zpUaWcsJ+HrZ5NtXgJ9Etc89d0BMQ/LWMN10QC2VLr3yieBLoWznXvSn9/86
xz0qfb2Vtx89pI0YPQRlWMiqDuplxR5q/mY8dlshhxnn0UtqBOPtU29g7jqwifFlO5DxpV4CJPjA
H3NO57X7Ssux0+W12KjLtkyeEgeQkYMd185x0g00PNb77xXRXkwiD6dkjHXVgLJl0+fbhvBxn9vY
+TL7Y1Vuk8Fxll/oPPcWwtLfn7+Hgd9pJ3VorhudHTr4QR5bZcathH3HfNZfEhO/pQdjj6hVfNpf
5ovuxuL0gXEBnBgClJgn7FvTJ+hldSMbyJRHYViGavfIXks8H3GgnSPqWO3PSwdNMw+leJqDEfXc
wwZ/RsA5P5CcrlEeoxaa9Z+eZIVXWCKmPiPdALL1S6EG5erAmW6VmpgA5h9AgwQ5EDjp1jdowXui
Nh2k7uFjxRPHMx/ZpMZNvS8zTkq58CwGL6n8O7CAoydsaBb6vC3n81UfujNQGsFLVSt0pwYubtAA
RBsX3Iw0DevkIPxk9g/A3vbKUmdW6VXv3i6TNh41z5OKV9UTrc2FgGwhRrbLytpjeDcOwQOml+2A
eUA7yw+eJS/2iEIfGGBIx0xCIn7o753aEjGCRjvEo9fS2TroxOFGzNZvp/cLEZj/CNDPUeCkpAHJ
/Jpa9Hd6VOJvCJASHfqcq0Ghv2GCH0/z4h3ow2wIMebU1hbCbO0lU8D7v1Z24dem62nW1uXqnA13
qRQGzW2RFAZM3+ldDKp/5Ow2Op8/cQPN10Jt5n7yy5ebZBTiw4aqotLrVFwsND+MEQl7q3fabEkx
qtw3hC686BEqmPj2CJSf9I6NLBjTTmSIaHcBswjNHItBMpSjlHJ55VUXE4kShzrQH+8V9bUGjl49
raAoPAi6bZMwq7AcJ2tPgAiJkwFAUfCEa8LKYp1m+bQSSvaXtDSEEWmZJET641CiIwKkRr5FrGCd
XA5SPnYACt3h6cH8Cs0RnZqcwFxiuUELjBL82zgaKxu6gohfHPWm5f0yuprIXKs92GUq0LjWz2Lc
YqykHr8Ot0MtwfUgkcJbSmWKfxv9mQS6xYgnwNOjnj/kh4eu3ZYjjWO6gaElCQHF6U1GEBV91VuD
k53zmpLzyFDvChOLrxi/xWJx7D/IIHPccII0EGzkAQGiVMk2Lzzg4WoK6Rx2Mr6wkweuVay06IzS
/h4hOt4TFVvDSsIbwqJre0pWfjOQbKaRT1qCnqEJBSfoHb2ru8v4XKHOSvUiZRhPrYZUdeA6/2FI
q7fKtMW5a80Yzr8vPfJ15kVMqPuPIljN7MJ2DYZbX6dEUJn1FxPRP40NZCuXD60jFEtE5T4uZo4i
YdiqUabrAFhLobtZ1956JW56sfCFneWLFW2aqpiPwSzlrYkx9FtMN6ECS3NOmYilCg5BhCgfJ4G/
8Sl9/Nj2csYP2+Wl6IHNS5yftDTVOVnWwIWfZwF9Fp4CjxcjbdV1Vo431BGKsZUIDAvk8y4vAqJO
jsGZn5gH8bxTnVw1xqPu5czC1C+mTJCx5LIN5TOcFi8A4qzBbFKKWpEZvYiLAnfPz24+A4y9PVB3
EHgImlkU9nSFG5m7+dauCVQ6wFsPQiuB40BoecEWx0CYtqaj6+6zCvY5AQZRWGmcEuI7aG4DYLYq
aCGpwCHSK6ntY1fG09yTSpIQroFc9WdkaeL/QARDgCgNclGGFn4uitcnkCdvSzgk6cDhXhZxsB9F
OGx9LoZsFE41Bp3ibBkL851ohVC03S2mq6AfHn/6aFUNpqeqW6A91jtNlquxevTV77SZT+sU9w26
E14hUfmvaf0EycN/E3yc72juu95Ff/RoegV1K5/YZ8ttZV91lLhMA/o17W2H2hvNxxCfTjiOLHra
UkbOtoMH2e8/2zRDqdLELxwdaI7JJx1PJ6rnEakBFTtgQIAR2YnO9lR/ufs92U7+JaIcuJHOJuo1
Hwi0PJ4LQrPSZQAWSn49dWCv+/bOIFcnmz8MR3hXbW6wbgoTcGHoew9S14BSmAD6habRhMqdoD8B
oWNdbNDsxpXtBlHNkbfGlKdMnun+VnFNOSfGIDHWv6SWieGcjSv0NBfuZ3UQsbN1faDWaredQ3Kf
C7K3FpsRTmBfNwLUNv6W6fCFTeA8MsBRY4CBHR/cw9fE2wfKoKEigzKiNlAv979zcLkHhCF4laZR
fp22YNylEPxt5gdXXdrgVlFDtIjjf18wwwYwXYCeYXB9t2Cmjeu7+evp6/J5LtZf/eGUdqBvw2rv
0b6lI1HhVdeu/Hzkp0rjN+G3ljX8se/g1T5eeUEURIOXVCYpO7MUcdXJbv8g5mcbuifGrjwW7qbq
r2oFF8O3q8M+LDIS+mEwvqf1wW8cMtuEQ1Vy/l0dhNxrRzrxMCe+mZe4TSxQDKAq8WbFQWq85IfN
/iud5KJ3jMb41u52qTnca/zyCs/74LXPnbg3cb3Iv4+CkZjHWGMmVztYfKM1UNalePgxyEtWt76p
/uaQfJOJTlITAOE9qgq9jIdXEDGuvCiaoOtXTiURoKZhj/XrXC1wsgsa7Px8g3eRHB8cnITQLoix
Rbz5G7EmTrVIGKxF9+YGgbV7A4f9m/AKe2NCfjPVMIhpne4dUQeP/F/L6lLvZLs+8eTvK72Liq3+
gnZqh0bfsmrkDclR41Ssn7wxoq0OzqJvCzd6HCIKo1kyroHdcwBnG+o8lJVWqEwYg+QYUM3jYw9k
Xncgqnxw26gMXNlDboeyhfILK02U5kiU1aPpj9L7Y1QUkRrIitqHkLtD3d2NGGfgX4epbCJVf8nz
i1s7BbmHxXDZ6ZEBIIrJUuYk+3G75hKJ4Af41KT5+ycC7kLOHTYWj6CqK0lrD4dq6ysakYJhgNYm
r419Tqr+zBFGKX3pSUpcofuJE0ldJpMgwQy23B0BIMn0Pw87zWxKNdCqggodAJN2qQLhwuyYZxoS
sDu7N/C2ghQoZ1PCclZdG5phaGYfUE7JiSsgQS/mTX1rtZlzatTfYeQa1GKyGABQXwlKlRWYCWDK
HntxX7vDwVp6eLKEAN1TcCkKVTIjmI9h19OKoZ5d2oD79e4Ch6XWx2BC5KiwE62lQk/cNaX4x1Q4
Q4E9pHGSaK8BWr/qKaP7GlIIj5wmBycAX5FA1nCSynxSzHWnkGDPtDaSwwhuED4SpnW0vOJlKzh0
9p+W+2lVjgAP96/bdNVS97CrOKb7RCA3JZtxJkgXoPBoNQsokxxpS8QLHfevWr0GkQF1rwJmC0Wb
VAHgBgEv0tp9ud5RllaQNrrTUu956/EFscjQOT1fNB70bYboKFEPAuNndvfFgsyjCEsgAZb0RWCo
sCANAGF7EEwxRVgF491LLWMUv3UvcrJoth84L6s2Yt652V0CnFRYwdeTY47Ci8T9aJzmWbbnzJDL
PJe6bF2qENzxugtL6M9TfrPTeP/l+hHBpHqrIq1/YcCaN1C4FsKA1xRuNY9gFz6ZSFnBMdjsNUby
hH/Hov/c5Un8+2MWNszGDxZCjPZQgIA6ys3xjg8mGNluS+zqhHlDo+aoT+SoLzUGFmpW/0pfdonE
SzFwGyJtJq57xRXDRjnwhrf47Fvmspwj6WBgtIJ2cdcrsmlM/YO3MuhTv6r8cahCHi4iLPVpiLpC
+aTX3pU+ipQyMaHebfyWoyFKIgv+wP3SNb8AeYsxWsYoJPHnwWpRgUqPfJZgVecn2mbDScm3eCCJ
o+3EoyEXBiYQFjlZf69RR1MGBxe/2LTF6nmcK+1ubbsDrSd82D4+DWUMW0eXf8AOOCGRKpOD2JEW
q+4Rmbc429Eu9vKD1RzcRLzVO+6uKdsUFj4gVIp29p3OjGOOABmJF35QrXpQ3jL7Hbw2zA0avDZQ
Vm682o3jiPi8HS2ZAKfRJ3Sgxvv07CJkGyP82cC8ImlMWeWGmTyMcS/p9H/U8VetM9O1FQlMadgb
SJmDxhTvruefM9STlVI9+C9XDUtEAH7ProGQe174jsgNPtnktVxl4Sb8pKIOhMq3nF44K7sTgo1M
MT6iqiBiMd5vyu3hrIlwomw7qoH/yGdD94gexCh4cubEvLlKjNxGV3pKte8UT7ITEaww2t/MuJa3
8DWJlEGxwgf+xkkHJgZxEiLdynFIknjVAclMvK21Ga/fW1FgVyZLeOMsy2oZ9yyXMiVWUgZFeyPr
ctbzdvtpPAvRLkBB2w0rZWLuEgaiwG0SoZmTKu2Q0ZxomeAiF4SqpzIVTLtZ9QQcUnHVzSD6i9sx
4nMjrrPndvtMK6ceDpmGn5mH0Ha6+J+R4w5uHebwbTduqg/kkMqKTgx09bYkvD+J7b6DcgOQIGvm
UjHe0MgnVuU4nEaabNUTK1Z/18TahNbnYxNo0unuCCJy9/oFkuiC0HxRFsg1pU4ttL9SHRmQOpEw
FNFOemg32ubt+B5SFNVcYT1+905r9vneApV5vezmQABodcDTcpARHg8mGO+oaqSo1H9kmMf/b7Yx
dZDoCAgsJP0Lei1D9Ak1ov2hW0GLyhhh+VL5rusEHZCFrntMSv8GfNHjPkq5w3QBDCdjJv+KMqCp
Gdk03/+xb+Fpbsy4jaY5idzdCBCKh83nzOGv9Kwvycp2EVe2Ha7ctylzWzh16vFXk8g2XVdWJiNv
mFadX61pCa5MaXApCx3XhpaZa5mbMY1Wxs3nf8LKd5omXZnr6FqemekiZ29WAnXVYXmKSkkK2fyS
b9g22zDAkDWGwXybfvKcYXps/VG2Ppm56mfxCWpRn/vj7io4uj9I4PtPzu1X+jltk9Yf6/CmRaFU
g8RsGlhE306yBhrI+boCmQXnVC7/XUntKI77TxrVapBknR/MCaDT+QJdvXfUoCBHYqky7qmnwLRL
NG9br87huKUv+GkJMYxMYqwG5JYEtTYX57LL/ffbaQ8z5Qalt+4gsgAqs/8vWqk1JFzQpl6wbqlz
yagHDhzhut8BeCM2UpzAOUw2OnXMprm6LhU3rh/V0RyCFo+1V7bQnxdt2iFJ7sDfA62q9ZMKubkO
FS+RuuJ4hIycXriouj+BpOvtTUWmTaqKWiQCGNM3EdcdgzOgZaIqCxnjoEjfGEaq/5sqkP1J0QG8
M9QtbCaTTwF5aP3sLybj2wQOR+RyQ4xUBuZMcw4T/gDLSRv+xOzSKhGFq9C5L5XGdlRz+mz/0W3K
chvK8UUCMepKiBSHhH5BBz3/VWUwjg/kWr3bLHiuFLjsc4aNzcvETHFGaFahHPHqhCdYoe0S8Tdf
/M5Y8OujWSUVXvblejmYmTXOsG8S1tGoNnDFhv+4Y60tjxmPm3Hh1zyDEAaf4hTtFQxbL9tLLZIA
40WXC6tmmuDGjeyDCxswt8hIecHRVEIYmnmdFpOBe7v1UyZQhmqjaFkxpgDhNXtG5oDXtL3M0waS
1sO5wDEr3o2O3t92thPqvHQiUmCdaNsxkk1tdvvnRdWVW3z09lJ6T1pMi6LMzXxqVDeC3AxekVwG
Jntk/t6ksp+82esiI4jqGgJ1fQ9CndoSwNwvpOzFYhK6OOG9L7VdLqqiHEoBYcKXCosMPs2CMp9t
NUTa/Y86ETEfr0j3ZPpZB781GcQQk/BVg2G1XDUE7gUW2hn4gioM4lLpqvNghbRwYi61SgaXAwGZ
+UN7hpi4zdYmBAAbzMlSiHGW4VHtzyu1OLlFpGxt0kY4ej97dVTCQRmrjMwowZsMfhIRlcPzGpJT
Su6IJ6RgIWO4uXxd++p4im4j0t5lCCz+9hZ7qddHSH+lK28PwVHMRPUzDtSpbei5ZFeEGIxK88YI
1Nia9UxtCEWhyJf8ogeU1cHosbpMs9QarF2eDCBjl7afL7tTLkTUZY+WPGbA9B7csckI5LrFxkUr
25deMHInC5OOAWrgw7qQUTarjOxYh+PfBg0lNDzSTkcLP/pxRZrIJc134mkgWs3uNMW2nSjYBFWX
g9Yr9CZw33P62uTT/qLAI8D6bdJqqS6yVShOG6TB2bu2aodiKzIcDAzIwl1CX5hKXO2qCSWNX8KI
YSsoVwwBvlwdaxxOXNkPr07AkFdn+DcdIWwwykYDs/oZ7UTmm/YKIcMzm9v6S5W2Oh1XFrcwHujK
Vm2Cfs5Pgmx6jIc7JJLUtxVW1VSJqJsPH4QJNOi/TLsZnbnlJ0MzT4xOlxSDu1AhFAE4X3vZSVHw
7iPR0PeSdkFnWBaGijn7RVrq87kCQe00tRuCHd3yx3Jh9GGNBlgljKPL6gOPW4gppMdADZCkZ9a+
dzIzBpDLVHCCRvKf3homlT+QcSwNPfG0trHLWPWW9aUzY9Ne9ElOzoupS+z1GC9q9a2NsFR/obxc
blahmMVGC4VKfAFO3gqU2Cn+KsqWbF0CORV459FW84AnbRN+6do3tN/Dxr6GwV/HTcqiKyxlLDv4
bDFPeCTWOvmse0EHc4NdmkKTp2zga2iI20LY3XERlvVkjnUcRXCk4HXIVenU5hU1KqzNYxSh8SUk
4W/zOEDsgSDBbpcUMg5gLRKYdIbNzBRnRQ0wp8LvA5qbDlLWtf0aFEYIiPnBUZdocVOtAdB+Ca9o
x9XKrSAf1iWTzEChaM3izgR0m2X78IVKjOV25TG14NEk0nYSeTtgGiAr13PGldFHdmKGSjl2u+ch
O/Ipp53YpCTcpUmjM2j7yEOxaYT7yfwaPgm9eAtMF0poSIg/VsfNatABuPCZhmbhohgJZu0uB9ca
hi7enFV3YLuJUvK+1NLhVoJ8kbZx+bdCn/gBd6a195A67JJ8YFpgDjajoldJRCZcOi/dWCvU1svz
mrrdlXIk8sxdQm9Qz3Si/SKzJiVp1DklXG26D07IpPzewdjcqiyDwPgx2pJVl3Vg0o/fYa3/Z/02
qfDW0ESSC4o0nPQg9UDKWmztEuvbczOpmb1fT800S6oCgS5K62K5tcPCxzijfUiDOAzcAE0Wu7ko
/o/8LdQpINgQye9j8DefKtXL3FNnegIjCbmtUg1DIpCBtwyw/Ib+InMd4zUFSSwSWocwmtqS26/i
OgbdIpdfz90TcfeW3qHhd0UqBs7w2cQSfRSMrnbSMkXRsByuGd/Mkx+89zHDZKQr+7rfV7aMGSII
2clps7Oz0H1QJq1ECh3Ts2TAItO2Op7d6fqHBk8t2cEudmCJjg/uzjC2wtoftuvNKXtyL5geJNWt
OEQnAQd7MWz5+ikmh0R9/Sia/b9oiSomcqloFw9mXzrJX2BGTxvoSmD1AFY4Q8aNYzskxoWKVax2
gYJ2F1DWRwEXuyGmf7Cav/yaS2OANtx9zi4ndi2qP1SvidI91VQpvgwApGzyEL4WGfITvTmImdNe
z90VME+c169fFHZzEJVXSO+5uTKTh4Q2bhIVrVj5K+43/ySNj+VK2EBuEOlQSFRafTokpmjUuU+E
sdxeqSbWkTojFbNXPTgKRYyDYo0Uo6WAjeRonKqlongXxR1VDeyk+LqjZmlHrhvc3s0lSv6K2DJr
ZOHds0YR0M6ee9ZtJ59qyTIVePLKpw54gifP1iQcO1v8hPO00NQaqQHznKbRoLlpZdjeuLMaJSJ1
mVVClqfNUV24enMNcJ4el6yzyFyaCt5OQqUWX7Bwzx/F9PHphOmU3zwji8e6eXOzZQ5cn13Jum95
16IbqFzN+vATMpirw2suPMjXzrQhzeoYqbPUZi/PBiG6G8VpCYUEArw8CjWiEIczrZfy5Gw7yC4k
+5Gu+tVA7rbTkkqIkwjkFoIKqWmFpyLf4thaRYW7lBcHbvM229D2loC4KClYFPMkEL0pyfof2bnd
HJHpnNQCjRr6gbgJvip0jrtgg6Fer3FTwIWYUIX4Mnedzdkd+oLw506V3uuxfHdYRWd+RFcuX8Ll
uxbUPrhPm1yj5fy6wvmea3QVLNGpl89PPLPOw28Q3dVqYMuXCjUyYo2VXidmC8xK9U/JPB8tl/Ps
/rOYt1FpwRDn3Hgk2uzStUJN9J1QYQgvdyFPkR9QgBzQ5mZmmmWa4jCn02JVHlI8UVIPgB7nRwx8
ksyFpSdkDCbnqZHRc5xtKpd+rNDMZkXdxNniU4wgqKvlD97fJBDLChQ6f3Xqw8uIkft4sCloPiyH
FZjTSF0iaCqg7IZ/wvqSX2cwb15X6Er9PMiJmDLAUW7meKw6V/8CD+77V+qK0BW1X1lfQiJ+tNrJ
UGgTPPzo/x0srp9LU05ikmF2qGjhPl2NMEFpHHIcLzQyPOxB7RCW4KlhbskQ1SLRRmhnXC52+UeD
7uRTa4II6Ft2LG5+EKcZgfg1NEbWbcmdzsa6BD58DWJpzOYPS70rkuU5NRS4DfBygO5KeiirAeS4
GLbMGVdi30gq5jyQv3svqlLamcTr2VK2/G6vmvJhdmJuLMJZbc85ZyCDw3Gpp1368qM2nFTY0SG8
ZKtv4Q3P2k8NAyX9RYu1HlXLuaZ6DlqFL9mQJGXTmhuLhiSO5Cmn2pldcdBYjkC+a/JYFlmXIiwK
ohsZauODIKl8pPRWl8g+7rjoh7nqIOJ++ZHC/k2g1WZ9UhMNPaKkCX5r3n7q80S0ofSSCELvJMPu
Dh5oDf+CtZs1WBvXF1veKXSnjsLED7AnWyCj4nvaaptPxEUs2e/bVhg54AKNZ3tz8tI4+UyUhn6z
LKECjxZojAwnzX4RVelTAOPJioFg4OFwz6+pZArVyIFZwGoPo7b7RY4GYanIssPtATcBMZXEpNql
V44oTKYX95wiX5AQrS9U8lUjOHEuqpt84vQHVgZri9nVEAETlxGD5iuNgMAvom3h7SZfRb2L6pcU
8kDuP+I40I51MCy4Te/Qxc4FhhdW39ccswoPSLgR9p0rjm0WV8X9bP/nfYn6+ETwQVV7Of7awbIJ
9OWyLYTUH/c2gNn+cnWRaLaQwD2+BAF4p/bU/jUAN5/Gsd+yWrfWLc2SF83MS4bGmEeOfv4HA+aV
lT4L5o9pyyE5MYuXg2N4E19YZMDCJfmZF7nxOWXQ/Wzh3euiRwH+CmShhClMpyV+ykXhl+Vma6eX
M7IzwXNJcgdDAo7+j1kp0X5rAOwBHLPGNyZja+8vtUDXvdqs2WbeNLGldyhQHXoulg7q45OdNPgd
nyx8M+cAOi/dZ8uf+qGk/aV9h+r2ua08DRTIU6/SFgoOUFOxmvHB04hCSCDpXNAiqbJJAbGMvQ8Q
CcWvPDGmXlzXMC4BjP+2RmjRGXmDxwXdhtIIpy66d2c1A6FlHxiGaCmh1g8AaC6f+GIBZkebOWWA
AJJ59RvQw/Z0uGtK7j2y0zvSYqnGAOe7ekke6Q9UyHAaS+XfCDvCNY8LRVci5HlgddSe+Epywyj5
EJr+lMP2+48sOalLlKvoFZ0hVwDxtdOi6ayhrUnugRCUlpYOdIz8H677g9hDdItYDCUErsfLuuu7
G8m6XUXuHVcusXwff5EfL3cVuK1QGXaYqplPdxa+yw/D+CUdffQgCCp6AuHVExZc4sTxsPTRFDon
TRkfeOW9UrME2TJZNu/3APQfOnBng95EC5KzFq9v3rykxjDq8xp5LBCfZwMcj4dmeFmGahEMfu+z
a5qkfZmQA0ETmbOHUnUbtwqGQJli0WuP2zuMsQsfBLziTPOF23zzJElyri11cBj4To9dIMx2V+Cg
EYzf0hZ3zFfIOzdQ9uF08LHAJXYC2VOoq5rNvssTw758DJzbCdhFrgw1XdOLZ93W81/3kbP2fyqe
B/AJisLpQi7T9FrJs73bIe/MI67ZnYHPrspWHJCqZX8c1ubpMc2IFTTHa6WJ+fz4LpGXzfGtH7HZ
o4ndSYqYgTmKBUtCI2x2HozGlWJ5aAqjPvOkS/VEm3SfaEIAQg0/Zp/HJ9iWCdhIpYxm61B1pijZ
4dFWxG0CqPb/CfMo3n9qSt1SO6c8A1di4WUue7eQbnyJtR4s+18xh8SqX8B+W/ML+OSKjd1IEEb6
obvyNRHzlRzHu9+nZbv9VhGIZzilfXYflFmCsN1A0JOTa8uX276W8u3GbVfT7uG1jAhw/qQpAHH/
r3T4Qm1P/eNlFC/Y8a9iCSBtDw/3TmQUsIWzutOkYs7UBLpB1ws/9fYFIi1t923CO6yWVNdG2RDv
mVM1EmHOCIRJ3cOFDa8pHVcKuDJFHZ0y+ZFs2T9PecsIwn/a88aqLZDL9fmwHfaLJFZspGckfgcn
uVlIB105rmaADbDGrrQRgZQJXmkrDZirZeMPtpy3CDTAxkILLdCeIGSw2UET9OuqUnmPX96YoKcA
vT0brEb+ah+sfdyTbanDfQL0zXIv4JgbgfGgSdlHuylYPeOtBfrA1ASPzpJKijp2fqTAhJsm/rTa
cvkW1dvGaeBdEab3ZeTDxCFmDsBc7vWFG9FJ9H1Dj08n6snhRdD5G13uwCqcGD0De+p5gQtjTLK3
8RnWhb83C9c8FTAI9kQHYNUTm3tjRQyh/Y7zbMhb1jM/KNdB6ThRSuJU2CKsZSmiFVNGK1FCgYnz
MyM5cJbJCHZc2vm9kELd2otwogN+QJEAXnXhAoW0zqDTDq86TZNXuHGk80DLaCN0IBVIwaeFROc7
kWMg23l7A5417/8VuyJrsLzOTIqpZrWawOHEGOX8h/cS/ogOUdZlclaxN5ikSUXK7wvgtE3r51y0
qyVlj7dgU6C5NqPteXfAfckg6UUMc8Y72GNHqBGxL8T6zvUtflUeHot9/TBzo12t0YXA26/xQy3R
ppY+za9fg24tJyfTU2IDX6eToI46pJSgi6u+JAbMG5TPm5G+bmEEAoFlHbrGSiIdVdCgiLQoMZB7
itSgIc5+vSlj0a9enliGTvB+/2TUSsvrdjd04N9WlOSNWSpZw8W2o6z6xraWeSleEJLV3YKXBedi
NI7y5lFcN+23kI5pLFQyPfBFT2hJD/rVX3PqW21WNF46rCtZ4m+DEKuR7gsr2GnH4FD+dH74rwIk
h8dCbY07Nb4Oqu9X9D3jurpNtOS6mRXZuhguhH21jW7oJUwB/A0t+XflowgtVUTUx6uJf6zfb+6p
e0kAsa50p1yBfPaUNqzU+ksNP0VU1npoMrOLAb2cYkC09hd6JF5Y9gRM//K2Q1JHOhymyphQxkWu
LGox7mzai6mTXL1AM26G6TVbQJy54/2UFQGmCQ9Kzwlk079Q6mX2kiFzDpMBvfmn/9XD2xMcRmYG
UWWiuVlkEFs+g67U//xPS+E/eLWVK3z+EJzNQBjmitn1OkMFTq1t2no4Xuh3iAHJWmG/vOmz7Fnn
ZkhUcgXU6FtsfcptQXXq13q4MfWPKCHVuwiWa7y4LFVd5+PYKuHm3MkeHHN4r6I1cP47RKS64kun
OWyuOhjMpYm2Gf4/Ms5JrOnMekpAkdndjKMDOEZXd+G+7YQRGjhEGAXI7w6+3D8oN78LDCeYmhED
0peNTxh4NqSD/zeIZPw+iEYYojoRiVDThKmb493pkXZ1NXfP7PTHoo/0762+uZH68d7SUz6V/+jW
tUiy4B62L1hAutAORzoUujYA1vr5HIrwsG5V3tp+7qWHvqeS2SeXj0R9XIQlhpIevtFULYmLksxp
K9pw6mTqa2m9u3hS9hAX/zONS0GWXvz9O4KFFCkE4SNYOsB+0HaMN4s5g0xvGeKjH7P1/75GWkXU
MtL3A8LCmipOhjsE3XBOKksgSvSDq01/GGmkxWLRNSN4eAaLWpsiHoV3P4qmVMXIztbScsdFbYrd
yEUo/8N28w4gYrNZNSh/kaus4eLW6VJC2trqKJfH6917UaN5IsaXX5ie/RdZ0Rav00DBc4Ovq8+x
OMx7UuMZ1M2ydayYz2ovp2gmPiMzfwE53AgDESbs/ITn3NP1i1eiXd89Wnds+x2ecg3dwW41fB3K
/ho1DUx6q1yOGfJg9pnA2ruOhubZlbL3qSG1JxNhCQnCfvBGixzzjHfC+KxWK6diNPn1EO1TJPc5
arXKt6y1B4iLSVN1TIWSMPoCJA0iODRrR1IAl7hdom3VxzbAFZCilVboInxvW7cGcbIHB3z/lKAD
1BOAemrsu5OkOFQ/IioQllCxG/mBxjZmbuX6uhFBtXKiQsrhZfiobWTiPgQ/R9HNVj48sN8SDH+d
piwy17N+3uKR5LeNRwhf0V8+2CQdNkPae2NHAm8e28uzOYbZCZb9ojjuoXfDtqUVivx0Xri10A1O
NWWUVERiXEFavBAgdqNnqUdkPXZZNQ2rji9EX2rxSsGsoRWAVium90as0SavOuMSjF8fRgwaIPG4
VdGISJRZ7UKyh/R2E/bbjuFk5RVNaZgyIEooOlOs0a1qXGVUaA5bLojBIA9FuB9iVw8lBDsN4vKL
XDs4ZxYA3jpCkO06Jt1OTZIgvad7BCF9xZ6rJe1S5UetIWfxKmkBI1GQuQQ+JJO0UhQkzoGEeGwp
zbkO5mCnQKmNChsp0CGZfoieI7DuVWhPWXdmqdsmFliCNhJgu8t6mbSDJU3XVmlhq6fRL2PV37pR
WJRdp6yG/nYu0DF+tWZBRriaV9LkhvTG3eHiiomgO/5K3Y+EMHnNedOuSeh79kWcSTfPwh8XKbmR
IQQ6L9g5OgWBLaqHWKFwwGplbUxvvDEiGeK98vWye356e2oa5xAroBVGmBpkEmC1O5qrXZWuFwNi
hUta+PepypFhaN/yyy9Y4tLI/vO1qX7Wsv7/DdQ+RyItRqjAFLVQcVhvwRcLAsDyuh4k/tt6Aj0Z
EdDFBLPw3SKYJi9uaLygF94W6Fi4TdawXlumbIgxL9UM7FfTvkQqeAWcjBx+fo9xh6/IoUNqV7s+
63sLLQzlKOJBl1Iii0GgxbNGiE9ZOG8U862mpJJCErWZx2UqgnUZmdNV3DUhrqAnZuwnhbyIvf41
uW1u7QT3g9qTK2qWwRgnljA0UZ9oPhFwRfag3R3xEE4pbBf9lYW2NKWRBRxvA4IRNsBjF7zAkZGj
qoBqtLkg9Q2wpksAxB9H7KUm07iGhKKn32169jT0ED039F3nb88gLaeTAABcR/K5uwz5K8dWETUv
RRFKIc/fvl73EXOmQtlprkFW1joTLQQ+Of1LYYxY7U3FXRtPzUkg/hTCoNkfc2E+7Rt7UuUyiC1/
+r05x5igSipCC/8hdhcu25IDkdHZWJIgbu3MrQC8TfrYHPcyQx7J9TeM9RIno7rBFFNHANCW5Nxm
OfWAv/ZCptSMiOeZbTxkWp+MNxXWxXd9lm3YmDfzwQXxv2wQ/mwBudVCYRDLDONq9xKWmOm8vgWf
QTaJQ4C8wLIsXGChDb8Nn6xcoizd7sP4ilD8TZ0wM5mUc8JTHTKKcD0Btg0+CPHkkHKncxWk3ejB
PVKSAA3luPI4ouX+mID8ydpvA+89CoEGt1Y7fjU2ugb+UAVZAze5KFLLGvpYU599VcMd0etk92Cc
hbuCl0gpuOM6Kg/IdqEn2bBm+LgDwwfbbJb6Mhko1WKJEEsnj/E3XFoGxSa660BBN2+1Ka9yF3ow
/GBU1gRY6WSHM10NFKTOPx6/ULFMkzE+RkdHLb+/yNC12nDEMm7J0jxYK81F401/8B4oMqAn0zpm
q/NUEL+brE1u/0HPtB9YqE8N/8l0LnOrs1Z+PNtLf1wskEwCNX9qby7L3OFMdsUd2zyoUeWfrVRj
y4/X0HMrBcbDo+X9aeQ6beppDvighAFAexK6+l2Py1Th6dvf7A5GPyb9ycSN9nYlrioZbd42Kvja
ILFt+oSqUI0JPEtE/gWN2zIvchaj8JtDHXD1qloPTcbJiY/P4uE2+Ll2jZC9pk2TsKTccpjC3Yoo
BrVZAnm3DZTtjxzbKCZC23HBP5KUctsMKmN7gvPo6ymMyNotdMwwWzsLd+x5A64aqS5IFvHwwdC2
Ne+6fMJt2mbUEq3YYo/FtbchhFg5DPDhXQIQb2HAN9Gx53JxVgi2sFuyjdJu/MF6bhRsc9Cb3qua
pqhEkSx8Ke8xilntUgs0WHiZdpwO0FP3pDa0yJifQsDq9fEiBDebdgjH/AKTSioXul5IMVe48Wyg
K4UCpWdwrZbSRB23IKmTDCmqWNYHp2y0/EBywHTpH6u4DGYj+9HYGAhr+L62d0jMPfZYMlGrQPbf
VsyakydL50PReYNLdkSmuQK5sdbzwCz8ejDQaBUdmK29pZVUUXHldIRYhZjUmvjPlu1h/CbKviHY
q2uDM4cHoqSGKfLzIQBP9icwOaKk/syeUNU4Cr/64/gQq9mXWea+rTOvr149WlWO0w9Ylg+rYEMi
FcIXV1NwnozO5U4mi1UajiP0VNvY7PtT/qjtEtQRGCL9482tHg6uFQLsGEw43AGtH4Rru9THrpXY
sv8xJAJAdM7o7uZk43HALTSU+B9ABS2ov01NqCCKiV5igsrmZbapLMfuScI9k/BOychPZc1ErlRp
biyoD1ukjpamSnlCLRIA690qGAKGENJ4UJfyeZ8YeAI3vXuof137tqNPkQSZ9rYCKC8SimEiDXVN
mleHMK5vjTKL5UjkXVdTScyh2bzSQP66D/rYsLOUgEqDVeJQ/IhAEtdJS57a5OTZ8iUkuewfshXO
oKfiLRLx21c4tqdPCbva9mCRTk2cEKJWxHDwjCSxhkFQpr8iYYcxBf8hMpFMtKilsKli5OdCbm/p
xD45CRVQ6sXTr5LQwB6XUXjgAAFnQazVRB4+wQRC45E7z8tE4bmro0iPcX2zF9iB/x+bi+0/2MGB
CvoUjjJKZanngcI2SwOPVMxBCYAkL8iCldTpEwi1ztRTFhugkIFfU+qcNMioeJ06lqzeuqyd/qvA
6ckVbJjlFDGcU7tGIHOKXlaYoEotyEDi5HwjjOV7j40mLYQ9zCBEY5h9/j/IC2Jb6AjgpUaR9OY1
RGq/yDUAdzJf8wchHtOUdi4sWH2x4ZBjyo2Fi4L5ZZSlHUFR35Kx8jgWMDxNeCA0uydXZJ/+vb1H
fFwoioWIXuQurIdHt400HiL8w09WqxXvcG82YHdXyP3AWTAfIChOay3Wt8YVMRRSkl0LxQpKlp8b
DaLkxQiPaRkmByxwYx5f5+3TbFrI7a83EFq+pnEFi9IRCRPZzyYstx3MB5IrvsoFf3czzE7AL7FY
6eWkTDzwfU6OazU+5A6mUPJ5GN4WBIEtMwEurKHCH+jCNg23q2RMR22q80BWN08Z1ai/G2a3KZXT
hm0kGAD6SFiKTSUxjKK8Ibp5DkA3m4qJY9XW5sSTxsLPU1ZmT8V6Pk7R7gJM6V6VbX3S1GgyLmEJ
92B3mocmjvN+uvJxHbef/4Pqn3A3vI+79SQnafD76q2HE1EX5ldmuYOAfyH470lQAC94fc3Hb55E
K+wiozeAKPUbMcAdtiT3+CVAnWHtH5IbePTMh7XzEw8k6vKpMySp/uhf9zBWQkaq7oK/jOh9nWWm
KjVsYbWMatAW8JauqcWQA5ZWYeUBH8fYN0KSZJUUZezz32amEDSyEXT+j/qDEcyLtBe+U0aq4+S0
iDH3HElF4IrlNXid7o3SUJ9/bB8Lzi+h/r8SU2PLpPJve+2+0iJPZdCGMlxCD//kIqRyvAAOX4zF
vtj3Qj5qPdJuBqwf8xjs3BzDtM5PfhN2skOQ13xDXPUBfHAr7fOE7e1fWZVTBM4fb0VqvWwr3dUA
FOCUB8WDAC0IR3qhyPlJ2il/c0dIb3u6l6BKsnB1MW/NkViE29U5MZY/x9SMsIH1AjtYunHg0eS0
kARTUx1pwpDKwfwSwbZMuG24qdQ05YR3UhUJ+xsIG+un3DwDS6Gu+N0NPoljjgay8z5epVzqAox9
xQagpApOrnrY4T+16l1p1U6tFXvXeRHxQDXVvCe64Ytf+i2uae5roLUR8jk9ZqMNEPtC+bBQ3hf6
mUgn9+1zOa78TluwZbyAhfvLyzNzvHhaPSlOgurYo4HTIZe3C2gmJW34BjXdYvYkGiadOCcayTEf
L3Vqwl+5ROejp384DtfPie1Xp5CMdIbvsAnEnpV4vTUDKQ26fQVrUb+Y0+Cu840UQtHOdnw1CaVL
LCC8dO6EwgKbyUBIeUdY+H7bBViAc89y3vgo1az/YqeCVvU4f+y0KkZKr4ktbv+coYV+s8RFellN
N42X5IINgd8t19W+pgfC8yvKrzTkrzKNE8A0MusRObCFPs9lDpv+ZTSa0+DTBEhKRzh+1JP4ONae
uE9S6Gr8KSOpqIIEHK0CezMyGbtWPCEihvsGaIqheay8Al7wYOcTlQbuJW7CBultsN0NcsZu2fEq
yWeHo+tyGUsxpyAkh3xLE5LTnHQl2k3LqFc7XfI0Vi8s6Mw41vUm6oZTXgmMpp1yM83B4UaXZRd0
Lkl6XYvtf0vrIz7QcSwIBY4klOFDCbS0yeSfvrpQe5dzzSu8csmjppkbQyAGeKDLuSlyLUoR/1xz
xcueOhHHJu7UGVY4yDsQ+y/Vz7WX3Tp1WjhegXBn8A5HbY3qxrhveJfithwizuTCOXHxqor3NyiI
IveFwUebMaonzXWspuuVVCJr1lYepAJ6CqQlueJvYGjWGFMB6Co7duYxezJsNaKYBvkDBe841vkj
2gfYOx0FPM7vnzQmZ6u9+9TWQ9upfVgZ50AcgGduFPlegxNlWjezLguu2Q9h8s7NJUqaY2Rw8oUV
oEesCZlKMDbFD0AyCExOjj024O0AyGIu67fBaWUn8IZqe+Pb9AQ6jvWkLgTRTy2P3AjlANH6Yloi
2kLUX6h8c0+NnvwgGdPkaPLy6772ntYb+qNaPb9wFaEWrEatd/4ZwbbThCfidy1HGIAVyqqEobBc
TlTO4EAVdHSR0abvch2GeQiKTa9Xd/Xont7n2z1rNxnwMHHbcyNGKUPMyE4LajWY+EpLyz1TdBSq
AOwko6TeHaA4jCM4skcJcOilWXeG239C6vTlUYmNAKPvXPvTTsiQ1yEiEhwzirZE3G90J7s8l92c
p3vwy11iQZV5KAmUb/bO7ij2LMQy/fi/xlBS+UrxIGXCfHISt7mnOxdrw2RPw26+LdRmZLPFNs5V
QWUoUqJYL4jF9GjIJHVpuMUBtEpEBKWTN0WCUeqSXktduLHjlv0bBzoOnNmaxKGw6S1DKq38gNY2
idBKfT+BmceASMcWwGMFHuiaO9i0fM7B6V0MWoc7mYezoRMVOKhgiZSPO148mGILomYwNgaW+PTm
L3hru0nviOQ9AcrNkmZYEyX7Ku4b12AQnwo/y8p8TB2sY98EXSD3q4TZ/Kdn8yiwQIj1pN2X+Uea
Ugs0yX9uOTdCwNILY/PWZ6vPvdPKqULLiY+sRY0FwJIVKDK4YWWLzLaG4CTtcmj0eukpd6yU5hAI
y6cOF2f2n5N50hnbiv8fAjnrNSUvuyaXGQGLjdXz45M9uyDh5h3JZNnjMDZi4PeYVeXeYv0PoAss
s8NnjbxsT7y+cIBGa1VcQvUn9qodqpxBbpPNevl3Jx8Lf4WGJjbvVGUF364yh0o3e87i2xTCxB4g
5KtWjJQR9zkpwgWbhFWpe0SvSrdW1uw7jd09pz12IYtO2iFTfxhygqcR5+b571nIOoqglKf90yAo
DiomY/vINRP/JIkD+CngoK+b2sJ7ATs1g/N++usYnWLyeuAbW1c07lducHWkC9MVOWmGzW/qtB5w
ZqTW3jGaGQ1rkPSZzJ2tCYLpHXuKTLSHAP/Bpgx8Phn/Aqvtd7Ar2RLRNAHwPnWxRSBxFt4JOTEU
fNOZT6pKDS/KZpuYlp4YbPpqNpPoM+qDokivefFVQKG8k7JbEA538+2hsd5VuA+Tq9fxOQcDK8/b
Pgg8Jxi8dz/G0n+F/D/T4lps3DsZ5blvPaM3GftcOS2yOQBopHTBY8benYGE223+xsdY6XIJ2jsL
1tGNiKYKZ3P3Jni3EXu47lMpJx6v9xDFDmhU2OyKoZvWDu33zfM3tF5Cr0dbIz+eZSflUXQNltlj
tze3gvz13VrocrXh9IhfRVDFGzAfJTkefsvpzH5Dixfd94SLC6rNx7IFmSzXgkm30YVxwzM0A1XL
cS8VCsuRo5grWKrYm50My5RqGe0p6lsnu1Lzvxc+WYPToX5WYv0K0gAFGvfjDf9oEYYYrKWAKLkI
rFT5HUqLyf5yWPtE1yvtfd+erGg3kKCyq7/Y1vAAvhsC7LFLabADJilaA7EYOZ+SAmqvze2RsUgg
Lh6M+QMQffOTKsfklZe7tzVtiP1BFq1NBjwIOHaPZG5mbApv4Qew8ytz5HCd7rek8dGDqX+WdL1L
/1TyWUh0r+iHep4Ve8bIh3NSbW3Gprxh9Zy6cUn7uklr1Yy/QJiTK1znkED4HCzKlaS5xZpnRAvg
EvEMe2e6stUNMzt2e3u8pjMlke74dxYfcPR6jb6aOov5Z0piNA9do1CX4OuqipGghhTJ/ip278UM
Eyy24F/jCPVTSRGaAMqM6aZcL39kpDjbC9/1aSujdOhq7Jbg1681XH87doU5kzQtNwmRqTvmxHQb
TWGo1MkEiewhOZvbDKYBWs/LGrlmWKRIXatSc59dlQ282REddoIADRFL+sUBGWsUFJ0hLZxL06hM
oD0jICZJwon03lKsR70lLQV06ZWtjKhQVltIZlrGOx6IVwN1MC9j06Rny2nFyAgZQMx5inHZXmH1
IL4jimzLZ4D6vCct/AdTtQPrV30nkwJsfd/WDlW7bPoJo9BHH97nTczINr3Q41JSqi7t6WXoqDAU
qqSfjaI7ltL32VX36PS+3sS/ZJdM3uZFIKRRgVWaly9wwh6vpmsFuFy/Zx6bt68QN6W52Y2XBCbz
pwEo1cjVip0Ougewaq6gt7d997H+8QpLB81suxWPS0/WdXVZO5gVZ+PvnLueSwW+1w6MoEQEmOoj
YxCeco3ZjFbaVhmKGNUnaNZAIzYwPkOzMBSA3eKxqUBSKlmTeFM0p3eq/22rSTKKTDK5r7oLmuzw
v+ykjbhW/pCWaoyTsv8Li9Ag3dIACznoYh0Nz0gIQpaQPPePl7Lkrj6XOYs9mJ+P46Xn2U4Y9kj6
EJgiy5I8DUxKR3ySPXz2ocS+9hWz6/HIOUirooJEstZd6UoAvTtPZVC2sPAgWAz5f4td1C/IifYw
Ujg6MfgKqlk/ssq5wJfvNqZdBEWXvIlHtx+zvdgj8sO+NZd8ZxNZm9HvgzQtqauUa3uYuBTkDaf8
//R7HvwHIrMPzR/SYILZ96RwfRyQtslc2BOVRJK+sB/jGXDFfWRM7omYUk9KeFw8ysPPKuBLbDdD
FR1ePvf9KkXxWMx3Z/tAEegOk0x2L1wMGYU32lJdA/ClUGDgksx203WeFqj0xh4ZecceNvz+0JEq
lhoy6q2hB53z1cifGObhoDk/+e65cO5yXZKFWU2a4zoutExINpkgmm2vZh/QBmxoG6x0whtdunKP
pMbWXEJcSOdpPOh0bFQ2mhEBQn95J0oeYBo1L4Yes4V1hzfyv6Qf2uA9e9gwxSBZXmJ/khlVKJDs
yQIwMTgUcWTDkNG6XwZCdblPK3/zx5vFF34nxMmaHcSk3+YcuAaQ3vJtZ7LTZCgRYT8vuc8g4GqX
1IKi9X+gWt0YNud5XkdEcAjKuvozG+lHxSq/U32XxRi55VACAILQIo/AFEBUuBbwUWHGJLDqs8GI
IP1O/vZ6Yj2uxcCWDVyVCtPcl9jmPq4YfAZc20YfTjHK/YZfxm8gP6hRAH8xBkrbEDnAmywnL3bm
kguwKBpVbWxrByrVJ9f1c5MVSe4uEVDTFurVBfoL8SCrOrjMk5wckS8Xm0OYO189t8uZYLO2AZWJ
CNzVo84hdhRDXyTEassqa/8veBF1keUpA8xsnhwbzAJGXBf0ytuk2xgBUlS2a7XaZjiPBSywTgEN
WeLv4P9482+45FGliA8vho8Me7Bub9mqAAtbZ/98nPNkuJz6Y/6fvRhRX2T94jJMf0Ez09/bSHNQ
ghBuVw3BAqW072QnjylE3KvL5Rhzp4pfVhQdUlQk+vVyFJIqveTKFPxSHotVT2ACSdnesyGGmGyg
62yFdIa9mkVGZdEytEtO1WKc4XOSA4GF0e6WpZwZjy1DXejVrBLTU6Vyo+pCxxEhxcdvMnB9ZUbA
TgADwkKZbWiInGcmQy0leJdsO6G3xVsgVyqe2suubh62JqegwtVslsL+wnqHWoBL3RRPlPi7eH5C
gEu7NwrczW0qeAC1DEIyZPr/sgiB
`pragma protect end_protected
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
