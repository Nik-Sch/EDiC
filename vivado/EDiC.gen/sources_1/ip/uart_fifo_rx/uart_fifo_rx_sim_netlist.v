// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Nov 29 17:49:50 2021
// Host        : niklas-manj running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/niklas/dev/EDiC/vivado/EDiC.gen/sources_1/ip/uart_fifo_rx/uart_fifo_rx_sim_netlist.v
// Design      : uart_fifo_rx
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uart_fifo_rx,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module uart_fifo_rx
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1963" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1962" *) 
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
  (* C_RD_FREQ = "5" *) 
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
  (* C_WR_FREQ = "100" *) 
  (* C_WR_PNTR_WIDTH = "11" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  uart_fifo_rx_fifo_generator_v13_2_6 U0
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
0U9pIGLT/9xeHwrIwLl2VUjuaj8c
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
