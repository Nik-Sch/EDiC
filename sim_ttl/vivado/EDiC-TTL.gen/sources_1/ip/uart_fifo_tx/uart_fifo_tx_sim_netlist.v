// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Fri Jan 14 17:49:19 2022
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
lNKE+/fTBbPvnp03PTtv/EqKoAwd
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
