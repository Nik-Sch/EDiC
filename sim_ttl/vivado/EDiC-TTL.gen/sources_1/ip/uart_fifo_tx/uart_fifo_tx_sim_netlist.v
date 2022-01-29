// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Fri Jan 28 17:31:04 2022
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
vMnHNsxZHIZafMex7zWHpwwcFroM
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
