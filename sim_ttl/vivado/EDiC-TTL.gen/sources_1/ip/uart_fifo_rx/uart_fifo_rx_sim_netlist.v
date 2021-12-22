// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Dec 13 23:22:05 2021
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
ASdsjAx2KwG2CykynNmVxGj2RXJy
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
