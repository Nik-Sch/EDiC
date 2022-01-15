// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Fri Jan 14 17:49:18 2022
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
dUMJ4YJGW5anr32lItSxq7ZAGx9r
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
