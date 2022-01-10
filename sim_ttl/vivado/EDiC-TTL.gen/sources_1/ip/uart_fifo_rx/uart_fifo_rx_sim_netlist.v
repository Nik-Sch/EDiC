// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sun Jan  9 13:25:05 2022
// Host        : niklasPC running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/niklas/dev/EDiC/sim_ttl/vivado/EDiC-TTL.gen/sources_1/ip/uart_fifo_rx/uart_fifo_rx_sim_netlist.v
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
cGcMeo9aD1ECyODwOTmx2OwZcRE/
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
