// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Dec 13 23:22:54 2021
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
J3+gSQVbageZNWe4hbXDJWkj2Bhu87OLxdqhFN31o1z0lFT6hR3xsxBf7aLVyEHLAMFr6crwB2wr
PVFsJ3Ukwg7xcvXme7V8nkLwTA5lfks4+eblf50B9MmRY1Fp6v1KWBRI+Yyxq4BZdaHB04AE43P7
hOjbovI5RFtEZY4gLKpvxuATOHZKim+kDwsha0hCSbLVw3VnzhNmQ40icwMWVte9n8ZXL1SWA5Cz
4/yfArTzPUamlzFTYXuzMKT5ZyJidnXo7gGZDARwGoKJg/XLdaFeYu0CUl/6Uhk5xJfufGaDqsrW
Fjx70Uu/f65TG1vFwlTC1yuqhp2X3ovB8dLMTX1NrnAZox1bCUJ3D91O3bjctIUGBRdC36r9PEpF
gWiWeOCQUVfFxAhoIZttAoQn6lljrRo7KYDoDfQgQyjkAfw0Snqx2BL5PTd1kiW+BWundCptoEIz
ZYfu8KYtZCzSKixkXpknCl+edMFJs2/0o3vugKR8aCjGlH/WxFl/Y3cxDGw+gMRa3IljdtJb8xFy
pwQ384DfJXRzb7NjOTYeZ2WX6Hvxe5sgnTHlGkGQN+FDdFcEDAQ3yY4d+cuoTt2Wb9BiUYaLTcl8
iPyqIMdiwMIPV2TuT8YsRH88mny8m9LyGr9cou3EZU6WsCtPN1qo7fCzQEqgVEH4A4Vc+31HGvnz
p/sMNZSoezbnL2vc+Ep79Fo9OQ5uKqj2maNRuK2/0g23nTVSH+ha1jXG8nZng06MQunCWgqdAMR0
y63xPgSLYyqogZNq8vT1g+lxXARojahLMmfPlFDFvsgMBTjOyZP5ORhpo54t428DpRvnMX8mASfW
0OaxxmdZNQUpsFelFlkYXCnov3DvAzb51toaBsbqdZHb/Dc7rlIis8s0eet8OdnOpOp28GA+vCMp
9kW2GjACNgWbI2oJE+6F9cORsndHq0Kp+JH+DL2S4OMX3j5VY5GwZy3r8RHo0r6uXz0BUa6vam4R
MWX/kvV98Utqv9/M2pYfwiqWUEQYPxg+dJlcmSZIp27CAAZ6qT0tJoRsL+tCKJDD2sN3eRN7awg7
zSm0PQ0MwieQ0jcY+1usrh1b3BdCWoNBD1XMyH7sYf158Z09M1xB3BedO8NQoZthClXn8oCgvrDE
RxUydwa8/Rq4C8Go1pV1H/kWarc87XNrlbjOxOJO4wsHmoqfhAyugePOaJGiZWXnzkBIFf+5YE5C
cGGiZgKPi0cNZCHZH1IUX3UYTLpfSQ4MGdMtvN2q6T2WcEzoReqplvJkPaZ/FklVztwo/hQ7HjCC
E08Qk/0Y0CweiPYnbT9LbL2DGR5E80QGYX9DKGeUiU+4B4q/Nb7phJDBzpahCWGI4Oqt/tehjEEM
6e9q5VqIIO1ryEJanfKFeeYGBeB1Rp+8hlmL7t+KKCnILSda8qSQKk1vV8TCAT6B2QY2l5l5HHbZ
0czSYPtedU3f2TNQUyi4HzTYtxyM9LyC2xrYpGaU0H93A/QSwLwnz1IWo9Qc6/9FOyv/H1UcZKCH
O29I2EJ6Q4l+6wDuNv2uBlRdMUJgffrSOKcdZvz/x0mcYWT+n3xgSv8HAYkKEWjf3lQ3I3rFgZif
xSK2QLj64TKckl0ogLeTweXJm8cjVHLLUgKg5bhsfvJzxFGL5EPqxAsB1DMpdNRzqOXfg6g3UV5/
ZObqfVG2GzJthwrXW3ROcxrzMP2m5bu4+B7WwOprckToDBJcgruWElHdFl2aZjxOIDawQQrssXXz
Xsm2Zs1sVXz7r5l37gNFGotF1WV4M5tp/U7BhPlT+VtoSLqnluY8zda0u9jDfCz5FSryfTKjoDyw
a4dTDMgDASZC8kK8krD1XpHuzYq3lng3xhhjFxnqTFT2MdWANXTmm5FNxsxK8bxk1ZosBjB3TZY9
k0DapYjgEuNVJKaHjJdG7lFe1ydDDpqQ5yP8nHoLqRKcCnJ9Mxx7sNvi1oD6v8ERJRZr273XtIKB
lGPDfceAgSvDf0d/5b9vtr52scz5Vi9QoK1slkVEHyeILPsRMJCtShvD6StwkQenkBD9mJw6pOwH
xwE9/bHk/JKjQxEQF+Ak3wcg9uDBlEjU7s4+TZt7gQQctC4efBxjfsLblP6ZPgjretmUHdWHibPY
Ym4pHPKNOi4kta2405L0WlDep+A59dhhdRFY56XPN17eq7pF/qePZ+2ly6x/iLHSM02XNvPWwhhv
8QgBIIeEpppFbwalMNkWOLxt8yhclU7iXeM+YpU4406lxk2P7D2sN+ZVZt/ZD7xbNQ6STEYH3uXk
m/i17kh2xwJQuR27HS3p/hBc+VxDO+ny6RTmiPECvx52uXaEDhfpTuGgE9QBpexiODyiacUw2xjk
sITxesu8rV0CvaXNPUif3jlCYe5cYFVuB79goqvsvvhZGClU/+FhBzKNzJAJNpF4iL5s8PzoEYP/
dOy6HpifQ+BtOGEH8V7UaoTSYwTjVg7gOUhp1GaowBshFHfvFd21VMMUDTUJ4x+nG2O4ujDPUeDV
4H/TZJfnGHbAi9sn5jqDc8xwv/aQ+eOMDp09ykBNjbVDFhHnY0JAr8THWhkfAn38Rbp0fDEZNkyG
oEYKq8enjj8hmjs3ati+grHpuRfyte4yXBSmWWO8JGZhtskaVtNJqGjxqMun1iPUAGJ14kU8NNEu
fGLx9p6X6gkkCsuMWukCEfAf9vc84nDd+JDX9l84fNYbtJ6CMBxZdH0a+ggZ2QGxZnv5jTs3GUis
VSaL0yzX3DsO8uLGigQ4Bl0ooHh4cIGQvX6vU8ppiaa3/Z23cI3zIiKJ3wO5B7FePIhkGjbyP7rx
bxWE5AAIQfC7YktLugEInt3FeEJk01r8S5R+H8PJi0lUOucXqhbltk8FD3HZDXXnLIBzpprkqI0o
jDhyt09V4owuSJzrpW+Lf3CDp2BxTctZ9JEjjEF83rkgdsDyV28UT+Kn70P5W4RE5S7w+Rf1vo9V
xsQlUHpAfldIYpfDLsHMLfmLkIq1KGpWAIDgcQyn4AEfEPtZXtdU324TsVBhixyqRZA9VtNOdDz1
BsyCx/8TSsgmhTcpS8jS4BIv8WWEFolGoTQXmJN4AI9jgI95Nbun/XPEzfiqBhbcTvmeniTDdFlT
Pq11+Pmui2YhjjIual8Faft1czRjZJb2rYiXpq3qHT3N3zmDiY/sOTxrFHkCDbdfx20V8E0dyapO
SkP9idGH7IOGRhXzRAy78HLNSF29msNnHtW0rqfdO/v09HQJ3yO6+t9NpmUv5RRX5SnFRiLYJsLn
iBGBQGtyXoMynhw+IJd+xH5/nWYDKYBD7zIz1UiitFvcx46rYD4/a7BftUY3zq+61fdOE8abI95v
EqdQHJ+MHzJkcr4YGIxencSGai2CFxCLwFqYbPv6gu5vQtjGkHECdox/P5Z79zhEfhIX5JtZ7Xy7
wdKdsu4UEuOWBQcvl32/p89SxANd4l6tKEqS38lXQ3JhFLaIeDBv1QKU+a+NSNo92jTeDx4LlXKm
M11SVrX34nomrg+FCFwX2DcjiHFoEdh96C9rbRZXJdJC+8+40rCFbxGyfE48yJR33F7kKZzh6tcN
omhEMFLLeIwz8Z9D2oLRX8+GSxI8tkCBanSOYvlGewOPrUuDPuXJSrJNFG+EXR20hPqxt5AAehOJ
fqZbJhZV0jq3qN2q5I0vr+afLUPYti7ZHs/TxE+oeL4qABuqE6Xh980fM8ThOdfyxcU7lXlDQF9L
y0sN0pyJwUp024mVibikav/KnUBBCNQwsQXRMb3tWiyohZ0En4SNPcPhgtt3Rrx7GF7THTUmfZ5H
Bzd1siKYNtMRyWACilKlHghGCVxtrKbXyGAA6CdxaPZ+r5Z3g7mgs1DgyoqYNhRzQZ7S/Wf0Z3zg
aleZ0zPitA3sQ9+sMvebXA8iUBw9T+FEHbRtOEcOXUfAUlqMS+/rSaIb0tK0GQm46NRr4xrz0IFO
bakrUv7WZzqq84tFCxYZ3RqO2Nwr2SUeh9FaE2tTd7/U2Uv/hSRb2wr7YdcvLEB06gibBmyHUyvh
J0USj62hj38AcXQYvSbYcjIOoJlzHx3MdvcpwqnxPo7Qdb6S6zC0LsTER8ZSV/peLiY0My4JWyQm
yRYfp1msEHwXmA/gL9omF0lC+3mpi+obTkUSbejgewJ2yGJRQANFR2miQjimtH/v0ioNeykE2IKc
LxYCARvdVlFnP6CU53gmgHh6xPaUeAAyu1z8vuXUOEI/wleL96A24wkcjUsOywa+sVxpfXRCHbHG
LYOGtKmAK+qrRNvsc9f3kITrpMkFh3j8vGGocwCV5VyxpHQ2peN92BrT2sQDaE2HIWd8hjT8IHUA
F9qduKFTGKeHwUY2cuV60vECb9zRboXM29gQ5rRuFe3ntmnw2qohhOeJ1Neu29uxWPDMCSEsu+kN
RCo+ip7dSSvQKzpiygndc0bXsSwwbb7+plwABgcp68QRK3ZtKmFxJLYWqXbtytSrlSg36gtlc8fo
4ohxD8HvAtwLioyet6TGQ4tRdxkEQbNGnFhuXnfxP5Ijf26zAJk1VbkCNwrh8DSQHAgj4Hpu6X1I
e+klQhlbxn+9EXX1psb2RqbeU5X6n+tmD+5Efnxh+WlSVbAY89CvxJUYxNgu6CgH6oVj7VP5ftKa
tvuCBpPtH6oD9b1lIxQcTSODxUN1+8VdeFneN8EEzAOxgqwEfUwjFSolsc8gLiRZ6EW8033xuz+f
3C+XT1DGVeMIBCC3iGFKhWMshvJcSyAAcL0cEharR/IDuccrNmvpoiVeZNeJDfKAP7jwJ/Rr41q3
X/5Ah4fhtN+WSe3mGa3lbBjzmi+GIa9tdqYCMoHFyC4DrGhgeHEggLHFtR79hL3P4yESKOBUNkNm
oLJ5qEX0eVNzO5h0gLfKHaIdm+GSx2a+ZWnPMyf9f3sQfhsHoDl8z97oWz/Pu8ucX4Kiwo6XU3Q2
GT9fzxZW7gUUAPO/zSLFhDxEvBhQn6a6IQRex2wtw4KsdUjiYj8flhi0PtEGvaUlLZbxJ9DL9x8l
aXg6fMUzoEGOeG0nu5TOI0frb2EDGvjlqKy2sSnKYOwom1cwDAzQrTISUzHNhx0TrF+yKYoaFBxe
AeeX112vKXwLy3fXtUiSMRfj8cQVc9/2iRsBN0g4ESV70WrNHb5BOnanLjEtDlxWCBf4qxpV8ZxF
tLASZW3dBjQC5Nw8h6cc9V821UVyZPfAOWnO7Y+h+BAI61VVPoHpqDs3D16I86wk2QNPVqtUR/Z1
9laey9Lt+qqvnMt/5U5AdPX06jsY3PUSuhzekNMMQrgxEwXLYev4qnu9bjovdJnu4EXUWfZHv7hx
2SBRTH3qJtBowkhzgZE0E2+7YfGD4Zqb+MwiGKkNgGl66JyAAZK8bXwqFs9S04DDKE4zETxspSEX
sSBcXSNwJiHjNFpsD9gU7chvvkuCLWmwbjg3uv3ppdNkHpecvNsKmAwQnVWLT+FtA2uCM8PDAyZ5
mhTv518W900qkZzidiERGoKlvNT0p7h1tZ1+iGqZIxDehm3LBKaxGY370zB2FeCPv+2dPMJ9CWw9
j2PIKXAiROarAeUJal3cyRozEnylZSQG52Fa/1Ct5T04yqaqE4o2TaUcmBqb+z4OvTgn1v/rfbwa
XgRzd/uScYLxsASTMZ7+pg43Mqi3nJ1pERe6Mea14zH29aw6lrh01iFCXBTcQF+GGQ5JIuc54aeo
X5H7cb5MliJLcDoyqncvhRC1/udM2Xoi/A9O8IsQu8i/czJz27bFDauasWrkBaTOK73c4QYjMj5g
IN0wpNwkJNty1EAOK0Vf1zvnbjLXi962Zjx78HIDAkXxKWygNaNlwmZ//yEUmaA3rEgMes7GBTD6
Uj7ED2vS4Mh3X1UDPKNWPfoHIJz3x6ayotRVVkKdxvMfqpA6VcHbb3WB+DL0bF/l/hbUSoM4xtR8
4BPOLX0lsXBolh+Lw4yDragdNYNOnN9HRPa7PTM9sbhCczlMpIE0ER3VpeIFGehM4rid1KS+GRAd
0IONlyu0pGhYDNvHnhZ2er7nihhzNtEMSKNHKgzHRW6Qtw9egLCZXJQtqWKf4SkpG8h0JRSaiZ5p
LZJMh0U0hBhVggNk8Ds+pVhx/ZfZJiQ3WDFYzJ6F2PdWHHBJWN9TGu0A9uLN651W33OjhYQIeQQq
7pEciGNjBfHe3TltAy+Y8KxjyLRMdCojfQQckmxoYq07ReoMBGyhDowsg2bxna1jIEBpn/iSQWuS
oIo2WdJVOeaPQm0tUG82MSF3+6DOJRNhd/o2BjAl8DbqHFC791uEOZc2WrOlOwHYu5Bkhj1UVlFC
DLRilvWtwyti3kQGzsTt3TVVnwpWJgeI78rurh/U5RR8fDs8DPdJsQBPIxS/X5uJGeYvcIUTaLlb
HYFaylBlZbDRJdTTzp+RLENmNOY5w0m3LTvbTznQS7R2RSBnOInakgtCAQdFbW+V8giGk/072ce6
yhYHFmMrzfbKahxnTdAZbm4un/NQqI63xXutinAhE7gbkzzb2sI79CQG1IYsrYM8I/8l5RFVK32T
gpAPoIEjUqsX7+xObm5HdfWIneedphSIlHzQYBa9eNoFDYJQ9Ye2or7J44F2KMMkodcnCdhcfRgl
CKrqS+GPEWZb4kfjr6FAZt3UAJng9+N7ZmKLQcuksNGIzviRfdYY2AKAlxH7L2eXbVEszUVhLB60
NecTl1uSuhpqvJrV6ckH1edSYKqRnF3ymg3c943jsxdub/9mAl4mBeSdo2a9IR/Z2SSfgYP2F2AB
8Hw1woO2M6a8cuQyuJRwvofeNJJqm0cNyXvApB14JvKqMJIA+A27qSiZDuftL1VIIGcozH+ckqGx
9vI5hstfzX7y4RvLkk+7r++ss3GiEhvQ7G56OEzDh6Tr9psK8JsDv4SAAoIpJ4wH1X3CLZOiuTMP
Vhy7x96XuuWeasHB+Jqkaxtj4FF3Lw33ExKjE6xwmXvVWB4AtLU0OnTyfR6vRvH5GQDpQ/gE1JXN
B3JEQtZB6y2xbgb4JFJM2PE3xtrbDRmg1sdu2fU7oxxjaR/i8AaJlDykfwJr3Ca7dNA+7TIADXcA
1qeJZs6nL6w8f++RCYQIhw3UOTVrFie3o+WFmDjM23HtvLLDu37WZw0w+kX2dr6rEtyHYWYqUmLo
pfegbiSrLEDgpm22QV0OLadWmPPsudg0r9UDaFZWCENFsx9uvudykvh0fno5c0oPWUYl/B+L2c8c
1ViB9Hdl1oicLXsgBPDWDLFkqmNXljRMYy9P0OQokOmGU+zXeyFRMOmKDZ3+0fGs5zoDyjv7fBan
jXbrOI0N1owx4yfO0Xa4c3HDhrRSW17fSaez5J2qxNFigNF9k7Ss9vOmDcu5x3B3UUb+VjSueH0D
s7Zkn7fwo6ow5U0hDzQxFNYfiYPDZIGdC477zLTvHYin7EVrjVctf8gZOe2Tzi9qU9a4HfjH6JyJ
NHDW35Xkcmj1OVGIrogjtibCgHwL4ndMHmpJacV+9Qk+xUjZ2fr9wtTp3Lm5JMkiKusDOW+Dmh6t
oF7JUOB8izJS+eyj9e5A8Uu5KkCJMnmQC5aBT1f7SIPNHGy1X191m72cpcwGvi9s7zDf3972hxvw
tSj2LhxxfcWC+8XdaFFkCPj0SzdLejJuYw7spddoSNYni6scb9i8H+KWY4E/SJGjpnnX6wR/0CJJ
BLKapizhmIjb3JOPUkkpmP/IHZHX55neLoL0ga/yGJSZtrOEqg3fTlM2I0j/rooQhjCVlxmlt7bM
cJQKakHfQuzUhidP0XD7CDP2+qPHtQfYZyhhGulze/v+e/4rBsaEJ42mhCBZrM6ubHhwI87wo1ng
PvoNIicCJq5+4Pw33WVq6hRMWADfGQFtiFzB7JzPUlCPgBpA/JIKRK8NMdo3roR9mN7dctrf0z3a
/LmDY/8CG+o1wD0VLqun90q2EijxK9l9dPTc5+7yJrhxb00E+czDw/+e+Jjw1guY0HpJxmKk6Q6c
Fj70a9d2Abb97Ssi/oLedIDyKlA9qfMXkB+WGjbrgfBCBZo5sh41xet5RksNusUYgITDU1UpvdKL
SZ7EZsnrLujA7yO9DNZ3g/zVHE9VF6NSArrVR5XaLEB1CApbcPotzTRm0C1truLIWXLX2p4CTNdr
BCN8Mc6j+iZmqgo5JqT+i5Rzqj1IwC5omlneSa1IffUXyzZBE7HA4Lye1qAM9IHK4KZBmO7a1srl
p+rBol5SnctBTYhv8e1Frg3o7cffAsYNXvPyGkOtnMnaODw4r3yuhqHogdTt0dGQVKMNKjikQH5p
EEltkjS1/mz6IjiTMMbZjEPL2bbFHENwDXjzg4gc1y5rDOVdglEjYFOb0BUBZVLDzUhkGritvC6+
xQJwcLGn0tf4G1SBfahvf2EXzdAZN+jYVbwjxufkUO18ZJ9HeXlGKSEbRkb9rUcZ3eOF4OpB+wDp
KxCVmKC7dT994ZE9aWk/YqW73BQ0S+NEvof4XE0/OVLc8jDimLhAmiDNq4RbzU63Fe3lfJF5wrrn
gCCQ5MoWaSC5jyERNfZqhTscseK1wDkBzbNGXVamye1DMEPRWRrJMcTmOj74/g5zWrx2L/frYcYo
p9RY4l4Bwa9DxNmn2OGWZ7c4eYfz3+ke5NmRVKdZAFhpnaTE62NjF5y8FXewfhR84HKrreGYtSkp
s5cSVmESRVDtjw/vSR3jkTkwlag4UkvLksjp/2PuwzE+XQ7TAriUo1WXotRzvUHbnzYYnl4pXLJj
H3WnHThaItg1VJJbMmzTC0J0F4/5iPKUZznZSPgw4d4erRJE7f9hm5MKKJ65NdD4GbOGj3vIOOsc
Ky/AiISVNBom7z4+NhpR6djnExYc7RrDmVl5gLzTbk8K6bJgJqNqozN2j3qZ2DTGYFbfCJ9aFyql
Qs25rkXQLemF7vpTcU5a1j4KJuOLZN3ou0g3YhUos0Ijc56m3QeADqCQzy59/6yfpUQdl47vrWdU
738cyIpbivgScIYn3RorlL3beHbvZdKgZNtTKk8NR2jR4a3ZBXw/h9hhB8TIKjBWyPeeI3WmVh0z
hPENONjE6wpiim8zKFbEpZzEvPEHs73LDdoYOHtxnItOSQsO5POBn93ql4wD9rqLht+ul37Vk2hA
C8Jvup+2H1nbmljbUZ09A0JWwfoB1GPPr7MBgM0UweXFGI2pov+yjryXIAkpvtawzN2luFrVjISa
sM1QGcBQOnWdJ8WJ9yqHiIweGMA/CCrcpRTApaNU3+ektF7on8Ou5ItFzp+fmAJzScFKIGjRu7M0
HO4waLqO5Fo2YTzbycZA4DtnT+V1xFAw4ZJJEpDkC+S107ptK7Zh52MYe4Uxj1I2GwfSDppfhLuQ
FCuOHddfrICIdMBBqD/WjFz72Tb7GJYJrzlY01Is1unlftzPl9WGo/RU7CFtqtxJgE6JNQbIhDy3
KdPgIbOL1CHUcmTfOU2607gbN7rdpDP3SxURG8P/O7VBfTC3WQ53DvA8NWg3NbUBYdpa0yoNCw+z
eKwzYtrhU4etzLWz+Un5QPYtyGdS3w+3jR3H2kuFGbw71u9bbSB0uIp0TcnlBeXVdrqedWQkg+VP
0O1BscOimk3MlIsd51IPVs+bZdBGfUle0HPYoOdZGGbBVoPFkNl35ekOigUGxizhJfl+PbQHxNTN
a/o58m7/0Q0IJCgAwHOxdJpbvCFwZ4eSd55bfDgFF9HeIYdF0n9NXJmu8PGcNVNBRE2sNMG6BFSW
5wDU7f63xtymaFz2w6tDBS/ZGdsadZFLhRwGB5st8mYL8jaxBZDtwJT6u+OOA73PC/CzgzgQjLjF
0ptGDGOQnAMZLst3scNLaWKoY4oooDE9so6B1kFtYNt/qIp01IN9h4FiTlwmF4fTLi/Nnn+zUgnw
psZtzt5MKzc3ZuSvvqrWAgXPNDuyyeZ4Rxf96+ECbGyHDgUopqwWZiUT/ZXih/mHJjH+vrjIQzBY
eDcIcRYwkKhGXUfHREPTJJZS3WsUiqw++s5G93wt55CtuMgU0zk4TwZ7gbnofT+m6o81DTqo9+lA
R8yZgtO2vqC7yBiFQFA+jGSYPvrpTQVWgDn1b13oHPrBUppizjP4i4Ey/ijdULe+zgNQaE5hYbPL
WumzzPNdJTrJjk8XMilD5sgsLXpx6ysfvb8GF6gPXxfu3Y4Qds8m37hDkprkwdkrJqqJc78B9YgL
Ozd6oobAXHrvdxUm9kw2CJmb+i/wgg8HElbRggb/ZWJK49R2n58dt3I9J96+IxnssDKgfrhbcpDH
R4ZOMXBilNjCMOTn2hgex7YXHkd0D9TxiVgVanBviz3FYLk826eKisiYYkp+lmayhsKDI0BPCQcc
vbTztMs/3x/zpc4tcpSI7Y6Hxa5HzDTxjBTUi8sXALFeajxZA+g4VcbGhb8SmljB3YsC2rzS3VIM
gaOx2hnruEy4PiRghGNdKEF4dhsObfY+3Eg1TpVifRgezZxeC9ROxXcR1lswz/7igRlNOgji4u0m
9rBdsAckWNDIhnudOfhFZB3BWc54XDf5bUz3oKCo2XuwUmCmccFYfY7xgeI1OS4tK0k/EPO1rCiz
iiYFVGToKUdR5CkXskvA2jV+qb9EjV5OCOpy27x6bTEMuJKU2yxkOZXFcHVCC0cX+aVXTzqT5ZdC
9TAu1JBeFb38WssYBNnpnZRXVHwTE2lDgY4GYjmN+Ff6IlqV2phz/i2iiwGZkVUnQNVzlSsWU3T+
8EQs4GA/safgPi7w/LUWMtxPGB+H+KcYm9JSr/Ez7ORg8/uVB2G7POk5Gr8jUCUD8NXTqf3xG9BI
YIkVScbC1VfOynbuSPf5zS0UgC+6Bqa8cU7mso/AuiBevZPwSgku9BdXir/ZVx6j3RwDMceatk3D
B0D+Vkg7gvRNp4vRrNaCV3soRgPAJAimSOubarTbjKGy3uBXBkx04+4Py3QOBl7X67BFg6nYcoLJ
Hlq/hY7QKfMYG1oBDOJyEuL3ku2qhYrshI+/VusCwoL4HlZRmATjwWFbnl2ksYxsaZ22jgKPv4Fx
m41hnvP8T9pIWD2LDZ+cnv/W6M6Yxut7jMIqVJzK55FXvJeMgNd5YmGORCENZM2MZ3OBY3PJJcBS
T1/QFXf8YoPOfO2K701zyx0NSS++lQRlV2HalJCZBhBaGr4wHYM+EsXpkPk0whZLTrdVkeot8wLf
20QqhgAnEIfrqq0P+hPgzspLURXx5ojsHghxUaDFXjyXaTTZNxzBOM8g4oJEQLPS9Ca0gIodRtcr
kPo4w1yTYVHP2i/LLN0Tv6rvg2tjil6vuqCj4aXS4ebRr9pX5spA8KSNPdzXb0Hhbew2NtQaXvHl
Gdp+W07G0TUjXbcWuSUQsR4foe2Tz0XPATwrFrojMbYBCGPpXnb7UKBpsG2qAC8x3rAZ+1q+OL8G
6Erel+Vav5ZpFLyPt0ii09jDKKQNZOsZZZmSBEDyjwoSfm36szuUmRdKQhtKr7/Uv9BpsTDdYiOM
b7N+kWmIZJcWCiJM8bG4mK7EIooK/ICNG4seYpUAKXXJWHSo+qu9VtCq5kXzMtAWlhuwy8ydfl8a
q1L9SDiRa0CscoOtdBBagqw6LoMscIt1nehHNyuBLJPjTyJTlSwXXaVPP8Z2JDPfgfgta3njINTW
+viqge/yCt0ukwsCAzrhStQ86TGcObC0WyhjQgO2aQz6EGlQx4a8yDrZl3MzuO/AJHqkRUUfMNiP
unAr91+GiMFJDZwUCxOZRrEmdejBchF/8rgswPEet5z7NSnrlyWpciRefN+p7OR+eBt5siqI+sUX
cJAmmjL9ffEdQR/RNhzKL0iEkDlignrLlx10OQn+A59e5JKNKMCAQRNyh5XbMnTWRy3FyciycVUf
wSYrgRGAJzM6aM5kNuVC7g1V+Bh0+OVaVmivnvawAuDP6jG1I1hvcCAKzTo6iVWjD032RzpMZUHh
bMQ2yJ5w4k8zzQHaiB6llfM32ZP1/eocl5mefk/n6tjmCK6+Z98oDdYsqUTf4pHi2TaQ8AXrrX21
M+FbECXaxtPEc+MsUFl2GUcLhz1EfJ9Ky/WDfmrEUcn0aND3gQ2Y8J6/yenlTS2+Pe8PWGyDyyk3
OhjvaWZ1bFiHHu3MUwHFCRnBswy8kDOJ0381nYmiBhl/t5X46rebYKcQCQk+fSbf0DBzG1s2YqLJ
l04j99M1nFo5lXB7ETYYnp3Yakgqt6udTSVSKicEbfKM1i9Le8gf4kWyRvkw9OyiUt2ujpIaBCvY
cbo/gQn2RtUB/DeAbNJNT6rNLtbuzEMKzOjTSqlFAKAnbBrH1HBROwYC6XbMPQs7SgJQkoenC8TD
pEX4UJVMkeKvmQnUEh4xe0ftPV59Jd1MB/6k5iEU8r28UuaXMApcz3iXW357C4p5A3yChF6W2B7Q
zePCbWczSea6ehnZHF7s24e4+55ruCfYplBPFlXPwkQHvuDc9+7LCCeHxnhlnzgZJ1IHs/9tUi6J
A6I5jEb681MDzKxkrc5KW5lFGX7VT0nc5sYRaCpuhidICU503yW3ylKV2Eeoq77oGq/ffHRmt0wn
7YAMerEoVEhtmZdKgSYYJ3wnhVfi5hEba3DwxBbmFsEpbVYbY9s078rKHJTOxua5NHHrsKk3HFfn
VzV6M6JVti7bVzxPTYpD/ERjQGyzHyN/3ZigZ9jOsDBq1TelKZOVFyQMbSsRokneJy8UH/uQhh69
k+RKU7rTLo4s5LPSSS2+y/keyo8EG3xVL2YwqefHkIqOjfvDX6s4vUPV3ux05LylgWfbrHLrBRIh
KDOiXUNwjNzMg/5nYwta8pLHB1IJGzN6JeO+9IsERYvvURe3maXdJY2te2LklXymvrtiKpckQSLp
OOcirWgtwI0E+uL9nQfG9vs39NF9DckPrq+vGNddNUCWYR6FVEWPl5E9ha9wbehMvKDGUQk590Z6
jE0HFVW78u5HO/+U40c3ZfKNRa9l2iNO3Un93pm2itfpCekc8dIyprO66bVRkUk3ADHTbWwZ9bnX
UdX/VWh+eXYl5CstJPD02v3p3UD2Uun5QRPo/kkWRi5nJlee7eHfJWa160PL2MT2MjtLU9aTIXWy
IEHhTcVn2UMwnNy5ayGw4BJDzWlltywEpmC9iWZdqGzYq9Lau78Gz8LkqQy9evwqO6CSf8Ybvpya
LYRVpZFpc+hamzESUtFB3/Ug3FvxhBly8KfNIjMCZ3JjmfiSZnB86XuweIFMhG8mm139yIZNRuVi
FkB6A0Jf5RqtSgBqvhPYZsYT2sm2Bmi6RV91gH8iIuu/zL+J/vmwk+8XbBdJ9/8s5wK/PjglB6LT
AcE658b6hRsQpc+gMn+9JJOh9A2uMTgv6rZVaQ1aVVJqi0Ik8Hy51OThIf/F50S2np96gJ5EdCsj
5Q+4IWf170PdqVy8Xmcp8d2rSzWuyuzQvg+0CBcCxMbdkS/x8/WsLmJQ48JWuX4cwbeYix+VGdqw
9oIYjQliNEl1zW+Z+nfm6TaCKNoCZq9SQF8JfG4zEPAaLlTa2FdtmUUdof1IfFs7lBanTPMIDibp
NPBGwcXhDYpUI7jZufJYq6JPxEGJ4lRJnkYkjjPdrrgt+DRvtPtQfJdzkiJph5jE5Zw5NgdbrAZn
GtXsub8wzVqFuMZMF5lXuQ6XTolU7oo261sjh8noHKdZW3eni4vwNLQDUEa9OuUnCZMyXPR8lqH8
6QZm0e2nYnPPlfXH2LA551LfjYZZVKpanPNN8dts7s0i/ellrXzQhBqL06hKRg3bQC8/xYBAe3Qw
61lOiZGmTNDKn+uNB0iWFuPJ5yo7e3Qd1tIJ1B7eacRsBjF+ProgaXLDSbN1UdDKJxFf1K923l1I
OvO79zIwBoWgDDjpZsQgvHvDiMZcOssVdNa9OV67h0/eVDRnhSFJ+0jrxlJ3l40oQymz8XoLHrhy
JwodcBXMv2hTzhX9SP3iyvTg0kXAa+SqSF9dbBGgBoXIsGp2IbdYWkDStja3YM9CtqV1+HYY3y2D
ey+WJQpcLaaTDacRXWnXkLfGGAebDdJUdWF41gvSzNx+OTQRTR9uHd4rSCjyXbEiEteZg+rGaAYb
pSOYmytOXQzmjM3UEbm+xBryO6SDvkMlizzS53lvaGGEhMyLIumZdqcsBoIvm09X/QULMcUNE/nD
rs+t4mw//NzwlYR82AfYPrHgWRa1MDeCBlWZUVutcM5JHdiBvY+FwDDzhJovEuMCwZkMzrG3Cr85
UO6YC5oLFTw+IwtWwwLnUlE6NnIlClVoQY8arxAs5YDuq2tDwW8nqnmsQSw64D2QyIcituCWV953
JFQx+SGDc8VmcIPowh49x6//eM1R2gxJ48hnZEAmmyD+IIPS6Cq6GuHf5f9xQkC99jS2nWf5BQ/6
dMXhmcybd765PTUW54tS0NdP/njAko21GODwj6uA/Lr/EaKIYto4Kz028OozubPC/RQ+uMZznDy+
V5gOhHyP4g/np278/qiJzguZ/tOndXT9mBvfabGumCrxUm1i4asb1alm59Z8YQ5WeVhMjD7pLBU8
nh5iTTVyW1d++bHpYn4SekYgI4u3+voj5qylnnuXVVL3Dl8pPNNxz+a7BHhstoWhjdGcSu60IG8h
FXis0cYDBQd/SiDmopzXYPnyEumtKczY6k8UHNVyMdXfesEjOcc2kVKgysxMzIlrd8RXYn1thXwb
RCD4K40MugrAgHf03kNlzDqhp686zjsfzVYoxDLcmyDrVHPZSuE8dD4CGhtJOqz+ZLkyLxefGzs+
3JXd3LF4y5fph4ADIr9TcqT186/jj/Q6/74Flf9RcQ3o6z7cKktTwZGwelTC6B5Jf8McQdEnWbnv
KSnzu3cnnQ8LEKmOz/mJqqMtsXDCL5+iTfhDVeFlEMu61S5LOSV+58ytBhZb3y5xXXshlBBRy42M
606vXNnGF0tU6SArEW1AZwncOleFoyC7jJtVhOUKUt2KVnvJtcniq0rDv3TvS0tXQ9koDL4Rlcn6
oZGdGV1+fgjbv+OeIGX1Oexu5KG04RBKZGagtRXZFpWE++jl79KGd/yeqrcskoOoqeuq4qD+tAd6
zmDxnLuICs8VPXHrM+7aW4pF3PxoZq3iBVX8EdJhqF/NZBXhc4EPYz70a9pH1JRrfjX4G2+3Ru6H
qrnB9qmzGszqZH6q6dSwcgn2J5uSrlioucpf9pbmLzK8HLVLV7uX+hfchlmhBc1IKaK3gauJAMDg
42/0ItoHBFzp+/0gp+EFxi0Prv2bZvUJVSzE19hTQ9IpPjzL02Bykcp+b792cfgZxkvGk4GNJgNW
Zlm2fIqsL0dgP3z9fqEqclykEYKGynI3aVmNt3FvFCwhBdoCxi18OfEIE7KETmGYI+F6QrpsFI/f
Qhc65+XAKQBoEP3AtOrqhB9g9RoeH7GeJFRlos8Jm9u01ZSMJmyeK1Pz80lRi6oEHF1IK2/25ozu
h7GfModWpPHwSTQNUFmxvR5MvTuQfptHjYK1IQbLhKtTIeN5Ar8OABRwULddfccKjNYGEz5KjxHJ
elypw20YVGz+3viIt5hxs3e3iCDw2g7+VM9jR9MBoRb5+dVkvdv2dd0MNhkYx+WbnJb4ku9bBS/K
s0a5IHSBeJTkZW9qJ/DB79hFkbS7Q9L6UaefUh5IWRZhy3pM3QH9DuZnhBblNXtfDiOz7SLYt5s0
VaWEGZndl2eDOcd6AYq8rc5BC3GqQwJs5BxYbDrWznTj3Mv9WKzCPUxXkfh0Hu5VImQTh3Zdy0u4
MlX2KZFVs8L4Fc2ydK+r12cuPcbLYDJXyVzB2zAQhucykTWj01x8kzSgrYWtiRFaUA8cp1FZ9GvJ
mHB94Di6q4x1yn6GuTJ9+dfCFC8krpWtLf0CWsmNVBg9uqBdVoUu0yPWmpoq9OcF8/Ul0h934Bst
2APV3FV0oz2kpC06jJpKEFt56ugRhFffJPs61H2ZK0mPntpgSh5qZJj+7RujcD7yS+UtiYqNksOa
njDXXIvo7Wa2s9fo8nf+vgK6CeYlue8Jx30ZPWHcyG0zsT4I6xz08C0ga3EhuWRM7rrtBi5ILTlP
juREBSisAF9UpbwSrFX6Q4SN5gJynPDXf+X4IwKNHyg8JOv2LccLq6BaME/zgmZgZUxlRUoCC0Gr
Y5XgDnkv77HwfNwcRTwW0qYCsCie+DxBmoAW3alI29RerdLMMb0y7zQaM+s0OOsVFTIQqAIJD6Aw
oxCPSgmy3RuLbQY+9JVli9ludpoVw1RHUNlnMRrurqjRaCVcjzzHg4F0sv+Nis/TvydHEgTnPmOi
nP3cKTByAURxXR90r/GTvQGrMqpvwECDjm/Zec7w1VXw0YTde6uJoDhDXfeCl5v+2ATvJnhG1z3q
rIFPXvBsC4OgvKA9HLtwS9lIL1kg1+r2+Xs4y4OFno12hiiJdg77Wp0x5i+I+k6yeQ8hRaNtM+v/
kwaI/KOpro8AXSdxMA5yQpQdy/DD/B2voUdRX+YExy5JOS5w8fnltmoNU9Qk2ZYftfvg8091zj2t
YTQyxtTavbXMugHJV5f9IUDcL2cLSJ/uUSK//WAaFp3eKENMN/9aP2KqZdDDJZDydrMAYSw9cnAT
fBgjWva4UOvlsBomqIZvOuPwXYf2z7apkpwmYScqRvQgWXyaNMgvLWgp9PBhDGPIlfKwHq6/1Bga
Gqy5XxS34bTSbJ2OKCczLypmI0V/zjmAqj5w7i8ksAm3SIwqoSMF5embjeMilLIDD9P3rGdLQWH/
lt/zLwzsZb/haEv51ixJ71pmm0Dhf/aQFEGVt5zLMEzyZjxsM7+1tXddnmb6DEQPFNZB+MWPdi7n
Rh5uoMoj+vksVH/Jn2irOCLloXG494f3yhHGNEelDAcNYr98RjsuNYFUQIHGEP3MYaO6Slp7UGbC
hLsR0ExwRq+0wjUye/uZTWoum91ie++1tNY4dJXs1kR3mDb1yfIwti77TgR9kOGuc8Y87b04o7ae
tEbSumV2+K4W/bKMfs4C2uxUJr4K3hxMqSDVW6CwT5Z1izJdKXnZ7BjOzo8j5AmLrdI667VbDzLJ
VmMmr0vVQOPOliIt7FTbwqA+KSUW4yQowRGKhHIbVAz0TSJ8pJdXn+gemrzLinh+EKK+cpmFsReG
WAO6vEPwgOICHxatOLDEzcMOIPRmaQHZ8DB5vbgRcXTwJDPlpDxDSLrX6jPKoC7sFttq4MS7p8ro
tgbGIjzysXJNv0bJVOr84ZVgx9BmB2cBFBLpB4oHeLf5UoThL6TdIGxrF4eT34hHPlUyotW2/VnO
jmHDjCoPRZxCWMYuuYM0SOx8/a8YpMPOcbV8ssRoNCf42jw5X14C2qqalO2NhgHpX98GCPAIn+7F
UgbnSUyhU0m/x8pokGddor6CwddLky3TQRwXWve1+QAhijXEVfqpcd95cY3mbKP8x9J5RanlZUUv
vaf0LEUmX/wxSTyLvNS6HwtDpMhbHOebofXlQqMp2LO+wXBHStwUU8IlmwFvzMFVd6GH8Hs7uRXM
lp5iW2+zF3pFbNdXFvKXzLyaOvAj0YuxVsVokyO8Uw/1I9GhCp1D0+zxcTQAVQctcRig8HWT4SzP
9prPGmRUpTfOalxKH0XYqEuhhObG2yAJwWZFd9ec38E4OPaJLPgb6HupxwS3V2ucDDzaEdV4RTNH
CPQbiBEVN7bXI/AGwiHOf/2c7pZW/TGTyd4VbP97nRHwBrvG9kzbV3r+gD+qPS30n5BKC96fTzfI
3UvK7P81SCUsV9dcQWiZzL9yA8i3rxm/LiG/A+selELTVdpQMdh0LRckmj56pEfgCB2CAsKgsIcs
0+DLwtVTfN1dWaDOKr4Tx1PpUz5EP4Qf6xjdsm+lj2K0k6ZH4TWEMNbRk6sDtyOYIWQrznTGxWne
FayEJvansu/t6VQYLpJ0IFtVRN3PO3UB55wnqFGR11ZDrbXWu9pT8WKqvMWHLpa3Vm2JkUsVsfel
WkB6ss5ONE1KZDN/51hQWEEK4QqWVxb9Q7fpFTmo61xUI+4go+d5fyyph587nPLabqms8ukx0kmo
C1UNi59Clux0a2huh+Q4Sl5+bRTrO+9g4hsLvd7df5wLE3U75PhO5ePzExDzzHNzHiDvI84+sF50
F7VrqRHbVKHt7pKE7YbyYt44AKXxTIjZZz8YUD+XiLoaKFKhudFUVDPPz4DOdysbmIKhH+SfRMtW
x5A7hWecpxzDHX8ZOhjtvWMNq8bVeDjXmSadC9kDYmcHhjNnNx0qsLX0RR/lB4NUYqm1Tor6U3az
Chcy4n9HWrWop312BsMgnDv9dVWDF0Db3q3KDY6w70wDw85Tlu6ReQBV+U1W98zMFKehfBR5r8kM
FJqI2lEoCvh8h0BMM/xx/AEFyCNWFMOg6NpY7l/GacMMi0hkIJs1/P6+4VirH7Sm4sXGWEHBvmvw
Q0COGP2JFXsR3ouLzTUdmb7IUd8OPOGaczhIxcsV6SDZqIHNH6okf1kKTBzOUyugxuIurgRJsY6J
MPWFSrKdWtp760plE+wrju7K/gHup030N3Of2LRQc5aIUNzaixqRbYA3qkBe/7o3DzrcblF+UYjJ
iEpz7Rsk5B+q4pIBYP1qShXVn65jsIT/0YBpMOo+G4Lp5Xi0D/aMc+SMblOHKSDrmrhfsyL3XPCr
5fbbmyzmmeQhpL4AWGgjgSker9/m3v6ehVGbqhJiPFlG+AQ1PTo65Hjia+77HcHtEr5jeToegGYi
3lgrG+HwcvfaVSrY1NMm0n63VIxOiFSU9P66ZYIp6uCJPbi14mB8R2GUeEhShrDRanOo18kKQv+J
XlH/M7HAmDj+pPXbsyjC04pNiODEEGmH+uk1uduY3QSNzGJBqwa84+FjT0+whSCyC7bupM5F9FzT
CwYrUd2wcnOK7XuIZI2xjGUmDXS6ROnKpQ8bQ5fgP1L4QWZB2qMco7VWOyQa6yLVo7GCR9nSfkpx
s9p/MPUzQEePjjBWYX8iOPncgWpeW+vPBoDA0ujqA+LuXvJFIhSHDLNsqfd/snRPrJ7Uqnbe/vUE
yODX7U5GmQgyQxnIoFDGPPbRhAy4PH10V23dS1s4Kf5gT0Uq8Kbj2LOjf6IGmfUPRdalfYSLgL/F
QNazobdwPUSSW2jlwXYDjxYP1a+v6TVvNzwbPcNQqWf9R++++ncWW82ZRUC8M58zeX7zpBtoDMah
YIMOHC+EEj4tcjNWeZffbyatXN/eRQGtVvdAPAlobOnFUwsa4gGI3eNt+UU3un6hU3Na9mPS3Xav
mFe8cg94L00v7cDeBk1LQ0luE5A/64jBM4WuT5jn/gjjQW5GuO6TD4WHN3cb0n3ha5PJsAVEXWqp
fussanEzjgNYg+vh3mFAra7K9zVnZTQAv0WTB9al9r2WqZS/cpQiss04AVLtjIk1LcZ2J4VfwTwj
3og7bRvnApAwGH34TIH8MHTqU4ILku1UYfEmY+dqovm7vEQvok8WY4lo9yVOl4F85Zmcblfp6L+G
VuR1oK/opcqhINSm1Cczee/vIOVxI0q9ABGWpdbP020Xi0ahDnbQbjEAqfDUBum+++s/+jWWUgZs
w7C9tYXK7nSegf5/QVI+O2STpSbG5jjks/aLbDH32GgniQd4nunyK2pFL8RIZZ2zzwZZvHel65Hn
KxqjSMI4ZVARSc2ZIhB+apYlsxDwJtQ9oaxrcD4NfNJ1sUC2Hamy1xHkCaagypWqKzPavPmIpYM3
fsLrFbbyYvukRjlR0GM0WvmmGXyTMArfQ4y9afW3H7RYuATlYOMwodvTiOQvQxbUI0f4kjRyznsY
mYW6XHV2x3U6sNo1O06OsWfVA/8fTa7NVM5zhWgo/X+OucOB/WtMmMsiszd2wUWaMvELjzAy/uPD
u/zzcCmloCnZ3R76WtNVyUDfmFQ61jWa5tbdnldnBlrh23w2R7C0YM5kQ9yNVsGV+/twmcmg578e
HGqmEnBWOC+IEum30rJaLsh6gSR6nOZrJROwYKLTM7CV0SgAJ71bU3u8EyuID93tYZJguyXcVzUC
3xpnDse19W2q5FjEIBvXgMkwH/nhGUj9Uf2RrmqhW1TPP5evfe6mecAv7E6XUE+mJK2t5gUEgICp
idflAizW1DCDRhvBmL1tcwul6qCROsNmYNK0fDSQmn+K2v2HuMCOu7byO+wPj6CIsGdeW0cBHN5T
3L/hF7KsJzssTVJCt4qNGdruPTAyOnej8SCOEffgjI/TzLK2r+S062hyDFF/9kTYHSdLSORhJJ+X
D/uINC95JX97ekVIXe3BMRmPYAvqosi2/C9Y7I2DRmIoZCGAMnLccHTYVVohyZE8pAJYv6fon5W1
74di6SRisLMsYqB8U8Q03Qo1VQEML1tb7k6HIeK/4Zh9Z8KErPgCXOZQiLKqs2J9Ue3+XQTp15rT
v9xPqmvBAHQ0qLkUqdArHKw1uCQlvC7K+4H3n+w3JfKl8DD7SUK0gganvkhmkMk6J1CMRvzVVlUe
Kmu9A3Ubzdae8bAbahtM+FzPz2Mcy80miwRae82SwgXTbqSqHsECQpzCDOmGfQBIsSsuIjHX2tYu
D/8spSVYCsguzbeEoidGffakO9azlD2+tcUo4KMEj2PCXAeSjNkoZJMud4KyaWeWLzWsuaGGxCDJ
UPzXvpdLQLp1JwU+H5LU9MosPkeU9UlrOGYqpfPQnfYZS0DEpW33p6g+vaSKM9gcL9zX7AQsau2W
9AeGr9FvZmvhhlimMFz5VlkqfLVBRc1e2OcI2yEWIUQfzVXKA+4iDb7MfjniJqkKlyp+zNs7TKUN
HMK72DfXM8pI1sT2vXnUYSwo7sZ54aNdRuekw3o0h2g+pRyLSdrg1NSP4FmOBsE8xVtpUUXM3fJo
s1BjIDHFpW5ZUvCU7wGj3XAJf4PZ4F2pJNws3NRs0w3re+js8t3m5U/g+ZyCSrgP8FMc1t2mBp8T
iCh0IwagyjIiVIiEFK85iLBvZ7A6czQxH6UFmlx87UBP7tJNULlqoCMcefyHSV91fXy86obIG1Um
MMGD9LiaXT6aLN+N4QELjuw7ueWT5K3xdxiANbCne6aV9pU8ISHG7XlcKrJ58a/OKMqBx+2BOn4s
Nl/IlAUlCk89q5dGWm28Re0Nexv0hydMiNPhTRuuLklE2zlhfrYthVBDIrL1oPbESyNjLLBY4l9H
xXTu3Vzzpa0/oW/ZMQzAiYY5fhp4lv3dE5ZU3iQSSR+IlF6/MiaXQnpOlR06rslg6KlMUceyk8aS
npC4nqj1lOAhhbd0mm4SruQ2L3xFQzbHyP/D0DP/r9rGRwf8n7siOpcfiQthnU1bI06vGakHwcqJ
Y6/PWIgYaiz9t3kJY/8AnVe2gD0f/e4JQVlixdu0uERRQ7egM0ezNx6ECnYNu20f2jJyLVeVCa+g
D7zOgmGJM8BSLTbKn6RW1Idr4+1rWy1VzKL4uKRTLRLwXfZp3nKCqnx0leP1kVU8TkWY6GMbyqPu
xn6Cj6BGsqPDkzqJ+FsYLI8LLUCJQscD40HuAfNgly9kB8txWZ/FmZj0G8hN+xgRJtK2bOpdVi7+
YYISeQnCTebNxlSHVSZsxO2BonpyIIzfPNtQBBnvfxFd6B8UaYGAgyjUzxS+JBAZxYusu1/Lqmtt
3I0GStjEjJCTJiY2L5yfcvkPRHxILunVSEZ7WV5zxLcDoleZwj6nM4apxTvJu4VQ2MCtFESsIni3
LRg84wmv4xjvHsCXdbbP7BRiuJfuV7+RevZVz5GXRouwYkjPsoUUwbinfqClODCMXNBoWauElYSt
bCFVqV2xBxGyh9Aw/nO/xRhCqV3EXH8pbXOlhVrMhx5ZW4Jb0CvGgQ0qeyXetbMrgqbc/D00HPv2
Ctbso/1K54LFTaE/QvXVfIGz7qYnBWyY20Wp9G3l4Ro1jrwk+7FplKeW81bj/14ibvnF1Yv3EhVP
LX+AqtrkRYXJ0iFg38s4pZeqJUzLsGHQkyt5P/JVX/a/yVR/HJlVBecm0LWf0ZtuTNXXMCFxUhxZ
3egux7KNgBfzFEX+k/pt75/sbxV9FY0dggArS8mPgU2PlXXg4bLT5Kds/0rhiZd5TgMBiKrjX3qm
ktHKXI5qINjsqKIDOum5W11mx6FY7LZHGk+M37R8AGMfFiFGz+6wIeSQAFmSGlkczcWrW1z9eqaO
byPMhqbQfTto11XEBaGDkqAUTIs//Eq4pmJFWSxFpfAuyC9OG68qFdCrpsbqXTTtP2xCtVrv9vX4
0P2RHB2LtzXpvvEJ8WXaMiBWvUkntPy6ZvH9v4YKvszdi1MZm3+qWmGXO4YEGQ9138YjSgcNS7HC
2cZhCkfHP1ApH5N8QiE9jSTwpLex5lpvaMgmVhpy7jRQyUJcXZqT228wogl4Tq97HsbPfjfokSLr
O6Cig7pwoQxbn30KbDSkzY3Y4G9kzoBZr409TyfY8rLOu4WdAbg4aWECoPYyseiRWFxm8Qs/O24e
8FLvcTRejoeHD4+tzvdEL5FtVxm2DecJjHhTW5aEBvpS/eCxs+KJ8FKNE1yUWw9RWqjvaIFFVnDB
RTgxyt5uxNHfWAM/EYDGVfcNlSsrq+sLpGxGgvoc6b21NKywiQloB3eIIyRU1dFeu7ARDnIX7g5A
d45PkF4QF4hlN/93Mbenkx3bP8qTneFtxlBjziGrmhC+GudE7ZHqeFapjeSUqAf9NYWL2GBfrHcQ
JbggU0V8opAt+QEP+txVP2lPkyeTWLweqSea24RHVXNN33dAX7fNk6TGB/sAGUZeQ7TQd/uQovJx
wEXq3VsHlyk1TleMyl5UaQAXLn3/sBWE0gItzjCN7wRUP9MEWn9WBHHxXAGbZDhrNR6031SZL/pv
7IrGoCLnkTfPSBxOr7/Ca7tBJWJ75oDp0onupzRacpo/Rr/B7gxJLZ+TNfEY+6Sk0t1RHV0lodjs
leceOWVZt7iU1VSKhu5tFdqdB1b7ucF2EDlhExvnii1kDh5VCntURyrbC3y09YtQJnlDD1FLumHW
oREZs/9TsqX2ibkPu+4zioJZcYZoDlhFqwF8/htOKH59Emg+beuoxPGAHq5M9nb3c4+xSLA5YeOC
EboohLsr5WV23KOuFePKYRuo8LQCJRFAatfPynoN81BLC5OicGTHRi4ADw8F6ozxIUQj57CC/8e0
JKTVPGkqQkwSr2MobJMw0j45jNmuwE5+tIG3oi17y0Q52ogEX7xnJCJg3120QE0vOAoDzdQuVnCI
Jpe1gXKySUMrlCYYRNt3kygkdOEQHKQ9z6k4lakMCmgnDV0S2WgsiuR3nwQpFZjgE8eFu3eXdw+b
JFwtiwfjSQRAPQFtG+Z1w35cVZf3jUep7jlYysBe9IXE4CQLgSCXW4kuF2a5nY3h0fk+c6vayNme
jJ2eo8Z6ms5HJXhr7JBsVQWAhzw4+zDQ7G2kXZSVMUcBhcSJ92hNVYWG8Jlb4TbtNyppFvR9bk2l
10FmSaHgIWrQ2nUeohabuu0ZmG7NmhH9L/B7YlRwdhbE37+kxbdumxM4gUGRk8WWMT0O+eX8t6Wg
kl84q6IFTFX7z6Opnm9ZboN6GuuKw8ewosrfTS/ijSsqXz0iV2tCyfoiWhCsnbJbc3uG9QwMIWVm
v/gGy8Ou+KpdB0AokDOrXz7sSMhFPYBd7aGMDukconNk82Ka+I1jfBSueY5nIC+i8eQ0bZTWN0ja
nn1tWA/uJk8194uIlRBuzqQKx44Hrfwjb2t950XgpRMj3pgkdLi47ADfs1MXIgr2zAdqkaZzcvoi
jB5cX159vA1fpYu+0Gt1SZw1IHkjkp1O3jZ11CAnENtizVKimYVqYCLjzLLCe6tqJQXtPOXnCy5/
lOsJ1+LmUQ+Y179WE3pHioa6Y4fqtQDajrzoOvMcC68Ay11C4QA6YIDePTrZixfwwMUCr+YTNxkm
+A7R/nel2oibdOtX9EPLrgMvxQ1z1cT+69Ki59i0sef9+RoyJUPXlJ7baN4IG+zFp9NExFulJacK
vYWFyiJjkHaBsaLIl10eTMX5bSzKIFnD8QNZ4ZYqCtXY2srPub57rHuY3Db9At18P3oHyREWzqeT
v3QG3+5OeJilSBoO3J1boR+PrsVhS+gZ+Za6rYyc0P5P4J7IEta3P1pn44/f7ABMclN+JCj5t9Pw
LImLkUlShOxacIDePELDXv8Q1/PcsPy//K4NgqSIeXy2wwHfFXbOLEFYNzwV1wKnTio/2KUBO6wk
DBC1E6BfP3xiDKA7819pSX2nnRPxeaKLJqsxVq9o45d8m+WAkO6nfbExjdyVohDyngV7qQec5Ewt
1VnSoFC4xdmoNtilqQtAcZppOT7y5BcOipU4ywpRU/l6X5TUXx2kLfaJEvilEMIJXhdECIV2A71L
GUw5l1I2WgfNGqfXDfYwGPLOSsr6lytx4UF3Ig/1QTT+aqxRFVqIZSHGUDnsY4ndNxvCccWKtBj4
KdBim+ctNTgqaZ4v953r37iAlIf7GQgPIVBKbojXqVwJ88Za+WyHQRlOfbywupSZxYFXru3OwSX1
6hK9xCMxgvGLbKB9kuDA7UFpvGEjQ0FarXTgwAndIbc8rZnZEEtUsqORcG/YSdhVla8sC6PVrUr5
2duLDCWPzHaXr6zAnDbGgTe5wCwJs3sPS/cnJfkLuQAM6qk7B6uU2On6sWeJ9VKGJvZ8oa/ufqrF
g0swmAcyvXse8r1CVZCEINzDNReui5JmhGHDWuRBPv5//g8OeQyZ04YyrSDc8lKKHE31OXdNC+iC
6Yx4ZtssHl7Dn01jhz9BPHQzvMZ7zOF5CLuNoKN6e1rASuc+ow/OCAe40US+wAcS3dNzDYydtsgf
ti9zlUJYYureOFwggLEsS/gn7VV0WKvY2foiz/B1AvyGaml/tQMXhTNgzzRiMFpvOGbJ/j3hG45n
hSi1qv5rNsPggoTnwvip35JylhQBd2LY5mUu7oXqRfN3cPal1T3j9WEVyr5ihDKLnAq1JUOt/6su
m8stMM+Ck0Hdh0BbZS6FOgRqz/O+zaEWeaxTHao5dzO26Q191j82mYYwB+u6zzyI47sMAfPKW2ko
dCOLCI9i80/s2+RsyKapC7w71HbVJhSKWkwDuRxLPiy6LA4Mhf0iCP9FqtQmYkAYUdk2TR08jY1Z
+32WJrOkZUXkSMkfzmi4VxYb9dn8a4F1i+MjdjCgS8hGs77xFJ+h+IzoCVZmZ048tms+QIIRYdMg
Hz8rZaHXnE/dDd/godKC5QUwMTHJcmWqS3bc6BudhwjPDd02UeIH/Jac+GS3dhb38WN+b72unVpp
Jdep85ljC6IwPpyyY7UxBDxpIFD9BNhUlNroJL73WaYBFHR/Jgeey6oJGGBTxG1dgj8KDsi/CkV1
PfvP80vgOfmCalqRKeyfu0vwA2DMvDGYkmCFraJKSCFNl0D4f4jIrxcSJXxHvIOkrYyuWmXxXuHQ
BJXUr4Lg07pRWVIhA3ezMVI59t8qy/Y2fPF4Hv2elCrKMFLBe7hbx7D4ZupNvKiLJcUDXyHc37sG
JVDo6l1CWhqwKw2AlDzboaurJEGMDF+ljbFSa+/b7WaBUbf0h73FL7hlC5q6wcMw03Zf2CHg5jWd
UBGvq19vxzIlUVh5mR0WNBQqKwxumUpK9dRVH49V1AtJUE63E+Q4aomXxaBTN04BmkdGFO2CFiyt
7X72cMf9x9Uz6h4nRJ5H/yWE2X83IdawxLRPrOhHPBEw4/H9NeX4OUIs044urbCKGnFqENmJ25pn
Av4lIgzxvUIGPBxr9gGMRDa9Uu9/wZb8LLtXmRdMaFtJkIMncAN27+rZA9JnDZ5dxscE20Pdvw7b
E84QWzZ6F4DYfpQmgGsqtkSRSaoO61S8PCWI+3zVe5DUwxOHMZw4FvowzH0OdiFdFHds5NuE6s/g
jEfYwIxWDcKGj5AT3oC59K1hX8C9NYx/8eETJFETZqz0eVc9A0pixoK88bSg/nwzy8ISWGrVpWn+
U1ipuazZVysTtyV1zu8jumL5hGQRo2DsnpUFHsyA19EPtX5QwLfA6S0tcb9XkmWqPZOJNTjlXT+u
SEH/ukxobo9J9ryeqccUzWPPz2OYxY7RvmwbelSACaEXvn6SLsTCwpHPgocR8cywrKR5YA6CQOXj
W3UtaYLwKUO1c9Y2Rqsn5XqlaOlUju7o2L3Pb4bdBcRsYdZSvGiHCgQ2u5bLp5QBw01G4iFqsXU7
xla0NzDOFsAU1/zz8cpWfVVJOLaT4TND6JWiQijEE1xioAeXt4IMx7WX+siZGaK0BRsJOR/f+r3w
ZZkO3M2Q5qr1ON82EqbkWN5ikS7rIKetuu/Hv4MfJlWOoNHxAbjTOKfFwtr0/uG8wEYTsLQYEVxB
GW/8f/hklvhQJDOgkPc/MYgwdz3rg6PAyz8uWneK4Zh+pIL+Gz1hLZb0U4xkSqNmSOlWz69hyYpf
bHYB+DSgEE0ihryo3/ycfWCeJo/6bOAWORbTFFRpmVW7Kyi2QsfkvVEGES/x0RxD2rh3Hc+IWolb
WqFVcvPuGxRusQiBygZ/h/EHcydQCdEdqyPdXFA0ZmQyiR2vmkMqloyi8wdZNft3JQ8luQYn1bay
z7x7fixAypQoOSLUy1ronxTrKAwUO2jQElUEKSgUgcB5kgMQEFm1NCbZ6yM+TYcTBPFvW0WGmFSg
5uZp2Rz2Ba+NDSlGrnYpRLExN22F1BkDIsBK1xzgfCuSrdHeiaCqXoZRxiSt/a97zf5PflzbgHW3
+L98CISW7EK5ZYlZaMoHDU2i4gtQiflQQm2pLFTRLJyhRFCIdFjSFVLbtpFgCTIuRp7kuxO+/0DQ
DofiJ5aMoA2rpveQoQEKqZtkr3O5O5qtZIfcI5wZ4Py6fp3RYPwOkyAS20DDGo9e8H/lvik6yP0y
Xgi2XTZKcr2PmaMCYvpBd/vv5SZHAghwW9aYN3why2faATxlu7wihbvuEbY5U8plwqI9iH0vyC7e
gXQc43f5OLabG+3KLrGl9Lo9qnnoffHbHbqzA2OyXrFIUwpnd9m/GkQzqDIywku+9+xAG72+HP05
Sdh8KxxvmD9rqrXhaTVYOCyt3Hbb9BXcb0qE0BVjMg96A9wUcMA4na6nlmJe7XXSdbuYVVKqlx8e
xlQ4zJo6SMSz1UVLOlfBqliMYD/zoVasMPRmvtk1k5TtHTl55BWt1AQCaeOjVGOdwGYKSCgVvCgq
Y0YOi/uoYWiTSAEOKx9hKscROineMSzlaWLSnIrMtl6IhP3RUtzYcMQdZgcbHPDk7bzlLMk4iBKu
US6b6mYWAx7Pglt8ZPY2cp5Q/c7KjU+r8gITiraJpq+gObBUa2nLGTD8t+PosHr4dVCzLiF0b3xt
I+3SbaqP8Qj13hDYxWFyWT22ngfI6XskVvfxmDRAYQZYeu3lXHhtmiYURIiP5qtI6d+X6NrhmvH+
x61cCTWbODqWyybs7eyzqSWM/SZ22t3PLjwDSLno41VOI1Ba0kul7s9tYJ+y3OCH/tHwEt5OlAGm
XWaJF/OTBq+/z9QULuA8msWmPgauWJ12x9i8XyK1rjePEe/fhZ4U3Ocw9JT/SyWfXKXPXom2XL5L
ApImnaflX04JrffbdD82W8a0qtU/z1Y8idsZEL5ZK3ZQPVSFy0AiN4U35wDzRXb2Hw6NPFHado92
yit4fYtCm1Js+gKxPJhusgp04Da+umwE7yCQVCHuNTkPZWM+Ze/YqxiQiUGF5nqiTsY/pP45XySa
fwteYBxoMExCGMpCLUhCl4ylClRdISqaIbDLc3pwQF0IHTmpgwdUceCtsafXkc/oO9QqAunRmmEq
osW40Ud7ek6T/13r2TFa6y57fFqgu0/EvzvfcOr7BD+1UCR5Y1IoAalb3XGELBuZ9RUo0djptK3r
0sVhuDOzjqua9t3VYxTScjtgNkcfPeZXfbPCV23uPWo6uRRyW4pcCFqVeRjgO5TKuYRODD8DUdap
0L7IfsgV1taq0E0mRIvwW9ywQ9/Gf0fmb57O2/p+gmO/3uAisUwdL6yEvOZoRCxfuEtToz6r+GeB
SjsH2XACm2GwwK0Iy9sgSKPVf8pqXbipfWJ6JS9Mp0LWmFcevZdBvV1FsFvWKbB2WhtXqamZRU4m
ITPL7i6ufjkWfbf3emUrGo3CP9QIv90ZOxuFu7ucG2+MlwtwUGZWwBXYT1sY6lDbHf0o1NbF3wRG
zyIR0unkE6uxlZvT3aMngPKQZvnzzelnAhKLAbzbQy7W21USPifnwm2d4UlT4Rd7u8J8Ot9CQWl8
d0DpxBSC7fS3/BuCVxFv7hkpkTdyIGmlBJX/GL0e6gm+TkZQ2k202MQuwD2scyfKwWaO+fxIKMbP
v7qHj/I40x1JMZdrGZrm7bkOK85O7MBEL3NCTW1PblP4oAXjs47w4jYwwqczg21umGqWkqeQQXGZ
7lOGpYf8cHSKbFk2njx8pH6YcFQGzW/rTwfDYW8f04Ijlby3QM+2r2kTm/PiZRGFYWRVEFLK0CkX
j78m2ZDcI4hf3pbIP9dMmfgl7wh7v2hXouAKVqwA9R6OkY7NNGMCcY/7sdYZoa7CnV2BbgOkVhrR
hdGgyrsurL7ldXMYbLu4bgpqPTQ7a104DQtg94/nd/iTzTfBrdn8ct6LSx4gXfqccqSVgHPvEgB9
HGymzU7ef/4WUB3JBPkS9o+a5favHbAa/ameDfbXqMoz5kTeEtm3ZLbhQbKvi6mu5cBBafX22Qb2
TK9E/DTCsv8FoeXO8luBrgDR+btufDvH8Lr/L/paa7ToYHdx6rsNgvgkKRhnxSJ6tnby40pGdL0h
d2mewD8qazOQ8b5kU7pc1SYcWHLRDzCpWdYob0Oxx0PRL6YbxnENCB9kFETuBDR/labGaI+t9yrb
b/3Md+fhuELwDRd12yfyiEUhniB95psAG8xp22FB8oS3DH7qVgs7ennKx7DqP1gB1adCL/xDe8eA
CncSd/By1KFegW1WI4MKZVBMAclXbKQYLatZ2aePk8u74XWaXsms7xZeaaxp86Swc9lwFIsl6HU1
pmDrVHV3apY9QO0nPXHQI9ud81e3jEJ9E9VUme6dE2k6FnICY8dZAwWAMkjnmdBMIkpNo/CCHSz/
ROrzzZX+a1W9aUDL/ICG3hhuFGGBaBs8qemvRdRk+BFXtNOeZJ4CLD/ToYjRrG41M6rNgnBCYxuP
Lqwwl/lMcpK1yqX+i4MCmC1zmrysNcS4D2qb6alSEg2RWpKkNK0FJpej//Mjk+sf5azCQR0H+enc
A0L/qBHsqS6JyhnJtPpewSvSuJ7SkTO7nVewrY0PNxvxCu5OVdor2gzTYCWwTlx49zWjvHKJ6c8p
ShZmqEM4Sduk5anpFk9zIRBU9nmCnh9f2+rEQjpbEYXUF5riv9gIk5vyOxSQ6joSzMy1+Y6fLb7P
qtBVXVLMRYZ2aJeEvfGT2J9nByNSiSuh/kd6i/MCYb/7s/z7x9hWoe3Xjh+Poe+lg2R3jPb5wv/F
G2TP4oUxK3uG6WYdCXGrXY5xhQS694hyxyT+BYxn9ejwlt0O0CwMneb+cPKggsOEtXflK/GKjWwk
2kuguqsquOAxhn7kit6tuwrwPfZG1Lw05xTiDYpmHQrcU/Pb7GnOBrNjJGJgjKnrde4AMqvr7o+n
ELf0mLMBjNSdHbJejzBmTGiZPSlcIUEb3c+3RBdmm8AJjxR9Z3EG+XTTsanIltwyWGTUMOAYpOVC
Q25rrFJjyNHrY3SkTnl+IOdcmN9lwtEEDGOSu7uJcXc6CThhuVN+dw/1Xq/LoD2UpKy2mtb4+hqO
+RhyslhUv3aXAuRV66U0toeJTij5qxzXa1dZpBpQtbHK1X0moV71ht5XMh/An6i0Ph6mmPViVexB
+Gn/5Nm/eiukG/UxV037t1GrFBqXFR6A3Ge8LgTNAIpgUeo0RSiuVTDwp/95HX0DUcNBlxkB/Uyz
Xu0OcWGcvdrQH/ckbJ9gdwiptPuF2oHzTe6OuF52wgJjPH2AS7uobbS+cIJNsbAkvMZfNgG46+V4
T/jyn/0ti6Wfg1JVZm3di+OxkfvMpCpcOfyxpNuIK/L5EpebZI+eI4oMa7b+AkHyqjB61Bi6thUV
OYVC0UUZaNreaBJlfLbY8CmPJF0KQm/h56Ytzh3BwUnW2RqcwmvZpdH6l5RXKULpyjBf6c3et+1R
9AXv0Xviw9IYxBXAuFSi47WP6tyzxUfJbDlckNU2PSF8GzaS1yo0EneP0kQ1wBOeV8J5AfT3TBK4
M/5h1b4oVBvoiaBGNpoAnUSbukXFXgSwHq8NQcerxI6ab3DZ0ArtmCt0Aep44plvfBzQJY5Z62ju
ySo57440lCg5i3vsdP0/8m/eiW1xRPmkfyjd/zX+OerfSQYO8biDJg+0LWiw7nTAEcLZhh9b/k8l
0E4S7IZ3L+RQJdbhUlEjCz/1Ez3hM3XmlkOoEIX0FSphbPwmHL2Y+D3+d/MlM+q9/8KYZjDLJFTQ
178bU75wA1kKg7Z2A34mpOkTLuD6eWw6zvT4nnNN+tFuVA6/Sar3DX48H3grUg/rIyz8KqtTOTwQ
5Ev+V6kZOZ+6xo2m3Xh4Ul5bJdo6MIJXkYYkK3I6AyDA8JHCgF0TXGqbnolUPI9z6ziTFmU8lQ9P
7SmLEq1carqZ7ITfjb/AUmumvoLo1h9d0pf7hhcBvMaUMOIT7cGssngdD9t7QxVGWIiWvlwRYEwq
ETgNCBRW7LKRh5jS8BsWrI7Cfo11clSd5mWTRG92QfsZm93J5pBWEPdeyavmPOMXnZ/ZYKMGUhER
F2z63HnaXkCjV4KKOuaMC/+dlpaS05uAQH27TQgN6FM4dCXRnTavSF5xD7HWMprFCEa7mqvYpFU/
ZwhIHVYE3quoxQEr+C82PYzAn/RW4sd+3pBXQgSNWpU5j3pEY0I3N3jqKjDPgO9Clt5fyKzv1tVM
um3wV0cDY8U54Gj3Qtp5DwCvR1DR+HNbe+4oVgMSfPPLLWVJd49Edo3pRpirj1bADsK7CuuN/94C
DsDLlnGvDgyi4krSR4i0YwS/Cq6ZZVlp95a6kzWelrs1YL20YSHThEt3GeA7CsPEba1f1OQVYpSg
VikCXhlQvFD0U5Q7T7BgD4+j2Ns2t8FC4Tbye75fX2soH5ZBtKOMWTiRm9dfDPWzz9NNCknei38I
6fIzDWTHC5L/bUjh3yNtYwtUC6XyPdxKXl22QdErzTbCVKe3mQ9pxhVAzBLM9ymwhvgsKC63WTge
iOV1hiRtRpeW437vYuUnJ0wvp7G9OsRAX5W2pzmAN9f4gy0Lc0tc9XVe0pABoIKRvA3QoAFj0ArB
PQEu/yBPdJWIMkj2YeNLhqH4udND0P1bjAY7RAXw9t9oxx7UFTv/VcaYR5GKBhuEMMUWursLfbxZ
ZtUjWtgdOJCsRe15+LZupVSmWVY1PnvJwk83MsyErxvOEs6vidV0hwBKLl+izg4+Z/k4IPeoJ+Og
4CGfaqSSidUBz3j6MdGYt/DusWJbqgvgQ9mlvTL4luY8MyF7Lm3KCRoOXTHs3iq4tSh6Bd3FcZBW
/w101ismzvG9RAv62PpQoKz8jGFjZNy8WOVpSQxAt4bNHf0jI06RrjJKYXcGvyWnaIzKi/iVMsVo
iD6JG2gVqVnJ80V5GoBrgP+XJ0pqyMt8MIBqrUZPcBHyK9tAGQdYd7jerjhjdkkoNU1/D9FGkm7+
NaRVVDX3zuPeCU9JjZ9YTTkJh3lY+GlV5b3qmyonpj0jgl0BzuggfdYUI5wR91bKrDnRQYDAXPou
w+OXGizkxe8nfT0sG8sALa9GatbwxtSG+9dyZ/h/NAZdGInQwE4956KK1tRz/ip+DAZuWxDszwNu
R7nZehE6LUCW7bc1ncU1lN3oB6bRxVDDUHDxsHb3O8dPsyt2SfHN/9MvswGZnbZsaCWwSKya5Mls
z8lAABNAzH7gSf3YHPfoRs23m1V2l4DbloQ5PC3qe8WFcWeiJsfMfXTWdxm6Y6ZzU6EWCUxbq7ua
XzfbYonxRbcaB+1/EmHr3Ga8vpLyHmUqWRdQtpCca4qk61JF3A8cQo32PAvNsdGX0z2fgzAttpe6
q9DGTmboEgeU+KGlqWPWpv5fVBVbdaVX7GyKzh5FsMYx/uAy1upUMblaO7wgRBTRHL/Fa+oXTXEl
n14JS5Tlu2s8Kqfl2kqEiGqf/u0TyM0JycjAN+H9Rvsr8GHJjbc63nXuZfmJRJaW8oFmwOkSGvmC
jirjtFYGarT5Y0XOc9t9SvyeH7bSMo8LOednklbjSjEM3bgHBtLPmcYIqFTW/smGxmkztY/ISGcz
BWPwCc2ybhmO3cVSnX0w8vQfzjntFQ5CesfNLdhYU2XRLWM99bKC2lpG8wxAbVYZ1IduRiud/2yG
uovxOQo1H+eRbKfbD6k49sfzswuGkiIhPB8T2ie5dAjIWaRqAR2nxLGLQrn9E+f8A7bZjhoAFRU1
FcX9k89sECjH8KLDzWW1xW6/S9OS9e3QJfdv/A61g3TiWLliL47Z4vX3D3MSBt/tNLZpzrAPVjEB
yGCpvtwE4q3xgdQZnaABMOKc3tFHpNQuhOIp9qgYYZfjJXzM5odQL7jrapPS7kn+Gbzod9Ua8onc
Gx/y8uiYajIHAay2HofoCbrtq47hDLThm9pjRdvjlI3cxh7Hds6YmLxPXZ/iRLnZZ+9AC//XLgh1
SZ5BsusEsLW0Jhd9Z312vVHsFK+bj6ag2o4XTaD3i4Lbx2fFCF4B4e0qB8PFoqnk91NUVIp03STq
ujQegMFJdn+KFlgMKjUqFoe3AnKImqiw/6ckcEWqMtJpIikjOlR4cy4ZnNDOJZ2o5WeRmtxcomXJ
kSgvDTDIXJT8Cl/nQzVhI72e5mPBDsQgGSBIGNGcdIPgmAoQWGTSMMu+JVARX1Yh2I20h39tnI/9
7RN8/JANgA8Vupi7WqGO+a5IpmujF0cMBG9brQQRm/M6MY8kycQ1OPeva37HsyZJuNcGhXjUVEMr
N6gd5cw7UcknnajoxF94BrSWks4nK5IBFadhYlhhPo+f3jqPGvCmLE0qTpPiXH2/pGwm57J1P3pL
lpXAxngXmUyoirOHqWBuURYAui932x5RQiaa3dPN9zJh3qMkYVZVC8Ujfq0Zgw/+bRT6ciiLHP+o
ild8UQKCZGtThUpO8Z4w2WmQL0QXxCeTTJdJfKPPfcPb5I2iIXBte34heaKPP6HVVP3c+WjKe6j+
UyR7hN2RS578rDsby3nAsStspeBwm63eGeeFqir040Oo+FZIRxajhrja3I81uKqh6eYKrDLMyRDI
83Ukn0kFkNqjEVhx1g3KknVbjz9VvtGuJF2Snm4yGhcywj7eT4jYvnlP/cHk2HX+qUY/vpXolDHO
n2PQZvnbCdjHB53+NMkzOmOxFyUG1de6FCis5Spvyi2ZEHZS1uBTxcslYLz0AByw5OAF7F1YNpdP
B+zD4hNoOeqOkgMjqcUjSuY8liPDrzWh1jjkW+IL5p6ruR6JT18Jyk1K331vub+k/L5iNErOAF3D
axiz4ZLl/G4nkobGtc4V1pyGVXQ0e8ViswN3gGFdvq8IjW1xiBiaESGT4bizgixT6QNZuwQiOA92
io1dVyVZksN2FX0AJdwMT5RGXqXAHNwnOSjyz3WPE7ktxzYcyOWjGhRZYOQxG8LPNGCzZ96QdKff
E06EtE03fUxsc/4m8o5x9Wzp3Ex1eelmikQZ3P4glQAIBvEo8c/jQgi3t6qPBxpB9AlvgE0AnnEA
U4sIbV7pXsbfvCitsUSi2AbYsUZtVApAaVMbOQcmYt6SpPduQVOGedUe7xBfLc3qNFNyIcQZcb/a
bpOWGhzXD+wiuN3a1/Am4KkjqOZ7hxafN758r3UGJ20BuszrOjaArLjSz7QYfg/TxV88FJoYsPtO
hjDfM84qpYIl3XJxgPDcqhpL3SPvzW/Npco9byy1u9HqwrVaq1LnFYl3uXhzs8pzgMCHtbRw1oCL
NHMEgDNoYUmQcW/LaqkVxHAixeKdaQszH3uRB2DmlhWhfL2aSBiJQn68xa8m7iCS921MXjM3oGHG
rjj0PTWIan/m0tOaqesgNxyVOdudNbta9IFa9cbjOQ6xYnRFE4l7W61wrEtM3cEjrVp3zMUS18zy
RYO7ZxTFsTKkumshS4il1+IOZisne5yMsJRWPs1zETqSkEjewIQZ+k/lUAc9gTKqDTsQMXID3IMG
/yg3zvfxcsmi5ItYHBTe8n7j8cSfg6G4pWqAQH2Peu4RWgkbP+P/tXrVNjtEUzyzQnA/mwc2lcg3
HXoqf0hZWzAGijU4WFlwMoZY59mpEyvQffnNrmTL7cm3BjnxiiZU5NHNF8SL7o0LMJT+3bt92zeC
UBwrHwJW6FvNpKOmw336/nRlPYnFgvArQ4w7IimjuILojf0oQayop1W77Lk6hxRcj6NgaIVkX1xT
3P91z5cBkTItpiM2F+AN6Miq3SgcSJS9bWeAFWzsfMG2sUY4XKZFCu2hhrQ4Z5Sw1N8louX7a3tH
ILRzLNLtlIDmRaXUtl9TVyZ6WxUwqumaMaMZHzasKnjWa3QFkNKZx3uWXckqflPwxZ6MmkSG4liW
zOyrCx18Pukw4RkWN07+8UKfXKoC3j5KATnSMo6uEMV+caDb4si0dLzB1JNT8F4GN61l4TaZ9Ev8
oAaod0iuLok5oFw2Pun9/5+/4AtZe1l+s6nkRJd+RuCGbaASLToTVWSWxHfoZpOYMTmaAKmI4cuc
5fsdnebJEiIiLfytcOF4UuXP7H7GAeb9ocajLXhFfr76lSReLbgDWpmGsfkdW15JXTy/cDkkZetv
s+wKHip+5cFYiB6O3PpJ6CjUyS4wb/GEsPBcpS0Wpit+fWd6AuNI1fvNx/SNDqYBkoeTnY+HFxTG
RSd8BKXVqpyWzZWq2vI6y/vJtWlNNaaOkVhHFPfDl3LnDmoDALknPZt4XKTnCEVAc/nRYaaiBIEh
jvi5BgnMgA9J+kgYHtgzEVw9VLo9JI66Q7Vxuogi87LoManNXR3mLZexNjBo8Prol7AISP0PHwIj
sLcu9h+jYz8m/4HxZYgzRjysA7qkY1Mb0h0XQfAVRU05T0vKwbJUjfYR5dFd0MCXptFuxAUmbpyg
COZwq46ew1oPVymSSZ7b6X2XRv48NO16E2sbNTyZSl/H8nXK3DJ36ZSt1IhVJp9l47Uy7yabtiDy
osZgnIut8oX4GhMoqC3KH1GlU6DqoIJsNX5hfoObxSiO/M99v3B5UDCDkHyp5CPpvfGOhvzvfX7K
7xbH4bx9X3C8AX/h+mD7w2J30fZuR5RNjtjzN7K1yCPs6kEMimFjiZL0t7shMkedB2tFl/h1yK4F
J7CguzVng7J7l6qdi/oACI7ycQOQ9Ka7Gh701gjd43qeru9oabYMdqA96mY1EAED0Zzd2iPM2Ktw
wT7BH1kXWt0UQrwIIKrbbbU1g/d0DgrSyq9+FQceSerqqigzZaPs/mEzTE1pvXI8DD+SqNZ3/Ggq
1b7hmsbu95l3uaUkYnIojqp1ua2UVAyZAXfEfSB17eqJ4Nc9IfoZOrNeJJe3BGdr3VY+oIgmSwAO
TcMpBN1k+4gOQOfulrXLi94Ne29pjajf+cWpz5BQot2SR2O8cmwX+FlqW0JBkR8qCEPk5KW+TT9R
HFzWv1j0HOU3v2zc8Bxi6xBU1IyeTs0cShTesaLGubdJW6nvcKNATpIv2lfFFHlndIi6xGenvo4g
NnvGYKvucHQ2yFWrJfUbhSa17DCDTm4+vgmp87JSmyeM1tbrF8wEBx0kRzx7yLNkVvXmpLwFHM/m
0Om+dVwNDNVsoEM/iLHsty+X87QY2R11hIQmRvlfLipHcXJsFXo1ekJJvrZYZ6C2X8fB/NWqXIdq
q4vJcz9oCklD8RCh5pRbrCQx5llI+/LgcxR5qfHtWNnGU6fu2x/mN3fo1FH/pFiKYW7l0Z8YEhqt
vYEjT+S3byNuT9WfI2uQxRSQIh4IMg1+xF6q9nY5hAvLMM9ZL9gtSEk/Rx78f9/26VKyAqmMWzeo
3w3xwfOChgTnOZU/wivjNIm2yzG/SS4yqVWfCxwmOJa2SFCUsypN4Y6ktGhHygXi3rgzowDMfOtT
fwvwTtQXKsgcs+N2ma45GK3pLcIdM3nvJhEHf97V9jPBRZDl7fSPgPs9/YPSHNmGLXRd39GAuP7s
xpIP6nAy8br0hG20mBN9PpxkAzPcgivzmgxH1zA8RozS+xdn6czyvBM9Tawmljlu3N4t4dWnM/8l
PMfhzlG4c6o5GzKtIRxGFNLz2xh/ed8FSGD5tPe04NI/XijNojPSfcyV4GsXP6wb0nDd50CP7X53
dJtYH8Nc5/+W9f/kAufY1FE/pdTVdiCxfnhnU7G+59B6QejjL93v2vanDEbptAOiPgMd59FHUKkJ
3blTG7o4fFt6pwJnbWYVYMo7FQIwckLOyCYMj1sPLlo1wF8KijvR3Ct7IWsFE5a+puOjvyVVjjZ+
cNtHg6BpLi8tGA5b5BmbezQKAQ6n/3+DxV10p/WYjs8kgCWv7BEEESPkWOOHdWP52GKGpl5zrS9s
/ItbR9olniuCQNRXp4dy8ATWlobm7gXf+p84BroA6A7mBDcX1pFu7m8VdPeWGWSEZh5YCpSAQp1v
zpmYJFJKiZ/yqNGOpq/kMWJeTJP/GcostLHuNnOBmZpFN6jsfIqelAJWZ4q9ELx3jygv9KgAJ3nS
IjHkacJQQSlYsRZcXH6J8jwJoKyregFrBe51s4sT78TfEufccIKEB0RTfCM3UJiWiJLYmOuLIyQ7
zvOpFjMB21VSGGYMrBlWUWFJXmC6hGVggGxAClxc0bxVUGFZQDD1PXbtN35V1sioMJFPaJ/2RfA+
NqMHh/T9NBiv+ikb8/YNjpEr5hJ53FyVFIAPFdsSrONigxCaYFB2uc0ZGaBbHCDbXi0THHBV8xv0
wxcFidzXqOoHJUIUfRaQWp4HT7ZykWhzAgD7Fsgp1UEERL5OPd2lZclnG9wv2/LgrI5LKrrrPFQk
lw9iuwqeHGCKZ1TDCUgSFsckqDqKGKDLRHD2iy6rjT/zLeXma7k+Jz5+wHcXbFA6UEF4arovBXYP
VDPMV3vl2EUU/Iy5eBV/J0Kruf/cpPGOxp0mqRK6Ff+T5MvXZzxu61XynBxuqd7duIGgz/KS6GKp
MMuM24Z7mF3Nx3edwVRbtgrRS2bt8q+A4hEShHdNkROVLP5gah8yStKJQUZY52pUpK4wxz8XGYNa
ZTtKwLvWv6R9mfO8LsMwW6OPd49pr7h2slU5Eh6CXpVTIyBtS522mLSIBGh7zOV9vpQMzOxO9vo9
2i3Gw1f5CqTnl1uOFlyS6CbOK5lpMpF5Yz9KkC0oXpjg6b6O8bkQ5A79wOSlHMH3rQmxW/mNXdMt
oBz5flv76IvR1zFJeJguI/IvJKi5xnThjgGc39UiArQuu14OSJaIit6pAlkqBkJGDuoWU6RZbWcB
wguAK2jRbKHH7O0fEIyuhFSTy/DqalfXE8Xzk228jsCxNYUSNGu+FabyxT+OV3fx+3eoo7pbgsit
orj1ExCKcNe92JS5s/WfP80uII++dgF1FKD8EaukDxjQMlkbPjFEFfbKFv19o6uNYZaKRXxfzVim
0LnQi+IrgLuJQQfs2R6TnwUYQn6WmU3byRI9pL2H3hpflvHNh0ErDA76ieGTRAerNxr2l9VsGinE
kAc1IyG77Vsuqow7S2Te8ph7TRnO5tCCRzplgd+6nLPXwiah7o/QyEuDS9doVo1bddkmq+/9gDq0
1NEjW/QTSTJd4BjQCdv5HBFtshEA3i63U15IOxb4YbWqX82ac9vXXxumpsonDsNbhU9/VyNbR7oV
I1jtBzvzMN7VqD3UiSOybQw67RPqMJJwph5R9+mX7oZ6S3drVOkT1DCADxvukNWwNt8+XeHTBpJJ
Sa/w+4wQLuoYMFMZdKTlJ9mCRFy3qnaH2q2Di+Din6F8WWL9ev4d6Rgna1L9Vc8jflsyIlh5D5qg
LimJqdG9DdEpVuJP+0zwZcZDoAAevejckCqcnlgLgIF0uyuV9EALmFGRbo8w53LuZTL4AT/y4ALV
2rybKJJuw9g7TzAcocf6AqmFYySJ6yTq6zkXWQjKYrPuB3uyZ2MNtoEM/22mKRuS9qc4uYKE763J
arCM/0yGaaga6MdHBgdL9ZmHYf/Sc2bJyLWeAL/3zURhPw0N276n1QC0edWMoSGR1cA1ImoANnoo
Wwl2yZRccQl0lALkzn3R0/j+Ydz0rIo6MllbDBDqmeM6m2UfRZshHyYUJtyv11HnGHB5bmpLkcNQ
goyK/xzYmHMix8kDASKOSsZ3qdeQWMdKo2DFvTFxaCMaVepL46OpV2fxqzYXrDlht3PHEqBcCea4
QN+wsudkuYLsBgO39ovFMFEw9IW4zh3OXvPbw406dcUCIEiTqgny0UyQn2c8Dnfng77hs+JGGwt3
y6ehbttkhWhg0TAsEMog83K/jmkRjZ6TReL2jJEIpLDuz73kbQmsMehbzMX0Dd5sjcbzBbi5CMnq
kW6Jma2n0F1z1KcEwmAfyzAmjxpjaWYElB3VhNNK4EKkttBK9vBHN7m/dMw+rfRTUGagi5p9Kxh4
Jc666yOep5Chqqv8nEa+EetXa0nbtAFM66CUxCC9WJEut2XGdyoGrwuqnmTHC9KlEfRtfIDG96bU
2FvkV9SyBc1zuqDD8hYpLRnBIJbV5b80K7cbrctWZV/MMlJ74R5+FBo828dtbStI/BrU8F9g0eqG
Jiw2+W/UFweFgw11WJrYowsZouJdXbIC4BT0Kw1KtlGR7VMdemJUaBVgljPNzQ+Pdhl4dAYtR+qT
mV2oc61CZia5K6WdXmbXFAWw09AOR/QDFB7deATFpWqv8oRu8dPQjMHtsWsycx4HgIzDGogs9/Tu
eHaarqYkHHF6Iqpdq1zR9IQrcbOjWYE2U2VMk0Xfg0Y7Bkp3KPC9n5IklnyTYJX8o7RT0xvgpF43
ngPrm6X4s1U+DyxaGqKt99GCeiK/GlzxjPy5I6A6OgERo9OvI/FDLv2cjFoL0vH/QgRQcl6Bi2r9
WDjwiucdaYk0I573nj78DPkSuPBBGUGUnP1RNkCEkg2fdFz+PMdZebIXMA5WWhkrfO2VmwIxpAJH
rcEU3ehjxxJzt/2d7AWW+IgdpZsUX4nhKOzZUNYtGiCktuGDx98Ko+t2+sRPBkkftTkjsTXx7Du/
9zvW818vEvc6dOiNkBVQjFDZsHKRpTNZF5Zlbk7L7Ct9pBroWNkXxMo6fVwfaPSgm4c4Bz8ydCmE
rr3/mZJ9w+NVwfbRSSFdtCO2ZUUSvXTk+V1MHT26cKr1467qYuNVxp6jjpaRDNUOYeonIpz8a2YF
Bnjz2sSzziT/QkizBb3fEbPJBZ5dk5nCYeo5Myz3Fv2U6HNbt7XI61YJXKP3+aEuSd5axqDB2dML
7Ih09tXi7FON/s986N5/QLPGcAPiW3cL7KlpEgPTF+bbXSaK4Mx6mbKkvWCDLBbe1f4n10SUMf8t
bFC/2yp5Lf7HZSgLkKYGaBiY+t7J7Lzxu4iYSLq2yaBsV/vtx377ZfkxSoTI3y/eruZzoBB6zJGA
dKICBHuuXwTe2XDKatQBNWkrV0yY8pDP3KaofrsPHmrgnxTdvugebmJsbpklKxjpU7iziQeO4Wts
cUgay+ZyBUgcunQNKI4Ot4S6S+sQOtmcKb0tKa1VXx5KtvdPb6rzlq7QMupceXXvPD6Oa/VJH6ja
1YYcdWD0wVrjAnaWvnbrpGoKVALtgbLrQ/zrfEVHdznpz4f8ZW4Z8fQfYjfi5fKGgXDdrfyLuT7j
Y0Hy+4FcnefPBxvG9eygCr8KkernXnlYX6x9bbBo43ln5e6S3/P3dqCED5a1fjKAEeOEYwpFYGtl
iug8AUN+qmALHslk6SchQzIn71kSk3TK8ivj0Nf7DvJsp57rztZy0u3NkW4GVhX8KtaKiScOnu0f
xfEWkl2itbEp5Yh7x+Zf1WGauQChyZIv+o8juGZjc3WHYrPYSf12hFiF59TY5F/Pc2veoQXJSL/D
sW65Hy3zEDA8usp+obbIrYKpvcTJ3QoF57ch1LGAbtvGUEQP81ZPFKHSuGCmsPc9d7OCe2tGnIg0
UBQ1wk3hWr32+GMu4VP50G2pkxox+ABCR6FPQnJpFKiWN67nRgmHBxbYASVCUaAPgJYNZiIDTavK
OqlF90dTgcy9RGsurgfWj+2edrqVOLe4NbB770icLIDa8vI+wrg/K39q7P1WRl6d8Ck1HZEFsjnp
btNd8dqjar8V55Nv70Iqc/Qhqu3d6GFEpT3i7hd0UWhmlZdo2cBnv4ccmzKg1ooxWSkDWqDqrjWa
KP+/c+h/jsXoNafj38ibs1JplajLKB2Y75WXZ1I0YEEn0mQSdziCCVMsXiTYKdxDwfBQ8Wn2N8S6
2gY4suRb/geRN/FPBa38KOP2nqm+r2PsIJHi5rL/qjGiCrMHIcuosswjUkI/QoWf1rg9o65HFeDI
gLbs/EkfIzvmIKbK4z3546xfzwrVraS4JtB03HteUEVY2r57EjgQfDnHTp/D1dd1+6QU5SPfLQPY
CjdVygAxpqI1O0MGYPwVZtWyOxTJ0MUke9P+Un2JYqzIlBC+5mFWHo+byygWM+budjBYoI4G8x1I
keLbBhIg4Olyjw0h64yA/rilyXmfJEQq+Td4MPMxNGM4wjZiFxLPuptC/01O8d2L4hy9UJ7U1ZSL
0/qQfh3IShJ16lOSrvXSYSOgHmK4buy7OcNXyi48im/y89I9JsF2CYvg2ffwgiSMewa8yy4QF6ox
LkaYmmQmFU3gbNApYU22EDHQuPfAcgJ8+6UOIRnPe/T4ZikKIsJwAi1+pegTIkdzMWvtdM87dL5W
S35q6vxFXM7s/jCFS9rC5SditdTfjup0JKC9BGL9F1PM5xTJwWZ8ZCtcOToSjR4LhDdS8CxUnmPO
T6q8TKSINmRTcgxbMs5HS7v137Btg37Rr+u46TE8mxG48CO/FcX2uShwqW2A7ni93C9TQXcWFBp6
qBsuWQFYBDxagXtLw831nnUOraNs05EmGcAwchAry1FARoUfEUQWq500nXhuUUo2IvvrlzGJxzVc
QtiX44Hsm3rgPMQdtV8PzXDQ04Dt6QzHZfK4gj6SLU34qFniQL1qazBzV9j6pcCEzVHhMRKF+B8x
T96d3KeXgz7l+qhTjqSH/7QHPRGoK4tQrfOq+IWfuKYi0gXwYmc2we1GF9vghKghswXC5qN73Puj
+D8QqZ25ykY0i20WwGUZmZZtg3Vl+7pJAkLSGJMZoV1PEfvb5yBiZ/98bBHehfunmLw8Q/1cT5rv
PK+RmZrOlF51W7WAitCL5i7aNCtDVohvu2TjqD3O6FCCoP/4kumezmV+rXBzxugFbD3/Ugl0ce9m
f/6OGR+KFbmS9fv5HmQO0of5G/xY8l51B+ljIfg71OoOV10Fk+H8VsNWqauIkJvIfHNqM90NkN0Z
OI0ZiGp6EOpBZdYn3I1yP5yTrN2C29E1Af9Nitx0/MENjQ+J58I9H+oDhfRyBL3NVYp6rE1+vaal
CGnO9BuZ5jYQsfj3xRCxg/mh39zQyhLjkUrTz4sct+4izdkePMAmSyWcTssF3i1zP578c60ETW4w
irbgvQk2UT+oVnlB0RPS5nbpui5ZFZGqaD0LhgUB0tqrTW8Ckms2iHhE5C1vIavMNwDd6x8tPOe/
9QDvqCQGYGZNFjdlka2EpEGO8WaSvxyUz/NG2sXZeyg5FeRG9rDU1/1Nh5lBkTeFuVwq8sIh6WFO
+JP1jWzErapMlCwHh3+TQFuyvQtB62/s7YVIdslJ77ZRdxmm5XYdO8jauWYGK0Hf9DK91p1ALyLM
GHWLg+U9EyWriH+i1Il4iYFF0dFe9PbZ4Xv+Gr4vjH1lf9L8vVekwhN3xXM9G4Nc+agqcS/6lJSr
0ZRV2THdS1FLOPsRsB2Hs4drXXKGagXZ6N3ypLjYyJBjs7GkymsdN/MNARSwcVCp8ouCUzSDVq3b
UFIUR2bdIheHHUni9p2YX5xnUxWL3ht1vkKxS3NaXbPU7uQjVIqCR+8B8nTpWGcwpGBzXm57Ua7O
qdHwo7K/kCbuYY3REYRSCUStGYOL0TqZ361XevJy3I6pzI0SMGVSfkG5ej6bh4th0hTBjKl2TggD
97r8A2hK9330m4ZNv5ul0/kzSIpgEYSeH9iHK73LuZpS23Y9OTkkl/IO45HZP1nKbwt02y/zd4K0
/lzOmtcJyPfYki8aqoZQbdnpknUk9H7VLrTvw4GiVuRbPxIJve+M07hYzIOWwP1AwyovU9VPADo+
NKFGi/3K4rNUxvkVbJrooBCFqkBGu+708I/KQvJ/uToj1hukzDQ8B7ofQLjK4rE5GGyFKZadvRu+
lU8TX1hdd+rhgDn/Z2QIJeRJ7IspphtG4swhN+WAY5tNd0220spFk3trM+aRR+rZ0lIcoUdw08JW
HokdUOe2pHiljNIo5+SjSpiD/Y0ZqW//+4H7hYGT3/3jKsJCZNdjFyegGHDRGjUsuTevxq7nAPYJ
H2AhOp4YCtmRbnOKWWlH3xw8A3dHN6moVMC6v658Oyy6TiT+NEmkWsraeIr76uBFzXC0BejoNz7x
hAcOQRcZcnfM7110QB1l6GyDrxc6dqYEotaqFiKMzTvyfcAWf7PhTHDZP4hy50yZptELuWhuoEIA
l+wX4ObR0UeGtvcyaE4hAMGHInvgnfcbGjOUEk48xTOQn6KMTFTjYI55aj6HQh6LVx8AqOPU9694
SydZHo8/Tq+7gwRSWvlOeBQRkfgIQdmvR/Vdioht+DkM5gD6NGPUhjLzvSG6dWbikMQ4ie17ftey
wjNpHmel69f6ACusQiFamBSBdThn9xnBux65g1IkdHi/EIZWxcjPR+aoiKx7cZ70ZWr0r6L2UPjz
mUnztSLLCa9uYjyPT2MsxYkNFpOoKkDZqArDVD70Tnc9Wttv9klT3m/tlLtedJBOu+9Sz5kYQcZk
xgVh8xLOWFkHJfeO4DwBgRAsYFxYycQv9C314CnAteKVF26NvpoXnrA6MsHcXc5Nj2MarwuznhJN
lbWDFeHqZ2zBG3HpeZ8HXKc6JTs4x7aG4TjmpQIekETiWjleThYmxH3CYsdyDTFLuXhZ23KTKS8G
F5mI+TyKJCd9RWYrIjYCPEr7kntz4zW9N7P0VsbXl3YNgsQb31RfBLBtHNCJF8b4U6v5Jh4lLf5F
1SfD7UQgdbhfXQh8LnmsqAkL6ScQqTBfJ17Yp4RNpMlOpZr9UXHYMrVSKMjP4hbN46DKBvjJcrDZ
twzDRKKRSiZroZtyHdMF3LH9iuddnSE3oWkcg3tblDYiWhJfRYcFoecvvYmeiOfBExEn3KqBiF6q
uJgPcX7qqwFtY7FfFGf3DpMwvniJ+4NCmXFte7/1dsdqyU5hkLPSEdddx+zAQGoDYp8Y0mUUhWlY
A2U8OHEkNz+Qvw5xXFWtmIhjifyTUt+w61m7v+emOFJCNE2hnmXRh7uLmR2JJDkiliIPH+cvzgRg
5erx0uY5IptfmKhzCN63fXis11nMkd8sSCTKPX6HfFZuzSqvwoaQFd20BF1eDxwmPUrn6PuxEnuN
/FuOSzXvmpUI1dW6qVWMFymjGjQWq7SIkegxRhIlna5ezc6zMWIvOsm4WvxjJodVKc/026JV0V9k
0gHNHjjUFrofoegIKER3q2pJPolbl79xqHfko8vLA4SYw9XEEOnzwv+jHQ4dZbIMQx/97OCEKPux
MRjn6IE0op55QFg1/cASpwMCYvZBjyfVX3NYhVvW/kXpm0UIyN8L2uPcgzoviY9eKXA/weJ62yNX
+x23YqKK61kKlUBjF1tVSaO7Zi8ySaV34nq37PbSYXhoORXCf/4oGvfCPtLqeGnG1/c5MPwOGa4d
TEwCsiRTRvrClMoAj7OeCMPzbZSRHRrjr+zF0lF1l6B2tWdZjdRhLGVp1b6OrVTehLNBLKr5u+tI
ziXn1MFPM8/imyMMFcgj5ERPW1/Gc+b89XNlC+UoS9iHL5gsUh61ApGCO1sInmYB9D3zLKE2G7bv
JAWQcGXWpNIye6+jGq9ZNiqwWg2FYknbR+dLYFlCe6W/bNqWknXlvNA257mEOcDlV0Ptal3p7gpE
t3LVCEu3v7wZYcUTNtXJNoywh924g42r3CKKLtwC5BAOrtVJP8R6Acrinzt5hnV75NU9PRC5WwDM
/lcpIPr+pS6cwJeS7CWBFUoq6A28w9BvD+iQO7KZxKwz47Rv5FjDXT/cs9TLgDSepzM5EqQXBF2E
NJrVzs8RUC3eJvkX1tigr8QdwM7aiy/SMWJ0HgS/GvmyeDeitCo6glOnKDwEUjmx52K7KoNcF68K
+c/w1wN+UIynbrRksKzWYco4TM1OEoymw/w59iXf8RFNloX0hNjZVq+xGhk9JpEDeSO65PpnOONA
dMc0lxMMD2B4laELQCPise02gm3IVw3V/+4qjFc8kE09aOX7/HTeOLXR4DtIVc9aN0AIIuzQ2X0i
Jj0ilpvfi8tOh4RlDMlgk2NO/t9pz3hL+z1LLfdvXitjBnr30bq7QveMt3qBoobetlKtGPU3ZSGX
LlydmacbW501hfclUU1DM3+8JiiuELhCczI3MrgUfCFLamwXCsSM4yp4RA+O0/Pqlt7IKJfILNFq
CQRuhk6dc7glUQrzI2zUgMvyNXpDnZAvXjggpMbQmwjqRr5BeqdQmVJMs70URvLxkljis9sPECR1
2ycNLGSyOMSx/S04XwqmEPhp/B1oEweNfGwUkwsnb+OpmOnOR8uYurgZZYTqxzIJQHG5GO2uqmVZ
Z2aLGJdcE9dr6YYMMW7AXHpZDxQSINP5WlhDklXfXm8P6XcReg5reHxUDOo7dTFT7S4MpGAEKr3j
0grwOhBT0OqWzEp5xfkgWXLPwOl1fCSjhzFVZmWJ7GB6V4N6I0PtNHdKtSB9f7BsYr3fjZH5hezo
L8NONuEWQkv26kKacSNOJ2s3683s8uQmNyaCbK8fzozXpXjZHzjBFskN954k1PgxD49NeBcjg9Ca
/FQjW+H3buZtTjjfnYKP4rWcCbauuHUXP2kTR12U7JECnBMgp+ofGRgA92ABMj9nDEGqpfQhVwp/
O7mc9gRPKZhbkJFczZbCD8ypVGHZtaKEDjIfkDEiYQT71q/gi6FHkO9sU9+wDasqD9XVtAl009HA
o+XvH3uLiNon4jHWYZc4kGXf75mnARRLKtTBmbficMElyZnymVd7ZSv1QRfnZndIdjKDcNKYTVRV
xf3ihdzwGz15kkrJfanC+l2ZZV0YIrfEUDcdx5L9qSpdrrs+TncbaVdmbqBp2xhCfyc3l1WRvH5U
XNczD6K2TKmAnB7B+OyWrqyqBbdiW6sftvG+xQwWKg+6i8BU7dZ4AKs0PNUXztnVn2y8VYyli23D
i4ApWjQodhRwEtO0AXvwhKiUvqbDN2GSokhaqbt6+VnMz1jtDH/GRJNBUXlBcd5yCrsRvVpDJuAf
9LzONLaG1VdjUTWzOn1zxuWY2hnmDnC3AWQyWEm7+BGI6CQBzHqd/1nbZGQKJ6Xr6Xj6ZcE7A8TR
KmKztFgZpL+LO2yTwVLhnEL6R/Du7BXZ7tlUNSzjnRTWeGfpgSspWzk4JPeD+a3u/uMicQaWXLmJ
iOCR8OdgBETNEC+jr/R4GzZoMMoPdms1gzI7LzWnt0Frh/g+KLNqu0rrQEvGuXa5KeKMYWfa6elj
UXEnAFi8S7yD5IoeB9Xu76ZwPHIiWSs1ISynG4ErS80vJbcVQTsYsr4V+qSF19FnW+fmxDzK7VWK
iFTQN2otP0bEyhv51/+Ov1kfDrvgGIl5OKtifrJnoKK0dNeyTWWeebmQoa+7AdeVJRM0GI8MT7Vc
ny7an9zExinV3qywB2cvjLSPcdgVJVOylCh0bWX8W1uFLcBLoqWuIBPlTspunsL09edWd++2Pdvi
wWiIy9HLsO0HUGzjFpt1UNOM5p3ivHvUnXWBee3XgcnrSUtnz8ffq5MbyV6YT30QH+5M9OPpebCj
2+Xj/nRT9HqdERp2km8F4CLhlWVhO+wyTY/zDyDgpIhf78WjFeczHB9g25tMBQK1cCz+j/8GJ2r5
snWTL6/LjWDwRglaCJzwCTo1J5/64ZUF5FC+/sm0GnyQtlM66HQbQrty92NY7YId58oQ+MPLPNOe
CGe2VsyzpatnQ9PC+OSqJw4A7mfulcZUCp7L7RU3dDCIb+tRPJWgEb1ngl8zwQL8oGpN3MIBaDEz
GhcNbiWBiqvctRpwlIvtW5QWIrIGmso52wcmux5NDkmmNpi+SHrrIgTlMm3qTGmlSNQyZcVd8AJo
BR7K7zKozspWF0V4rgUJXPLPd63SKgeNDWmcmhCYnH/b7KR8xLPKsC/2rcT7HYJ23nEcSn/aOGbY
y26RSlQv2wVZHJj1pTJbk7cjSi4b1xilh5NxoV8QWCfHIhxAPkkmPp8orKyVZZbtP2iZif2F1dZF
6QU5paTmyJCzYWpdqkaZw2S6o61HrDqGylidYWIx2zQvk/E0LDSQVIzxxc6OTmwDMX1gh+ItCdG0
+kU7GfcUPd8IAkDEmaMkKS6/jFulneSRzLy80GK1WwrF6FQQLkGmzkWo9U4UGt8JgQ2tw09Tl3oS
5RwRsCurnc16egOIek7UimKgW7jFlNX/KUvZknA2569u1GqwuxCXGZ0/xsk6kcBO3aJLQAqV5+0p
jRwx6FKDlxY/azDJCTHDsv4oT1NhYDbfBtcII+fDtcbqNjexmZlleFjxiCd9Qari6pDlBH/2QUbi
HssL+KPrvtyu0kTeyXpNk+65SeyJh6PmJvajKLBY/CAJWFN9lZeBWf+Fw3ch6w9aodU7oh1OFBNk
08oePp03yoaWksMzxif4M1J2vrI9d0G2T79XVQ60WjkfoGPNsTyrhbB7oq0kle3flwuqNzXMagWi
QXzgtURA1HsOwYMZBHg9tTqrdAqe+t7nereKvlqBXu4M8wi0WhcLe/eabT0VuSqYbWQEuOaozMl/
UB96aswrDKikCzLyxIIjkjYsTxtyCKvkv0xCPcnA9OT0Rlle+T6/+qZmEll6wAH+QNG+NAUfQ7bB
gqek87VoyeynbgODXYj8avRBOdCXfqv8YKDZcydtJhseqBGCxhSXxdXVN14mFdsry+OHlIQpTV0z
P2n3ABaC3xh0QJgJMUBjWjR4wye9EGrX2eIUrwM2EvKYhBPpeXz2lxLTV0KEXWp2FVEXQiLdCqTm
fJ52DAnQhl06M1qGYyqWMmvjw6gED1yGAGk9oZsOxaPnPQkY0ygpgg1C+PRJ/IA39UpYNFW4aaUQ
TxrgFGOhbmvItDWGpWk4gPvla3T7J8TWQAT6mm+HkxpLft1VrW4x//nsp27cXAiC8rooY+UFv1uT
266aYPYkMyTR9xHPkr7hylleS7hMKVP20ZkH8YStJ+JYYc7ljBDja7TzKkovWftoywqFD7UjDW5M
kF21e7emzsYBiEuOXqWNJ0DhIkufjkgAosEeixeuTOMfA8WsaTuwjoSGgXaLa/DQnHE+rzYwo3QT
XPrkUDv1ClbSfnD7VsnqtrgX4dW39WdDfWyklvJlWK2iFooNShUutRFle3fpIiLkLAcV3K3FvevN
tjQ9z7avMn7PfY/ihYvS4bl6nXg74hBLxb1v4gd3sEqF3g3wULi0QgCmYbx6VYZ5Ei8lETN2gHnw
0xvWsyO4LHUYLKRYgPWllFD9ec4D3HQZ72yJauRRXoGibMQ+U59H6ZJGR1Iyx6TDcpm/6vVGZZuN
zviY2cnbBYCM36Z6IMr/wXHnpcIoQt+TBAPX4YrOzik0GhkRDngecuSzkx828coMzyIY2sKWLOK3
irPvDNx62fi4z0pIe0derOsJHj79CWbfafZqFILULVHp/pmuWKSe+kioNBTPIYAJVKBWO8zmc445
nKUSFN8ORGaaJGfO5id03h2WwEQuiF8DdpkyktgzPpuqYHD1Um4cs7vvH/jfII3ettvJfw0ejTw1
8CoeAPSnIiOXfXVwuU4Aa5cKyyW6ztXawqVZVfQRsj+PDFQnNG724wNrbpin26Dh7y4DHIUggLrw
IaBb904bbCLdXPQyjLl7bhE22Ugp2HL2gsEVBkIj1sU2cmPhS75wDrnT5rqrNGHdvwYdbbz3r1X9
SGQGbcjgwYx4l+KHhjImSFkmEPnOS/gkCNX5EgsQphyjlFQJCx3dR3eiqZgJWx5We2h5t6P3Hzzd
NvSYeDuqe9lo2k89TDdk37m5ZZgBS6IMvPuFLOrwpOEk0EJElVluYvvB5wugYCZICunI8AyqRQlC
SdImyX+ft5Xf8U/7klLF24Nq9Vt/N0Q74geFP5nktp6qlEcy9jYyClgCn922r2i6uLqjRmtI0DzY
a/ParaE4idOtlYQI98fC2YKe/G3Zd3RBFf72nQNKyefu1Pvhj4qPPxAQQEQvYzmEoC9u8UhdOrdf
Zkp86gjGSUA7lPwxgs2C/stPtKQWXmbg38DPO9ti+8T/BQ3G5saK5wiDKfo4XNCOoe4BV/GWM7B8
H89d8A+f8FS4WtsIn7pv4UgizUuZFZOY9pR7Sa5sBuaHd3nQSPqkWvkiwMVSDLU2LOR4XBiAudbB
uWAQZWn05s5y3ywBmtzuXT+ccMj0WnSIfQ2ijiloIh4rb8vC3ytmw5+67F0g915StJWAHL2//pbR
fFrxHLkPEUmC9mhildpveprnkS3lbToe+PEiQ4wCdi4G2rgNU30DtInYRhvGM1K6QeZA1oflf/Kt
AATAXVTEH8V9Bs8iKvEgCexY7371/wDunqUGfj8CymppoTWlsaUV2uiFfQEVfJFHBJvrw82B0mDU
O90+zDUp03AYpQBOlyKhsROCcjh7o731OX/b93Lq0qK7CJJk2hWwRUvOJgL9W+5+cfSGYTeZsYxE
sZuSzhNJ8MfUlAvaCKVv+Wsq3x/M+qEqZRgBvR+bbUz3gGz9YLRoA8TfJDvYHTrrQWHCJNaJE2zX
CYK0dew30VkpgFfAFPoHV7f96gJJSwy/se4y4wDGtWPRMIXDY+JIDoMVoUpL9h5Hx7FZ8xvAyAsR
kvzw1ZI+6QPnTsRJgYJPimCbYnACpL9jX3e8x8cT9F5G2e1UjrDC1D9ZN/2iHVDqYAvSJqlCikEm
RWKCv0M+M/pgJrBBoU7lRMN4rh1Jd+NWR1uDNa6KK0KXhh0wBTnMb/wf+vCfCr0LhMUZE2xn0fD7
PSLyj4vL+ttqpU5C3jdWe8//mI4u1wsfJquDcaygS4Z5pTVoKnc/SWraanOJW2dr140ie+vYSOHU
+J3d1NeCiQwcdtpOAcYUsuvxEYIbpSzLUREOYFbEepCYeKhAhCHJTIa61aUjIwoBpx2OrHHz1PK4
1omXnv0Jpo3CFUf4BMOI7XnD2SdWxPxn5vZsocqF/uc2OZciBFHTbGpWCMoQgimjEupu9Oe1IbSC
+9ZAhS7qmdEdxoeS1I9AyP3WYBi2rHxjcjtTl/FUmcY6g8yw14ZniDCDEHIv6yi99DpMp9R9oD6E
VHWhxHmJoO5eu14Ix0hdZ77Vp9BnvvXD8Sk8pX+hyfsugghyJso6uAIVCk+BhTCO/WNQgk9DiFvC
1+7zW7GftpqthFkxyKaqxqnhDdPqnAA9MOIzLo1uP+2Wk7pPUZjkATzQaHiITx4ZvcmSJqTmU7BP
VWdD5kyU4ECPsglRwBeG6tgteymeB3uWMZEvlYZkr/F59tgnBYiu1i6sczDMDdoGOlhe4XJanvaz
mXx/3SB4uZUaMxa76xTv+9VuChdHt0jEyhXl2jnALpMvAYiKbjgoj2Z7Lg0lW+UQo0v6/qQItbID
eyM+C+vawtU4DS0rfvmINc0aPwQDORyKKN8c2qWGNz3M0ycFW9qThWZpSSh6Ypof4gau+0fpVnXu
MZZaOWSlJyU2ipJmN95id0qR2iPq7WD/NrkLgqpXhxF0/xEPT7rTFbKKxr7igJJA3whU2PlGJImT
23+EtTqOOO4HafZLUzGOUXZwpkBWJPIhe2bQ9Q80IVPL2ZeCFCM+dgdu5s2a4f2KvJ376Z/F6UFP
QxcIQhI4Ssl4Y2VoCrt80uKJVF7X22AUyS8DL01jxkLzplvZ5o6N6CkeC2DSUXe/M142FD/nrK4c
aDNW1j59panQa154s6tG02HU8uc5O0EnUQOv1khXMKdBYt5VvpXeGskcUgbM7QScG5oh/nxTbrXz
y8z9SRqb6ykp8aesEAGoSrDXWAcapvbt54smBQSzsaAmExPHT+przC2Yqdv+dcz4Kqv4ZAuTYrTs
zOUL3reIr76aWUL78Ecy8RFAynhKh0d0PugJ93CFwrPTLpWePOyhjUFKZbdxQRYsiHsxYIIYGXdl
BtjgjPjbQeW/ADxgMYTKa/xVwZij7nQeQMVIDKpTK4kz9TtPoCc3bEYVUksNBz/RVbaXfqJD3Wk2
/RqWCLajWVzBd66WaKNst/+ozTYP2seXcN4CfU8khrwoS9D8s5kTjJsVhs+rFEywd1lXIgXlLoyn
ff/NQRMhn2kU3xDWWcuWECNW6dicoGrHFDNfuYfjDJYrZ9vcePJDJd9L4B3TcSBCu9vmVQDb4DFj
n+1mgNk7OMkohYALrc1Ag5bAvRmed0UZwu4NDXA2bRyy1+YR9q5cFQU7H4cXhyuI3edC32Us02VO
KRJTjrIgOcP+N7RxaEG1sJoqb5YCwBG3ea+FK9nf/9c8Ox3jnzBw3dV6KAJD8gBpSVkWp4dE2fet
I1Pu0POJD44CA7HYool1Jx6PDdgSdDGsBvd1k/Mknr3QSi2JwJJ5Nmu1rWqWQ8NY/W8NJtFnXxdE
Gu48RiMWFm5VIRuXGBxHKR89ve8CLSiQoJK+YgDl7TZPiLaL/8pq039oygohxIVU6pFMX9/1A2MR
DkKFFerp8NVghejKWt0VWB9kfSCx7Y/c/oLiIiK4BvTSzfyHd1ngBB4SMzVguAhShikt2pvS9Y/o
MrMj8hbdwfHrrOuxRRTAcZEwcVbFapkYvpK+fGjtdFP9d4QKJQqHUJILcwEg2Y0z4Ly8TQphA898
jABJJWHLgiwibims0CMI3iOFStOd31QUQW+KNm32HZ8q6Dmpjvz7ZsLKUUM7MlQE+8oa3rOrIXfE
vwafesktJlBzqTOrPcFf9S4yMM0o0T5224BhqJ9e3qaek6Wd0orZ3BbOhVicW41UB8dkz/KGvfZK
fzhYJZ4XRO/Ow+l6wVhqBqirkRYzL53BO82vLJDvI6mY6q3Kj9SKOCgbiSmlbVEtYdIPUZwKQLJf
ACCPMO09vR6dYKgojmZOX32pDiMQnugoTxCnIZoi5gU54QIMW1ukmrOi9zaKsSuWXOZXXqx2CvQA
vOEuBEqbyNqvfN8DlMk/LjdlrKRAiUVO7l1bv7LAOaGkd8BQ+9Yb6snDSp7WjkxBRxS96ds+D3/n
w1sHgHnmNZkMBdgylkY1oiWcxO1x94K93Rmo5ATJ0BMMsO/vkeru9XZz29Z3ndjEIqi31Zr2faWl
uqtG+FSU7ECs5/PawDztqPgFYOfobBD0wdovrzDB4qac3nAHljFvty6ato5g+ZGKYFdAneM/C3kU
OGPI/XBkRJ3QPMPOK8Tl/PaC0LoEhcgDfD0tdUAIrZMJbmo08ZOxs/SKvwaFZFE0CKAFuWyaREI3
OIaH8N4WH34jsn7R1oVQJJoldijesZfwjtm1ZCMiaAEQtNmEsQc7Og4pap2TpI1XpBC8vKYY27mF
jNjRNerks+yrufNAnKUAETI4rhXVLHkeuAIiWgxIhQQV3fJcW4YtuY1Oz0/IxiGaCHYqz1MGZNKy
CAoBL3UgfjLCI6ArmU+jBdXJ3cqp9Dnuaoe06lUmunyqqrIv6e1mztURUUOmur+bErebyUL4pS9d
cD2Xg7dVEO4Rhzkd3K6EIpn44vWlrcD5WyeznKRRHEQDgxT9xcOG+RPH6sgSVJW6YnttYY87urZN
VCdMOfcWPZermSg2U9z3uEN2vJh4ONlq0gAsjZ9svY/FojuV0hxILvPF6ncQhcHsCfWpn/CknowN
G8NaMeonmt9R3SHuMWdQTREA1QRTid2Qled94woaz1NUFYZVzvJ6UW4p8Nvt9PkbbLp3W5yx6uKq
4ie1wWYodIX0z8adKHcwhR6YVM1zKKKVjbnd+OTD6zBvlKcxHxUHua4RQpNAwWrIIjVgubLQYucZ
6ZvaC+kpN2DXKa/JNvlM2njFrWfMgrYQmr5ksg28rMJCOqa8Sqri2kMiqtXcHJye0OyfrhfR9BWq
q8dbiPPWNcLfGhxsVBb8SZraUYcL6XaGmwA3EGLus95iRNKLQDuMBxdBoiArRXYya772zuk4ZfMN
ChNFwbBUaXDFXANE4qk02RdlRrz/4VOV41QB1PbGMbxgOD6rlgWSj/7MEtK280iJciTvHsu3zK/e
0s78i56RoowxT9uOl/TWcpfezONGDQDsJQ8oT9I/3/dTot3fc7zY/kYu0Zxqnc+n52MPR17x3aU6
bZWGuNYZnXWaJauNDOkRncVN+6GF/D8UzJ1Gipdt6zbdsf8nCc3VhinZVA/QmkIVq051IPHAnO8X
UVzXgtBoQfJ67D/w0XJvJE3EAksbyLRl+Aa3sv76usikXy6xhJakxbCJhp/reKO2h+rJkMZKQ36K
LEdbxhT7Bnm3La/kXafleoFJ9jDpJE81JvZShGJFJyHSUFSU8/sWt198TImWisHUC6Pp6qFeF7tr
MR/Va624lTL/EE84wuznaZCuufmfzCtDlkObZh/PfyV2lNZBneCpqKg1Ui2qUhgO+kRjGaINQ3Ue
W6qewla1Rp+uYW/qztoaGLrNjGWUXIpVh15YjMM1gi+bU7850cJPOAuh9BN+l+YOKsyPaRJbf2m6
Uqj8WdWHMQdN5/Nzjm0Txgg0s/S5RowxLKpomUBFuBnUy97pAelwkRPmfkZQBOEypGonV6GHJvTC
wO74UlPLQ2ZAx0sCeOqxCb1+vw9WkMKAy50pQBYPpJWcTyoW9cSJFuDomQffGuX9IbrVnw6i1J1E
eZgxERU5AuAcUd8Z0BhjJchHZHt2b7OPYT2aO/0Yg/OEmdRfIdevA5++QgCX7Z9bEsnWn6olcc0z
vPSYPHuUXT+3Fd9A6bdxNmaerxO+np7mzddJiCc0HgJ0i2ONJ6ZiewiHRhG0xK2HVBwGZBX+yStq
4vZporK+r8q9TyNrn3OFiPY+E245ZbNSnqBulo1H6uKCDlAg6zQ+tyAlWDlHs+dgJfQjkjJlnpYe
aeaWuAMtIkmy4Kupz3nRK8K3hKbSr5L9dAKQsJJPJt1pqGbew2Qeux2vw4oXCMNmlkPA3ane5jFJ
gaZrrD9duM2nmWoN841xDo91MVqtbB1gcL6N8Z+FtkzjwPfri9RWh1KZWID/InwLZG/5y7/DTI/V
DMWzO8Tfkt7usJMPCyyQ/X+81zPwnyBAWKdMAjF+48vXbP/CEdEVMikL49uYD5YdI4ZNjx5O6m6h
AGllf+vOonawmlwLulNdU7YBY/Neqlt2yZ3ZqRut4CJ5BT5gyijdUgkR9kGHbICFHf52GGXXGXWH
yzLvmGXovL3CnMW0KOyEaD0j08bOcmfrxlSCFzk9oIOwjs8Yj9liyxXLDRCuLRcZC5ORSsYhTbSa
l0S5/Kztx89UntskFeiuuHZNl7d3Ne3c4nHCKuZIS7T0RFjdboWGtpwOZu117W+7pdD3FXBrE3ae
a/CYxW7alEhnYWTkwYf/pY7dp30LpMfmWpl1cYUqe8beu9cnsM3Wq6rSnF/tEyGImL0kwmuGin9d
tCgwjodsYMW91vYiQQX/ywyR6jzJmeZz1XFUN/pOL+3+r9u8Un0Pf2VyP0bVe0eZX7QUo6rVRuCN
6LaoZQI7oJcqyYuwBoHpwi0c3hGoECkuRLGqGsEQJ13PZoDqNHkx838LXZ481hzPPofXC+taOJjL
zDL7F0yseVvMpvn0O+VXl65Eae9qkZMuVGfuaUqnpinqajLyQzjMm49xB8X0AUyCGtJOCHUyuK1Y
uCOtD8Nr+ga/0p+PlbM1akGtTU9WIb937gKJXpFnnSGQaWZbuSElsVXGl+LjKtcP6zsw0blbq5Sz
GNBiZkZtenFpPhzBKWUilKbRHecozi4BrLPVTGFqTH88mxOWVki+hkZFDUlIkzD0yDr9FsAjbIqB
uqHqsSybPehRr4UeCI7PytehcnKFyJ/kFTlZKJbBc0tCvkswnvjzcvq4xO6HaSRfUH6D+p+ZuJ7z
WAebqMU7GP9UB/2OC8ogm1AJS8t9hJb7lK3KjsTcUMv9JBT7qfWxzvPR6r+tsEf9jQvwIj/++ELK
yNmEP/JY9OWRRNmUlyMyNLwPhWzZlRyf9Hk8MpgsVFvjm70Lnc+iv0yyWhSviRd5YCHAkLq1x/mb
Bu2vQBcTcYuHgd+R05hYz/0iu4sb5k6Z3+u9mFMpScKOlhqxYQ/Rwm4oqDNHKl9gX1F2NIW+43xy
BbxtWP1vi0c1hvbr/rekpXR3dlG4J131Jy0OgoPltIJB9S/NzVIAS+Lyfwoi+VbA/uDwas7RZlkV
XTQDnGxUQFoSBOT9SSqFW0PqQeNp1B4ShUxek3O+MoUlB+eSeMTHcF7vSbqmqFk6sRXf+ZfAQjWQ
jxDBJcH8xUlnAhTRf00JrwJvz/HRcjG7CXZUdEngp86Cg44G22AxDauyyGw1TOmqBYD0Onm4mdso
i6V/XE8C9y7h1X/1d2/r+eoWPzRx4BA7Fy0UeBPd+MtCMYgLsJCryeDFATDvTbsm2LQM4VhSUcgD
w/OHFjv2wFjcObvunSgIrRNHOxOSpQw9rLD40rhp3KJmr6LtJTkQju2lLNgQDyhzdkK/EDu8sOVN
/l3Y4lm+A/NzeVtHKzcFCZlCGxcj6UFJ9+gq4gnThrKym6aqbbA7ch/sL06921oGRsdN3rTW8xkE
Dz/V0It6z/0HA4K+uBT+w0/8Rb0QqdFaDquwx5MAIPUvNsDbxk3mceJ1zOflFVsLq/m8PKGT1jL5
Hzi2Gi115WB048CPgywXAHAVg2qREuOnE816LFU+edmklguOZKfU4Aago/JA1d1ipj3jHnThdmLl
wwls2aD2hPWTr+ki2WL0fGCLUK4LmkrsAtg3m0yD7rH33rryClqvxjSjHF5JCW1cIZRRaukSFlDv
UN9Yd1QVQpTrASKczBCp1soqNHjUeDoUIzQZx0VWf4OsNXifqzft6rNrL1AidY0BIa1gjyQ9BKOI
he4Fxanepc1rSNvmTCe2pokFfdLYdiACgRNChf8TDwB1GjfcP6zx1jInJp9p3idZgTBwenxc/n3A
2tgDKfTQJ4UTgxdNk9qnzRfrUAyM2Ld0m/nIJ+nQ3dFdWShCemfgEPVO7wbFKddsqPGnwIQ3ZPkq
TcRiotYm/f2zjpX0VmYGqn2JqqLGyReVqOmeTubJMuXAhw1xUKj+kYfwZRzuHCJzc5Qht9kICgOS
tN66J8OkCvftNMHnXH2LAZTBM6FtV3LiYg+SCmtTEezkzxLdTtHmkkNbDRkvQbimrnt6Efh7FTlX
tavOf6rjgmBeQiSWZ9guQS7vbht8lEEKktc9DXl6ydu5ErjwNO1IjO7cDuGqAfxJeIVF8CNmhFM0
yqIrQD2aGhm2XWq4VW9pRCCCPyMCqMhiikIUtLRr8/cdMvDK4+42iMyAa+9vygFaUSYB7dQdPyee
Hz6X42AjeAfI95WMSI7Pl8VXmt7lIJdSnXWqZudNwN7blEKQzhqjJwNLm7fmE3nrXRNEV8BGTFN9
cyCviCKWV0NcbiMa+z4EmdMcVKfKinI+GT68o9SXUENVZrkquHmcPpFYMhSq4GbUh0bkx//h1eTX
i4neyms1zhDc5mFGHgTfA97w11kQMQZquXc3oeKi2hoI5N1g8hB6dyzFsr3FK0SgCs/hsC2D6qXp
DjWR5EQUknlULsN+YJKH4I8t5K3H1AMCx/kr2Mt+ngYcJYzXSfQMvRy9suuzyC6pLTu5RjVinfKD
F2QPcJdvycHb+LFlvFOfdptVyNfiSawZqwrFsDDdp/dWQQrfMk69xeBDZGog0JQ2HNqMXgApz1L8
B60AiP5ZM/EoiYg5RGXU2Kh+sCszizjdFILAdmQ9MtuPNKLp6OQ/NdrD2km2+CsD3C/Jq0kDq2+Y
WZC8ic3Z765q5rYjMoZnPJFjIitB37J4oUy7sQfRdHivN6Q6rtYhWJl2XBFOGs+RxVKYHmdzSUaW
YLNPaq27PMm/O0h95DMqj9eWbAktdpmijdITiAKvhgrDrldQozOWYU9bVBUHJkyQN82CD2UuOTj+
F3ijNuLmdpI7DtbmiRJ4Jqjtelo+3rFjsW3swRkdqCF/57cIx4k/xpzKwrhrRFdZ6ZzHOorJ72xi
+FoADEBKKcAJPU7VUMejBRTFNDzam6Pz9C/lNZQfr3/323UZ6WXBYWQ6TJu8eGFLE7rjbqMEnq82
KC7rEi6DYx7XuLH+842jQrrRH+Oz1IjrGojrPPPmsshvxNb93noEhPFw2b8ewITI1Iig6+Gc1BUG
yLnIHiUxDYZ+gW33VZ7YPQBpKYULOLzmNgzfbeYlMcEq4sr7I96FbPD6hXDLh+8uZ6yIQiLut7c8
F51W8EPqFP/Tp63FX/MzBxR+AoUHsOej7zzGhioAGArXttY99ZM6kg9ELOVpj2vzk7wmftZnQG8M
EIkgIb+4fIGfM+a5WA3vsfUQD1ujVtAu4zs6Au/Sx6ATtAavSl/pGO1h3+Ap42Yljg/VBCwA68id
mTQL59SfWVVC4rXOg1bGvB62fCnTGPgPLugeSS4/XztteLzcIAomOB07ejZtDKS0OlvuQ4q9agny
ob11vzAC954MdVbnwT1Voi+OBHVIhdEexgCLe2NQRx/OpTfq5N7ht7XodO0aUjEQKlrPqsf7UOI1
NFLiMS1xMJfHulsAyLbbCgY6LX/K8gt4LelbZEIsbbug1xbDlegKyfxwDfg7anTW1x/jCtNnQoHN
638g2/cQilD8Aw2+TxaGLrGwf/HYs/4MX7WitjDx4DWndctHCuUsb6tpHCewD6MTUam8Bg1Tr56C
ZYfCDKh6M6bYP0h73ZiEWDBL3gRLFsggWlOUA2ge4eJAj6bjIBUBB+ktpbXJbYpR77Y91t/6rD1Z
0xxHpAQYHuJ8BaudYULqnsPX6SQ9H5X3+a3QoV97dYRJLxgyOV/4r0vPwLPaPMFss5Se7AsKkKko
bXcz+epHaHxGQx3J0XK56/sO7N5dzbg8mhKK3RrsxIwAEq14C/JX4Aei3BGvGoguADtM+GNXnNeE
nQB/w/FhusrajtKcM4qYRPegxRLVnkRJSevhNViPRDY+pIuJtGXY/krzrgDnXBw2DIHSqktDRZxd
DRtRLD6CVwyM6l3Le2ZMFG2Y7HjUJp5yrlLCqOal6JDwDQGdl+hEXItPuck363VhNaWtMsqP3Vup
ImcbwOC6oVaxXS5T/yZxLo5427gp5vc2NK4/TI09fXK+K4TbH6KjXZhWmXyWTngVXGM8QnUheGoz
s/zdM4qSEztoDOlVG6TptV0x+PCmwiq4DKyvuLVQw36N1VDlNxivqbDfFEO/POKT1TxOoKFN0okJ
O9L4SXbW+7SkbxnB7JDNCsM8P+3RvobWzSZXOpTtmEczKCLkPHXqZj0sII8uD+cfLqAuaNM+yiGd
TKS4SctidzJXptDzz0i1xO1kXFi6SJF19EzlS8gAgQxlm3njLD8e9lD+y5VfU8L0oq/ImAzSh71k
4oDtiNFlT7HOQsfXDC14ITG/wwUHw4IjQicJzr5ZwGT8vEh8Smy0Es3KIDJnAhQT0SeXtScDzsEn
gcbakEXyrTq1cdPkA8coTQ4RAs8/OpLAc4G4JvCB9PClld3k0pbl51LHezeL2ozLi366Bga0Kcte
qGygQhE5d7jweTYDpZoR8ysJSgsprF+keTZkgpRO3io9O8I5dE8v85/TsuQZSn879jieokdYY7Dq
QAv6QoVw2qrs5i54lx1p9u0xGaqG+Zq7u6CG67I8fGw4M3ijRcL7+XUbcwBFJwKP/qTtsCOmGGSH
tu/3Zt+Zq/sboZ6PQzZbDFMDEdEp43l4noRcKFxtZ38dTxP+GhSJ10uJg/PXDaCe38nUb4PKUw1z
lf7l6uPsSP3QsmFJl+cbFSJvCYw0pOdtU+XcmNu2Zo+JUsK1FY7/pLlPqGE7EgEsQIjZdMuZCSqU
8tbuGwCwx6mFo/xpiVhfKsBDk/bNxbYlTdeUlU6BKVdnHZE3zyvC97ltegzTHeVOqo3/druT1Bb0
W7J9VcjvurPq8ZQY6ET5QAXMmweNgt6VZaONFmyzTP3in2uFqmV7uHTtoX6fKF/E9hsXop7XgsSY
3MVGl92MFbl4G7W5iO8GIdJLWb/G7hIU+sS65EiWSjsBHkTgJTQ90fn3ziRuCNeGozI8w/sr6lWy
4bREXyPoJBmCYq/rJYxHKwD9yzA6+lOETkjH4yFJqvWkZKJSYim0LE38QnFNcb8AkvK6QcSyNLHN
UU0x8ZgxRP2nmiuZYdlwLqi2GmIQOdLg2QYruzeRC3dlRH/uRAuXrYxiPM8D08iXo2Z6HfojXU2R
kgapOtbFBNjXlYCcJEpgOjQIBJLoTulr9N1mVw7PpBgAWGVJ+41UO5k6euGkJG9oE/rbmrTAAf7B
H/mxJAeUe1Iv+4fp/fTiczRZuIeLfiv+aHq8nvN/HYXqxeZ5+zSETSKnZxmLhuMQTr/cZGC1dItT
+yVv37GSxmr/vtmp+sJ9uIF1kCg9ieLKj3SjO4x4P+872Ut5+GL0IcYUpNrYeaI7h/kUwNaCS0In
cUZ/FKCey08VTdawswXmbbfRFOJ/RrTxVyDDI14NeKktFg1FIJEWuB6O2Z6b3npR5gT6KNXZrPZP
kxf0UB1WBYcmKr4rbcwTbKHmGyevRQURt/sSXVMycH/mytEq6YQfpldU0em7OfnfWJq2pH/d1/kK
ZZJEO4ssGyqJf3paho66z2DGT79wTfeZlaGjdl6kKMwNZyIzxXXfK3/Eqxt2XGI05+oVz+YhZMNo
CukhKDBi2GzMtQTWLzTzC5ROIdw4/Y6HBT/seh3dS/a+GwzOOvlk9fyxXtzg0CBLW2cC9RLh+S/6
VcxXCiHahipA1wxrjyere1t2unFb9NR2XKrCeyC1ZVulLaDGi4mV2zflFykLucn+y3uIAYTZdxes
3cKcuW/X/fc/N/xE2nMzLn7RerUp7d6KkaODNUZZXs+biiZUSjbd6ZUwd0h6MilnaajWfpV4hdc6
wp5kPj62/tAHIoZW3ArvQJrPMsnvE6MDdUI33yXXLsax884iuT2pHBacmfjzTi5hoj5KgpTu1BIM
1ekcVwIN3BnNp8e9TscHp4Jnyj88DLRyccGbc66OmRb++zhh1jl07zQXzvtqGOUj8JJGTO6/C5m5
aHtPgTWE7WteNOtF3auUIRda+cby8dExLHuyE/mL8n5cCQxwFa4wXNXRZhJBgzJGev6ed1lJwLJM
JzMt6g399/fwgeguR0ErS/ng7y2TGhiXOAB8tA70YviPe5BaDkEgbsZf+KW3IbvNCrGqPY6a5LDB
I5+eLhL8ZFX6XOABq0U6nixvy1wzfNhW2mM/570n8uC16fvDVzT5GU1DYSH/LC0pGexmtzTDwkqz
6iWcoJJ7Ogr3Ox9y2iWnbqMKEwgwcvogPIDIkrm156IZkRIkNYAxO1qqknVmm1jEdW27RrOhGH0k
eOntlKYbDrdjTLU944LgIkgTeNM96c67z8C3qPRFnQmdPpiiZ7rF6rLkO1HjtSzZhhgW8kqQ/QKa
qleGS1n/joQRHoYAys1CtofFnj0TVQnREG5/Kifq8uXRHaDTXTacV5es9Wt4k4cNHh+SzseN0bdA
WRLloAU60VYc1WOrUXMCM3XPItf6RlXtw1QM3S5iVsJbJ0VnGfPZJ7//O88dYHcRX73gyyU/FGMV
W2+eQnyLC+h7zJAwzXcSaYTEd36esoUXE00lrt7l69FpcXbOP+EBp/a7MViIMnRweEYhPhl6rX+d
jgHWbbjk/s2e439HEKKn2y4Qx2qLnBDI0EjSH5+dU7erh5PRv1fqyrtgGKR7ESSXefmDeZXrdRrV
KGH603ixQrzxdh+b/OeBGZBupahJs3L2q685FWlqA7zNu9BQOp9aXU1UBrX4HwatT5UTL1gNWhu7
Di98Bmt4fYHqLFic66XM94RrrUie2IhOt1psYJyAXHcLeoI+gTAYS2HaaQNHitUp7FpgeOP2YqrA
SRKId/hmrX6w0+rbL2o+onT02t75uesS9655v6Q6bA0ICmrgqGKPvLqwtbJ2BseqaCSLcBVZ1b/N
HyY4yRBDZp5l47KNoG62wzzqcfe0uEKflNpw79D5QZC3I9l2jDd2DNuIQctSGeM+ygM8XtJpn74T
QQv7c8e+zdXyx7WTVKuOmx1XZMycFVD43NJmey3YoEtBK4GL82OqzXSeu64dOhjGTO2dTxr+DECz
TVWkYyVVI5wDc1l0ZSzZ2dt0rt/8bDwoowvRTj/sIDhc0NZ+IBEibo6X1j4VHUAQnNaM8kFJpVG0
IBJkiJlDAva5d4lLh/rRoba9mhbrcmjMCkeholxf1lcq96JbFHZrDRi2cSHtZ3DWh3EdlViwJGeY
ee3pQBrYcD+pxc5bqCTgDMmKSFGrq4QW8rjEN0NErHO79+Q6iq/aSZd/bxYIJqg49nJAEt7M0d6V
0iQ0Fw2xQV3i6J+4DHq4bjPgNcvyBAyi53ml96sLTuhYsOKhFJdCGgVKbdoNQ459yIqxemNEgAZP
Orf0uuNz1B4J7WvNKq53CGl9iLOoZoa1IfzcCvVgLZTjeEBQgUltLrhim+DTTpihMLcQrNaYhPdS
Or9hEnN6g7OKs4SGLV8eb3uhwWFS+cbxSDEOYQizO36c2N1dVbsJ7C+9ubCV8MajRpB5kARKSIDb
LxG8z0zdOL8hFiF9YYj0ZJmm5Hee4GF1DRhg2dFZ4+rq8+sNej9xasvWxGzy3GCHvmS2WBafWX4Q
Z1FUCYcpUbKFRCDSc+TQjnvlaN4HJlpGoCkdd9u3r508yVjQZC65zBNgWw6UlLVF4jRvt8VVFh5b
tIcwHjOh2C6svxQPIs1igp5Kekb5WC0I1M5uoRVHglcvqTgfHOlS8XSSQhKLmRfmPgrpHfsMZLxr
KjSjJsd+XivNQEGoD9NN9QtNlK/xjk3VRll6zpyBwWI4A528Bvmr8X7VyIklxQEuxUBSmWZG3wOb
3QOCfbqOdzE64hkyoFcyAR2bU266VhcIAk7PbSWMiKgGbGgy6mBmxs/FKDKlJhvShhC7Dd7K52YI
1J9FvQNxu906ClnFeAcOSgxlrK/IO3Wcejtx2O6/fAykv5aOHOsPermaDgpOclsraoVpXcTZtHGJ
IkakZD9WGeuLuYSbx1aCatzvWTBEFfJHfPhQEaQWo2Y/RUndn6+mDn7koz0USVM6n88+ACtGYHuA
c2AsFokq0KOFb/Cr0cn1b3Cemq8c/XroQHaXrZEnpaxYWZs2+Z7wv2oysCeQFmMUr38A6et6PHXX
LbuQztq5QsHNEZGyctaLulfOiwOWl3i+TZ/zdgGRX/UV2wWZIyrJkbSRjD3czcWIt98sHTboSnkW
lxI6w44cNHjI54VU53MeHX/MAxWrxB4z7G3oqVu8sYytBUoIZTfKGn/WbLnHug3vgJ1rX4ixKi0z
02yXkqcMRNHYv96y6YJNkDWHwqq6y/1GuWCDF0RvFuZJT3W4fLFU7QX1TXQlt1MDsOFC9DN1/JAH
hV5E3yqrQt0gZbp65C3GJa0LJQyvnHc4M/e3XcYr1TFjci/9vYiSObHC4MqdNmfNhSW5iJ4VwBx2
LpGFmm0Q5hibwU17HFIBUdwWKWymo14RsUOVaxV41Sd3HCQboajr6nG9QltcXTCehI1KwwnIwIbM
wf2Cx4OK/C2zOmzQ1LgZII8CGw4l8gIg1fHWC/E6kX9K/jZXo2EqFT6NJGbgrZRli7n7dAb+okr7
+S4l+6F5AjmI8vatHwvEn/BFiWqFjOw0tt/7VWAH+AqlKx1Ti1F6mIv75+Z3RC+BUnefcFNUWqhW
FJVoHYv4vYoDp26sA50s/FLqWGdD4HDbDor7pXI3TD+BjwwWUq+7Je+p/FDtjJgnxj2Se5F8EK8N
3ztyhIQY0vXaTOBi9cHSpmHlF9y2Zt+UCzR3Crgd3TuETG6lokQN2uFC62PFOo9AkDum7ecNZNeU
SI6bfmnKcxgNUAOQHz481vrOq2CInrSjgmTJoWFPB3C/UDpZILgvKWvg3Eui4381bNs31C1NKwdb
otkCMCo24qGhRcZ9y5DYb5yFGtZL/ike8QP9MUZJIioh9jPP2NwkxKs49Q600swiAD5RKNtq6zo4
tpvM3cqGxAC7tJw9pwws97Ri26cHTCrNBt2QMbEltru3aR6MCtSymSEAFTd+pJEHYWUQheDOfa9/
ive00nqObJ/tbm2MktOOCtKJDPQgBwOlaajhNdffDD5OltUTCBS1MBAQ74devwLBNUBwWkX9NXXO
ypMaL/M9umLzIFy10tpK1X79lFpUjpFmK8EVHnv+VDOcaOzu2aDuGWcN0vs4l2wlbeEM1GFLY1x+
CuaPAj2V/J4W50Zk279Ju+fcIgGJsx5q0BZbnzrMK07+ItR6/K+0XvwGbrcBZvVlH2u7AdTToeef
OzuWC0UghfJmFU8+Nw4x+fj/cGyYE/+XWEIAFBQ6tYS5f+6dNPVYGodSkiyD2VmxTjb6xnpaMceT
Y8zGoeGYUT7AIJmIC3H15G4DfdoMQrsyvD+2eEwdwiTJLnHyhOmdyrZC5HtP4R346Chr/at+ENh+
bhY7cGeYmRflclVI8MDAsaZNB2JGR67MvndSsL89d5G1nZCT5zW6bkqFChUgOYdUunEIicTVaZz/
Cxkg3a2RE74TuSA/394OR+ZlZb0H3ubkZ+dZy8UvZraJXHYzB4ml5/b1IvWFWLGT5Sr+gz2r/MyC
8UAqBKIf9kNLUoYNs8POIXszIXFjl5gXZSidh/G4XIJsmya9kPFM5+tVQoq5poTWnjdQENDFPTkU
NRjo9MiouiVBsKLyhEfFmVQhI/7n3p84RNvEeKT3gTnXtJyjljptt4VYm0Bx0iywjfMjQ0gr43I2
sOHMYu32JNzlb2afwn1xJJSMQxG2P1zYpqV2qTVwJTStjGAoJPZke9yxh7/iBrYwtP87e5cKYZXZ
J0n+/n97ppPxluOdhMuyRWQjl+IqqUWhWDgW2gHkGOGXKvj9A6wHvTgioRJ/e3J/oUSSlPDyy10A
xdbPanc7c5z+wtysei50BCF1aurQajQ8szdrc5DqEN19IlFNinVHHHiwvtIIzY3QcHAVFcT3DQfY
blReLmuSj/Mr48G2CUmS0j4Z4Gso35jyLxy+9BNRMOCVL5sXs5jF30svsuFx/5KCD8IuALb2yow7
uTd6VNXSuQi7PlkaHK7kE2viPTNQMxh1kAByu2+ikaQUiirdl1U8lJmsUOJ+2w7cG/cg8FY5GhIn
quFfEiXY54i6H1NGr9cx/K4wqmXELLlApbWA5r9/UugdRTsLFghfyG0aGWORZ8AjcLK/juYOD2LK
rE36W0FuHRFo7k41xFi+VkJpF6ZUZT10/G+SNQF53d42Ve0RguIb9qNgiTDtPhzxe/vpKNBgiTTw
J7oCly+OqE8ifA/SjswqeVS+GjxXCG2bxXtoxHhrs/IbM1UadO8Qs456jTZT7mtLdkBvPCRy2nk4
cBhWfXy1FVwYDo/b946tDRqDJsWI2fcaVAaExG/njLOz/BVv0asn9SJ9e6h/8ZketA2RYHuRjxz7
y/elUv9Add5cwiMBxbFPHUKkRb4Pvu+Fjx4FfOrkRAwSXeQHDlplDfhEGFE3VyvLyhvSofr4QT/0
6DXAhQ1o4ZevDGOS7D1aATaxcccAHPEHS5SUaZGFjH3nZQwDC3MNL0vlNMpgbf0MzQEvMD6DbD/p
fRI2ilgcnb0gJScd+nzaJZrZ95xLzbGauk6NM/QGmtAeLxyJV3b69Ew53PBD2fOACL5C6bv+n/8v
O2buYGrNYHYqX2llbA8xWAw33fQQwk3Y1Pf14scGeCLEmekppw1hu+wRONCs5J4x4uai/X99WmhD
VddOwOBlfopctH8M65Sy9x7YXhOufBrQRUvOXNVlQPi065BL4d4pQWlGBRAyuXsjPKeq9noHtxBN
3q+vqgaRghGMK4M8xiTqoQgbThDMcYQkIGPXAgCW8aRxGcqkpmcPCmhNWE5fgH8Qjq5Wfpri3V7R
POyAbvLVWip1d4NPDbgpYxILgWqTEyYngMe4AUPlQhhFjXuj03wpw7AGJwbkcKZ6WMU6M3TqQ177
NGdIvMlfWy5N1wZmbnH4HinNml3hGUNzmRHgTn5Dh1PwYHgQs+J8wBiDlz9e3+6+zePb6dDQKkXB
pyG20H55fa0r8tNJ/VMaphloBOSNAhYb53rusoNwKjjVB5WoNcw9wBWO2qRoRwsXYfY8qC7oJ+Ar
HjmQTyNYtLieZgn8oOujrs8pabZsgqSzNJzBFpY2ZZvbcK9lAEVcUs7H3gtJvamvwC/YSZllG2GI
/3foBO/E2TyRT0b6UNutymyPmt5vWNKx3cbbqhmTxuF2N4oKxdAj1bmU3jfqio+D0tpj4rrn1i+L
UlLfPiNiWElJtTqPiHCp247WBj6qAl6JJ9Bii9ITTvUU8yQ1iCCKB/2w+nc+LL+Kosi8nIPQxlVF
UvMiVMPgT8xbKGeoQDUchf8ZsCRPEDv1AesCm4fqfankLFa8ceMmp6ROvZGmT/TXA0VE2p3zrwGT
juoV4EckBnRrq8i/xKhdfe/A/71w6Z65mxkS977E2iYvOuzWth3+QMql2rDF4kM3pgjoL/pykyZ9
OVvda2CQpTMYKaHoSMJwyzTXOwWFORl9E+LJxlwoYH/rXPubCVVyvQKE/NP1wiwtkImesyjlCbzB
LdMpg5gFPVmAhu9qDLCcuw4z1TYoNzY8gMZu0E4KnH+tAeLSiimVbGPsi+Ify3sdxVdrhA+zid4+
VqM/CNuTkY64O89muLSLqH4P/q+Kh2FX56VeXbpChjd/3cARVfjK34pGMx9jdRAZgqLRdPodC0iu
xOJTFpy8bAGdZI5uAHN7hgA2h9En9mPWRf/jGfFEZrsMmKgUjrbgzJ1W31XYxYncoD7SHcgIt7gJ
KuWgJv5kEEmYEtnFp4/rKNTw+K9vcMElA9oMfsVVv3Eb6CcWz39LkI+CV9qNDn7x6AyxdIAZ/oGB
ols0v+AR6bhAt3DdKlDu1sWHuLmXaJHFs9pBvybtIZ0kC61oiuDiLagm0YWWrss0EG823g0N6SI/
CyWB+Vg8NlqJLCyQKYYt9+2cNS4g9TPpJPxAcmYhlBn6VAg8c9QfXbV91ARhx0y912S5CKQ4V5vY
WFncWtGX3lYCkmiHpxpPxHjTG4UsGraIz/pa+fgS1OWB+TDPh+9ZWvKwetVGCduSmRXZ19zRKECD
7uewxlRKV3wuMncmho2RTtCRwDWAx93Ld8xsa0zDfsbCUkhi9oif1XKe+bkXjLQq0VE1pQCPS7To
RlmuQhoHlcu0zdkOyOfgq8TTi1uK+jyN6+9FLJgRXS09AAInb8RB2sPVV1UE/9u/mOiqlFE6TNzW
lCaiGNf1DVEsy+X0fQfNUV8SxSwoGzw1xibB2MJiy6/y4fctLajIAOyWHdlRaYVbgKrJcqFUF97s
n8GykmO+2S84AG4Bi6McO3+uI0x1TBNSF+rSsND5tQS6xNOWPHzGmgjT40PAv7SpIcHtuTHldBtU
sIAcLX/rUH3z87pTdgX9pJbwdQwLdjlfZ3o2yEH4tc1DqTBTbpmJfAT/wev9KEUG941LMQg+QYch
qybsefS1HMVhuW2QBwUgzXTiwM2LWmBLrzUoWM8+LgeMNyKhrh7inDbuf9GxzmIRm3XsP06Vm9fV
D1+mnM6bMGaqz1ZEN7JYivi8ux3uEONlF65uOUaZghNk9s8Gqz12M/OWpyDQvKY6qrX7W5Og5+tn
igJXb65Z4FN0NmEVgI0/GPBEs/IOavQynK7quKRk6qjzNdvytlzJb+04zGqO5U6vQ0S1xKzoLX/u
g6RmyMJ0HyvbXmeGgsUKV+CpegOTAOsjPecVC7ZSQt+QywogxsTrmcbvdE/FcK8hGRsqBjhWc0Id
p2+wlDLEhot62SlhIfvyhgOGUX5A8nn1HFT6dNBeFm+P7DKxT++YbONnIsS3M+ofE33IxSEL2FoN
3503cHqqXfosVUE79oR6V7x+Z9uGdHzDYJjUYwiLEmcEIN5rOUYmLPtq+/FX+kw9EbMXEx/VhdFL
md+xbRy5oRqy419jHahNA1KLw9C8UWTPMunSw+HcWLxgf2fndl168ch2k8e9iWKEWH3hoYncuL06
pWT+f5euUkkFTnH3qxqQBeTtEV5zykpPET8GccuxjDscFCfffXmsSzLm//1LejT1yDxyfvEhfuhe
d2PLg154XfQIUHOQ8fCNs8Ezte2xHabrmME2vrxzE8OVI6pdWcHzoJJeZcd4EotlychuphNaCnVO
IdfTfw4hmnbnd1/8PX5j7IFmekIsCrdhRP37y2CdJ2gf+NCt76NB6Btf/sbmvNwpRQ6+pqGGDmXl
dOiBAna6GxyItKA+/f/rjmoRzZyeFm2jcDhva70IqTH5V8GC4SJAysKWrW0s96EI+loYYyAzctwE
s1p0q+5uLXGo6bYpM76KHtzuNZqLlIbhoalMMpet0B11yN9oiDVLJM9/HqPfYm5Ou1xLiteWc6rM
FZ/lJQ3XhI47mOJBMWQzxm0H1jhOa8dhUo06oPm1W/sZkm4Me6a335vvi13/dJ9gv7a+yfO4sOhl
qpLgbM6X233ugipHoLRMTxSx5YiPlySY4boz/B7q6KMQfs5z4/BVgcYqJqWsLh2WbmH7v07uxCAX
FIS3qNpUBG9I1QTqAFwCG7W07sIVkFu0HPAcWE1aMX0oqJrfGjw0vjL4npL7DNFnEqdNb9/rmdH0
YIdOca66vhbzEqOXw4DWn3rPAtgWqNW18uic6pyLq9YOoAQ/Mcam27BalRd0nf7C0Nq5OUThbET+
3O/uyGkF9vFWuWHTuDC2Aqj9GlAngRzkUyd7tjmu9vP2+rCnv6BMfuKdMTi6Aru7eQukcENttdG5
AVFXxkz7+Os3nbuhn1//vToRQ6FH10XwUkJ258ba22qNQ+SPlggeeM/5TUe7S4Dwreb1ko7M8mkR
1BabI80gtmj0sheaFWXv4lXnbP8Rt9jOj2Vk5N6dbMYWVeLjvf2APAW8tLWgzxFNhQopCbkYvU0I
Ov5xfSdURKPrXgZHP7fTn1ILzRZt55c/vKzajVQdPWe/WjgRqo+H+cHgx61cMHNEVgpf4CVKCy8C
3SqVm06gC6dKe6OpM49irHREDgAVFiXr6fOBm2sCqpotJseRP/dMZZQ+3bWqeuwqY45TUuahrpkL
1JwViENrmPKx80nH5NcCmMldiKAuRmqDbVBrJEU5Vuetuf8/xDZ1GdFDQuijTSSD8b5zl89trsvZ
gHjJw19pMeBxiraGsFZYTgTxGWD4PoSH7LTHT/17DWUacVfS7YQ0pXRiKtrzyGwswz/ey8z0SGNf
TY941NZvPA3JOl4b7W5tjR16YTkHYb2DGkme4UAbxtVvmvC+1KOPn99Gs5bqrdWYgDIVKI+R/7TJ
KmdpycFiI1eBoiAR0+ZpKawF8EWKekyEP9sM0jOUGBbq4rdVH50kb1iOm95SfO2efGlQe0OYAYXK
VcqiUJchvngtFSBW5w0RuZb25sRHX54woOSS5iHvdiGzamkpIV+Am1RnFdZC70WfHZ11szTLPb5e
3UYd7bhl37U8j4/0IMtEyDIf1aEjAOyZ6VrWypt40ddQzL7qgvIGXzuId4WrwjY8Z1lIHpI3JJHf
1ZzZBbwM09dndEgfw3ykduXZxs5NV+GETmlBwdEHrMPfE7UzaCDRxTRQIeVPZLHeh3WohNicTY77
IzybD12jAYaO2YfHYrYNU/RUhlUe6LPi6Nt/DsR/Hen1XMzAWTwit95n27XNfTcxOHQSvgq6GHmr
qsVUcDWkRPMW0XEkc70HS/y8eSG7SiVQ2G2hYBz2vdaLbqVuhRT5lgUk52rPQaJJbs4IYczUFpT/
MGIlwnRI0C6F/HwyOUSZI1pQj1bGMRVp1fV35oUKmQ2Mds5Wb1M2p5rTbhYLgdYRg0jx00FI5Eqq
gmKMsIFhweb8sNK8g0ZljskD3VsI1MS6NOed7rNdwjIcvE5Dcl1MozdXttfrga2aFV60NOthIh++
jzFIFd/RIQ25tU/Mf0+b9fAIkUFhdXd16iyGNBbsxHXGADAWZz5+qfL03jkLyXOVr9a9WZItBU2o
AciFAh6wQhuEgn2LYOsdAwqV7yPJNJ+P//vEn6VAgY5yY0iub7gZEoMqa3V3UINj1cG7pmM/uQFD
fCGM7Ie1u9HscHBzotoqBN0h+8ebWIWdO/bQASop7V3d3c+ucH0ecx9bIvLY0ePyBTWr1WNO6DlD
CQmopJ2Pp/yPWobIaXR9Lrwhx8mQZ/5+3ypjLLk0t2T91sGf7dDM4OHC5Z2QLRUpVmmAVSj47N3Q
PHf9DZ4zagJ7eMMU59t90dYe6cZqiP0xoPjHcsjNxFIftB58JMWS/HJ3tJR3OsVX3qKq6D3N2LFd
HO13Wu1PkU7fdzYavZ4ATD829UyJLPvU7jONlAOCug5nfPVdLBlnkLjo6xiOEa+WUqgYZ0rvrpNL
1qcUWORET/IT0HVQaKwAe1lit8JqB+0G8g+yJFjRa43Nt0ucySxgQELo82XdjYACsaPJ+icnHSlQ
GAd2mUBsYlpoOiBBXQhNi92PFYYOU/4widWsyOY1NRgSlgI4rmwIku4ASRo5pAQa7YfABI19SgIG
ViPjNPQfoFyAyYCJTm6XzUIK3nMvobfhJ26gelieb41LjHsXm8gR1W1quum0YayttKu7EqGkHkCx
9OjtfrMpB57IUbT5OnFCzqekq/XDcAL7ZvGdNj90zjmG9grXxnWqDW7xN8wdkJujxJGtOc+ZFZ6G
vfBX/KHVT5kWEbHhKEu6qn8rvANFD3IWeTe2uvnFbSPYO3atuFgzt3XM5jxfLBdGLXY/DbDJshL1
nq8YqDlEWHR+ydaH8vXPnr9GO9/Nx8wizjxAqsNR5R+5KTWh9Ofgj4cKlNQLbUQP2/3xD+P49M7j
GDdp9/bXuIIV4ElRAZtyB4EcVHfGM2OlIj1yIK6fTWAeLxX0ODodp3U/8A2PRqG0wvVje1xtihcs
g/tqyTb/uzTG/1C/KpnpIZDR8F4ht4Nl8TSr1k8L/FHYLBgJ+/Qx+UdC0BQFQQPtQhkLe3acENX1
AbOwm9i3kAEEooiKMO46ae0W/kSRtUglUCtVIoBjJ+QuQOnoBTgXMDt4gbPfU1lgKo08vMnKnxDj
z3nr3Q4UtW68tVaIXmXOuc20fprY318KEjysL5mo1h9dpZtTo7INaFf4OjvBC2PwUc6uym/szxxI
kTn0YArscGs2WE+dB7MkH8X6JYe4lA7FjdLUR968IOCH4zHFOD8dcF8M9NcuqBDs1FAG5R5qQFae
AEgYz13mz5Y+0vxtwEfo4o4/dHgfaZ9kg4d+D79pPnDyU86Nf6HWn5MyxuCqQczLf2dNizuHhkvB
EXhOpFovrc7AL8bR/VBnJActxh950iK/mRrewbUM3llHRur+kz7Rgb61PRRJt/mFdhgr+H0ICMtf
vmFa4VDZArGvAcTqOIrBH+MSABgD2jOltUwozNHKNRccNUcYHGGdV+rAiZ6vP5NCaCnuIrHfiSkz
OBEQ3vqiN+mabZVMorLVITPn6loOjcjXKX9cOXm3fh/pxzzG4gfLAEg7MaP34uBKdG5xgvPOl/vj
Wp0F8Fl0kkyHq67xNEr5T6aobnAVTveP0OnYlPce2Gj6f4CkCWAaiHPonC6ankNeMeyODtgsjVGx
VjYxCc0wypvDCLBWg1EzwbAG2PCXeTCfLrku6IJvsPeVYqUldDpuy7eMN0igqi84qjK2h4Rc662K
7ALVNuPbWpShKWgyjU9ansYtvwH1eybX1ZWhG1Ch9S6Imsw0XsEVd+Yr0LoPjBroYfRtwXRm5qAG
aWKni8i60PG36s7qQ6MD2xQXWWtPyc1wKTdonj490maxoxLoON/h7bv7Bo5nYj9N8sCh4DGe8Wbo
OoeQ4+2E7pdDJouF5AA5yrE+NJmKyQcm1Hmng9FGibvvmhfN8FliNJKo3pptPmkNOJ+BcVYqMYjG
aq1l+cT3sroGnkrxRL6Foj81QdZfUiFnzcLMtULbtKkno4OrJK5aSLLYGd+z7icK1KYiJJZZ7F7v
mE2F6QEI7CXanfPv5/AQvGMvHS18SQSvcvx4M020nxSrYl9ea2zKsjEu75zJYN2h+yYLQJbQYrKU
p4RiQa2vwxL3GbcnhBeOLalE7vZvSxXLDOx30PWDzYL/X3g+3uGQjP6ZPVawvI1J/ZaDyxPkYb8t
ZYkXCh62RbYWch1S4c0daxPEhKlTmVSJQ/PU6yDUaUPRWPOTgPD46ZgHOXQ4H4RcvrfaEYgutY0z
mrCAODKVCCDXDMHDn7x1h6o4uiR3bar4/Sm1vSL4TZnYpL7hDH25E9Skm0Jd+yEtm9ZmY8jfFLXw
gDLdwAJ73s3N/tyUKxbRQzBnYVo0s3Z7I4tsJu3bNi7r/5zKG76iCUNZgO6gsElJ966F2UPS5qjl
qyhuvC46P4ZzJ5WzQGzVWxUFsjgyRvMn3e3nanmxqZE3tAgwnVqFrpfcoQXA9v8dF3ZEG5xkUFdr
BNRHeXtW+/qmyWfwJM89b7Cf6PPg
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
