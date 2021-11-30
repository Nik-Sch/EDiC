// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Nov 29 17:51:18 2021
// Host        : niklas-manj running 64-bit Manjaro Linux
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
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
XD9erTfiQ8UX+VxM+/xDeDil8xOE
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
