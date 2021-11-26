// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue Nov 23 22:33:09 2021
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
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
6XuZI7u+7/yHQMa3vBlmhk/AOf4+
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
