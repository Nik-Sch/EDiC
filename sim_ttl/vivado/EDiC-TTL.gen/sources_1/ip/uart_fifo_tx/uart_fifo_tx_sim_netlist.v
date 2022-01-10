// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sun Jan  9 13:25:05 2022
// Host        : niklasPC running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/niklas/dev/EDiC/sim_ttl/vivado/EDiC-TTL.gen/sources_1/ip/uart_fifo_tx/uart_fifo_tx_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
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
cl9rpxp37VBw9qIYrAh3WNOY/leG
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
