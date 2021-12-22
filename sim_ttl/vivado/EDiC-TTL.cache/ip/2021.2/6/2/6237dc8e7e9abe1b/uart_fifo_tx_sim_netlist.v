// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Dec 13 23:22:54 2021
// Host        : niklasPC running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ uart_fifo_tx_sim_netlist.v
// Design      : uart_fifo_tx
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uart_fifo_tx,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53152)
`pragma protect data_block
uKRtL1aNjDm/j8h8wycN0vrTKRbC4t3f+RwhI321NBXMEfjn6gZRSgtWjgSrv24/2p7QlErZx376
T8ZdEehTV1/AHaMCrP+I5EkVb+3P7R4mCqQYAwlJ7arKCTcjHwpY4kPLUSWK7c8+M5KHOczdyJ6+
BVuDPvdmUlZKdGYUtjV5nRB+6sw0Ey2uRGzYQapLoF4j5/iTFBy9deb5xaPNWC0akOSBcNmKQQJI
EV7MtOup+pjJydXviClANAHqvymfsjTDlejIXInEOq/3+DXp9i9SUcdpgtB8h6AKKkY42X0w5QaO
TaVvG5nz1aGNoBjlQ6GHqslNUUTSWE7CZDoSw6r7GcXM5zGVr5EW9aeWa/Yx9VLTpvTAhwOwNZqw
Y7J8482Jp+lfN5ibUFzi25Ws7CIRJtBPN4g2LziUOYjEvfIh6KR+/CJtWMi2g3PnBSDsXXt3FT/O
z7vwofMbnq7D/r2U5VtATGMY3Ztw79s/lxhySfNF7wxSQRirXDkBPQnegRKhmkJ3CDOuZejLlme3
9e/iM0iZyx7LDF/9E4rWq3++xyd0S1Anj4RwftHFfeOxuGUn8YZFBsXX/3zekvunHr6XmWyuSeng
ZxJ+K7XmNjNNjVHtrcVLtF01BPv4mtebLUt4IzzwAZTUUtiEN4O1aWzHxeLEi6tyhpvTuEHilYet
ZoLrrNfowVFeIWzqsUWxDYeVY7+gyGomFRzvrPDA4GLRfe98rUSPL/KN+zv4jdSjOkU1f+Y0TCnS
sttseF2gPWyfkwmPgk6rus4SY6bE1TUBFL6kFvo7fDGAEd9d010QpRoFFyuAJHFzdzMyqX71ITSw
pycxOF6qS9pQJ05RnQsmdo02Vnmk180hrSTgGLvr1kQlOEd3UwyN/UjwxD6C32iBU75BV/NcFauR
Y3G0OQWORm0xZciNh/E9lftIa0CKAzZwpEQl/VkBy1R1B4tdmqpYan9zuh4SoNI1Z1QDESjLBcrm
BXfzErvfbmYdVgld/UExRK8dUiLMtAtbJonttJ9eC0si9FC/EDB9/UF7Z1qtRdj0SSo31dS5Auue
TJjp1Bz/DS8pBMuPMx2ZLbDLIpH1OwBmqzsDMuZyeIenzCNQq5c03len/gsAGvJDwZ/lyiEOJxR9
cLb4obfDZfzqOAk0Uva0SMr1RLI4S+pSTcrzb9RMsj9IYL6B9FTkh1x6cLRZM2C1vGzbcsRgf7LD
NaGxfTHR34cCU5Xof1Yin4CfEXhABeBejVqI3E88j1d5eT+AWd4Y8FVNMy4iv42Zk0R7lCX1d2yv
MUI/fCjiOdvld0+lNESLzG2Df6lioXFuUFct01gS/1VwBEjp3n7BfIgftQnXL3Qn3le8CUIYJkKc
vG1m/dOI+0S3RyV5tHYeCUDRH+QmrB04DbGCmAFSecq8t/GumIRvJMV6jIAoE+O2iJb/6ZH2Fbgm
FpNMVbZ2X/kyRtIB4p0lyWmWV4lixfHkpP866a4kjgyH2As1hS1uY1rlUalmkJ/FgJfn0Y/DE1E4
2owzusJw3Wwrs4b3biyyI+Aa4hq32ugkEkK9yhFwVnDojdzk/6Liheptuq8h4G+wEWPnxJQvxk+a
xa0o8CeUsL0dUhPwBxaGGdnat6H2QeFALLqDMG/l98/MLBtN1yazY1vMKi7cyxvRqp6TbUNQfSiZ
i/5tcP1zncHzvvUfSc645zQLBZfT389bXb7IQclvymHdUTnfzNuyNtcF6p9Ej3cd+Gd20pWAcwyx
gjjitVvptUQSOXPkaAR6Pddlk8HFneSKV9IvLr+YHCW9QHoiTx4Q3632qstb6yy8Rq9EfCvA9WR0
d7ha57uE2NDZlrsHM8jRHccos1rPnDyc3ZxPb6CxgElP7N0nGJc8qTGYxnVDv20tudV3PYORSIea
Klf+bzJJDDZ3h+qW4lRwjpyoaW+SU/P/Pc51Q4lqNMrOvjcKukezZHj5cq+bN4XuCJRTROh8zo6n
YhWn7ns0i9uL237+Eh/vZn9ikRCntphtcv8F+V6fy9XQr0ONDYsTI+xkQxuN6/GBIKl3tkvZmrBx
/3EQ4CUuUqrdpZnOuYmX+dB7ik/EpIl9Exmz1rl/sSU0LaZcu35vqsGdst4sfxRPSsw3ABUP8pEJ
/RX/aTTwLeIRrS/qXDGIcAyo3Gk+Yh2o0F/tDuPFQsO+s6fQSPJRFRWVPYQljos/wVJoDf2N3Q++
G8k7od53PjcBnIA+SvyOdby035+mhfigX1IfEv3dlJarnSvtABHBLUnX8WYYyqaQo+3lHUp9dzuF
1mIGGhWpqyjKTSZWGJjdNrKz8MnGTMA20JH13e5xkAyQh6I0ZMak0g60st8jC1D4Fh2ScUVgDPvS
G44P42q/AiIGV4Wm8vyDzUP3mloSyplodrrXJL8rOKGNfntwCf0xxr+UIAbZwQ5SCF8T2BJ6iJsR
a6nWzekvJjWWOk5x7kahIq2XQtE48ztWegz4gIEyFVCdpCgYuSPiD3c92wFgXh01sGgyKwRiLxhY
RifszTYuSNgnYrs3iGyP9MymlaRmJOW0WS23e+yjDjEg1w5JJwBmEnPLvGBWIxhhblWhdcZS3G8V
qQ4t8gSbaL2NTN0rPZwkUusH3uC2CcK09YxWpd6i20LSLQiWso7Nn4SX/62aMFWckjooWs6TpjNx
UBjWpMhGvRaDsdTTjmwsENAFdGU7rm/QlIZAe0G0nfwvTOh22/ne53Bcdw7Zq4bylWjNh/bxx66e
i3DTVWPm50HSBzd8iAT1ryLkw2d9RfTVfJe06vAJcijwxRrApywp1xafJJ8GjXTnwtIGuLuS0w5k
ss3U5rd00z62o6hGo3C5wfL9L8wcsbmzkUorhj7HFLcE6RfbnCR61mdas51LPkr/8Sp4KqUu08GF
fYR/1yaoMBvsloT4erwujdcmJxKW5K+cL2Vy3LMMoEdUV4JvW6OzoKyqX0D8sVym5xnkaF9usbTP
N/Xu5SviEsdk1t874DPcg7r7RfaSQ77xDd9uYhR8nWQaia061hPLkavX+Y1N7TeQLySiIrjsNR9V
Mwsg5mlK6TZSQffZ9LmZLDShTefOXkOVX9btJ4OTYmhA8O8HVrWWfKyUee9LBRsvzIw1NN5zalPN
5hsx2g3/0bkpqxS7G5h0/XxoimVxhuIFfJ3gIFoiAjLw8dSOuVRNWDbzHqkTu5vZVHzMPKfma4rg
RKnIz9nkmqi7IUpK3pC4EZDpKT1t5D7nUQQfBnX3XPAbODKWoyf2oQ41OIvKmDZlLCd1GJPm55NV
Lm9DDIfhgtwyned5vX6AuqVmnqbkyv/+A3beYbhVdXhacm7o5dBBvhff5B8xgVR52TsjKn9GsNNK
VGHY4XWs2k8BWGh+5O8FimQUyjXAvfmR8iyEweJ7knnDaXryT/m3cDDAKdzdNORfLrErzzVZxOkm
B+VUhLO4bS5Y0MXI9ics/BBPBIujQKnvKZBHTXHRfZgYonOfU9ni53mwi77sL+/jT8bZ2Jo6UL/E
aJtz4QVapkfQJxRi6vfdWiq2rqPZJIMo6RPJSdGI521I4AKspBAXYWP+M1Nhq1Zq1GUvzsFQBE5l
oF58zcQETWdnLsM+eeQv5X+C092kA518D4maxvMWrLk0Jk7KM8kZGZ382a/2x9ksLfR4BKGrcKng
4boUEqXZLvWaqBTtM7uXOcGwbDnUrnVlyDrZaOR7ALkvhTfl/aEH+2ArwtnZRW6xi0x1ykfkT3yB
hfPMGTvZOezD3MAYf3chgg2ncN4xx1DLnzQk4oNECi2TWH2RRXBELyFwjFCr4kdtoUHwU/Uyokl0
WlErllmBgVSX+nUDmsKFcQ2O89UzrzrDW2VOaGsyaoc2uNUdKAS43AjIuH/gm2aOYb82oek7kI7c
/9Is2h7+h8OZeHDUIjfI0u2dGVqBhnYUM6SXLNgWuEoJbgD2x3esI/J/CUk6bHgoHXtv6yj2iocL
GVAlb/k+Q9V6IuCcVvIqBLgKJTUQuZCCcbzi/XecI8axF6wlyeGSh9NGvPG8BbG/mG5hhotbzFLJ
B67Lc3vDnDo9CaP0pCg6a8JGq6MrWvjkkphbt75saXKJRjmi3LSRgeiId9Jiz4s1UR86UKutbhuZ
kWr+/FHsLX8rxtYwZITXqY9rrXpCYidmcOzR/Va9tahPaee3xVgm1LTCOOA8XB//y9r8ghEHpB1h
R3JvNkRq8DBbPVyL7Kjn1mqdYcuF5d0qiruBfFoWQqFkwhoJKTv37bfNKkcThESzdDFTafnHaKSL
ePC25PBn4M6cqv31lipjOw2bEDM4bTfqwK+NB7i8r4WzVotqMUrVAS/c0xc8GmLhi1hq1KV6Nlo6
WURYh42vrXKbCFea+pvci8BVilqCqGGrLeX59cu9tX63MhhTPo5D7+YhpSdY8tvUmgQcJFm1RpbN
GKuxmrnICwae9zJOZsTXBddXcC4+099G8qw88JRLdH9AyPFAqnbpt7GLkHJFCJDg9D8nOJVwicy/
m/yEWbYpeESk9EX2P+MWjZx6dQlxydPF8ZkqTjunyoDPSv1i3Z34Ek6nAg/Elz5yQCaB7LhUV+qx
bUNVPyOG3R6TeUAcqQzjXRQu1GfQ6IPIr8xVX5sh2NcRcnJi+EVsF41lAGHh1oOjqjCGKnS14a/Y
wQHLtrWvHqrzwH6cHmPeYDUmFPmJZcu7QpuFGwDXw5SzxGnKDwKu3K6T46qadKPxV3JOzA3jN6WD
PuJITsfQb7YZ5x+e79whv2zxv/pGDLCvHWYalk1GiKqjx7TorLJ1Q/LG9q3aG1wIYVJIGBiLV+Kt
N5Y+jvlIMRs0xzraWULFIi5bftM06JTbD7pJYt5gVS301EIv4yiHYyudVQV+eX8MphYFABeW7zce
zTwPmsjuq8FEi/+jNGNWkV8Lxmo06LoZjSWuM82jsl2zpvc9t9aNCFELIKIWEE6naApoze7X2ypI
AsKoVBmWrUx2P2X6AgNamThQaK4hAO587d1cO2dB1+FFOBStVxk7QlZAlKHvhddPYH9taqPK1cpP
K9uRiVt86Epdjp2sjlIzLashmPk8OlZJQW9qtmsdfKtRy9IvrOXS6boCOn82/owag7/oab3FWgjT
gOBDy//FrLBdEL3j4ApmGJ7sId8QRKO8lSwMiMG9Sh349BXSeQHo9Tw0Y+gR9CT0DbCVfWW3mum4
f4FIGwwcmBV+eKAIhN2iAewukTD36e8duyZxVC1I2UreQMp4JjWqrydyny6Fc8G8s/NpimkLtJ5w
TiLPkRAhAD5YqrDekHt5vIIMwqYeysk6wissUqsmqmxN8YC359N37VQ/umsMC1Yd991K3MCmO0lO
Y7S0TU94LyawVcd0lhGw2KG+orO04qEcpBaiYDEkMoZvsRtNgtcEubVOREy37qzzfahcGITqXVO/
N7eMyTnHkVuEpOBjpnZEIGR98A2g9foYVkjg31gL5PUDSAUkXiouvh/chkWW1vUWb8tFN/TsDng5
bWB5ffMULMSgO/56w3E7Z8GllAEYLumx8fbvPe4dXL2l9ozdvHAc1LYLSKf72ggOn4OIwysyolAU
OrHp2l69atuk8m6B4CV/689UXniyQuvTLPDWh7OZ7/IPaRh1Jo+911RfB/ghtMPeAx1Sjfuhvrtx
WAs2WWeglJN4o4ndiNxmgqrqENVOpdVfDnag9O+PqX4Ji79kqP+S+4etOgUMjUedkdvL+Yu4LMa0
copfUd1Tiu8PaGSOAAMdDvbmrngPNiVrYhVlfXC/f9TI5WA22/wuUQHGvQHJaAuHtzlk3eSoCae4
jJCtCFcQ4bSQI27qA1Z6osPeU41EHMens262b/8ERdDJTSTJQ5s7MtjnY9LRLgcyf4Y7pVr2rAoW
jqxW4WxDE1ZSE/49sziuaxmEpo+kBLfmRDzINdnIm3844N2pywp6O/iDlu7A7+OYLdn/f5jiy/TP
Guwc3vbOqDfOL3pnsqkIJqOFki79kbhGm+Zfr6fPdE+qBz9tjavqWUKi0Cr9UvFEedY7J5/oVIJC
r/pJTjkzx77jGY/IV2/LFU4gHAOi9HXJQNLj9ucdANkIQhxyEWCAKbwpcOWJi9lm67abpGrRCohO
juwye0u9Y1WeRASiqzeKjo9g3DcxNDVZ0o1XUGOQJ0uNxV5YHv47eQvjVclW/NJbVS3fbEBhnqP8
SJW2r69IGn1YkEhnumM6Un/CHuVsBcPkY78WmiWGjeoGNkejHuHd8QBzsXCXhIcytK+3+fRWJxE0
P6IQt6b9XfGCgG2XGmrERBOdhVceIGw7/uFqi3nUBhA4ZpwNetrwczuvPcvabEFNtb3RljcUKWXx
JVvfa1ON2oUNn5vwsE0RsEHjjmAMTKcreUNBNxnfV2LKFQFwUnVQAMJaiX9P8V80pmgn26H6EIfi
os7onzam5PPtoQmofbIFgTEz9uf/uE0WqYGyt6VrhkR+tg6jYHiq8b14JJ6yaB1an02t402Qu9yH
J+KywNzKUj1RhVDbJThSAzfveSOCKrUn0CrUKFUXDjpeLkHvSBJVBu/Urt8ora2zDAIwOAfN44LA
5rKvlIyZgdVzo0EP0xleBGV9OxOysWMW2ATdb7hairnc70YpdPmD6wpCvg0JALK4XHSDi+KuGpIt
zU4gOZjAhaIzNHQejlvRRC0jkAZT/+tJHi8Fu2TjResgkg0+DaP9RaFGsb89p7uZf+FC2r9fEA6b
tXNv/BJ3wS7mu9Y4JIc48/48zQHrgQJu8HqJG7xgpfLeBQUQnZ0z1qVEcNo8Xq7SQRJHthxp5DEL
9bagDqDVEPH7WGpx6VOGCv8JHoGlY5gep6YdugPxNkO+vHJZCHKPt42y2pKrIGiluhX3SEntnhdG
BHYiTMBehatfr+SELRIWdStIH+vk/VirN2dx94iIaA0dFeV65ngj6Iup8Yr0ctv82oW5fuP1c5k2
03oWmRA7g1T0zFpyBK51Uj/kqqCgfpwrBWpf0TLo0bXVmmfc32zvkg1QxaXSmJvU066kgt3CiQrL
QbInIQq3wfT0ll36BRh097kEqkJY/+Q5C6KYVuhyBNoj3+FgtrVQKycZeMTR8FCoadZ+lwpfMxn6
Xd5lsdtCuKI+tS2+NNje/CzItu0E7RhRSSEWIUKzJVW272hDRbhxcrD3geG5GsK7Zf5i4h+2PUOv
vczeoH2D1JXoWJqUh1zr6GHliCqwAXmW8j06787kKaazg10eAL2rfe0+GTwmobDkpE7/CoxHCBFU
eS1CXNXwSYFjp0tLVzeUowKlEa0NXmfWgoiYiMhDbmGiqKMCpEOW9uXbNjJ0QSeZx5s3SvoE2UUj
MoRgZTs7g4JDT3lw6vc332xfT0k+MReiefHQxI7d3c/9tbniKsC/AtKy9h096zID5o3XO8Tyv1/7
z0TdONJC1C2RTt6liKbTI8LboFMhhx7ebVlyzUOKVw70bjwtdu/6SCl/cNF7LjRP9a3lg57k6Oqh
hJwCgd8sqzORYNjpZZv09wRQ7lz3BxOwPqwVCBMqwtaMA+NIe87NBFNbqFeRDtWes3eyxS5ybI9F
Vw4eq11iwLHeU91T1H0tv4IZZEAEmetiyMtixby5ZeHvHLhymfsHLwilVnWy0pvMI5f7VDftxHFS
UhWYJ+5a195LJV1GEK5r/Wr2uHqfTVV0zhKR4Z/ii4z2PAZDOqZEGH5ImQ2vwRIVNwFUtIAv6Sn3
BNKGw79TR/GfHglJqJMWxsvDCZNGhHvAxPu4dfWnFjuFbu0WOUCMXMf+Ps85Ep8UmJX0Y40kzhMF
aKWNbpGmmkC81jFN0n8WSFMDvdhR+2WTBEs20yxfG7WI3qrJawZV6rOPQx6DP43XXeCONunbvJFK
t7iEHZC++b4giD9ibtJ8ESShCrzVflWIRL+Kj5PBH3batpIHKTlb5zE0h868vMARusFb6kDB0gIc
MdOZ6uctWb10pbyD2z1jQsq1q4RhciSI2ePf8wsnRh4tPwsCv0D9K1MxVj2HyKbfVClklm62G33T
siD0z+fMWGzufPsinQ+Qu9pwqhxOnDpqteR2vx9uoAgnUC9S4DUha/aXUf33kUwq30kqTpMQvRVD
sXTxW/DQWQqNnX03FGoEkfN+UEHlCpIrOMvZEjtzUQ18MYUYba5qGdRNeiFc1RD30BOobm3ZdQzW
JCMzoYJzAXfElo4Xv/9TrCnjI/mFadDoLUKgJukG2RxudiwQq2IQzmNVZL/KB68qtqsFlBrN5vUn
rm/1VU+LXLBrU8+rS+G1l9pGUABgPHxvf44X0JOf6EQo1/GnlCwXJQCr3lUB265Nhe9SCRHhO7k5
J+eclgzK5bpHEK4ZBQs/2ktC99C/oXQ5/65i7ipRxeOTtF15Ep9e2JBTgZftUXuoW8vU5mGNZrLJ
2e+QPWpcvWNB9WRmTaZV4Y5ls3UoWNvEM0J0+oRu2BUu4REa6InnwrdOKfRrCHMYu3mNqa6Nzbjt
XYp4ccfW0Gis6RPfznh6UtFsOZrPPV0mv6WVm4RRJx9BjzECscXi/ZmzLx8kj311p4Zwth32Yzfg
QaylwKS2/T2/TwnNSmTUdFSUM59RzzoQ3+/L026r/dZGIpG4Uhe22s2M2UxyHz44qPgfGqLU5KcC
RzxRLLSrrLjwRKoK51h1YJdOYgantoZLh8noFob0VdYFRE2Pxxmq85lCDTzUqmxhRkoC7ubNbNrx
yB0B+I1G8DTnr3mzPEhCXXyR5AYNuf1cXl/e/GvtUc4fImypkBr9Do2bLPH3ICCUMOnZMyGY+haN
SWQ3QrH3LcZgWqPbwT6HrvsxmDjqVqBOlq0stTO2BznRsVQ9PgMsjegFML3VIuT9lLU03SnjYvU1
zSeFjExwNvIyuc0Uv0IxvOob4FjJZ0eOFg/mPtMSM9VIgIkhVCTatKWYVybe35969Q85J0jJecoH
aKKU9NdNsnaAY2ERrY2sQuyfgwQJwFn6os8OlBszM2mbqNUB4RmXTfHSnL9WhGxLz6yv+a1dQ8dK
ek9YSJIuTKXnPFOI0ZHldrgsBjVsC5WUVbcdWRw2qQ19M8vE9tLwTeLzp/gXhUhAd/HVAiATrDbr
ieWeVzESvmnACozjNqkY+YWBuE2zsUicQaF6n72dSetlmOlB1ir3kP53yEwLxoEAvFm7RLX9Mw6D
kmCapFtU2JJuuJy5Kdw1Of2cOiUAT36tV4yt/yXAEobFncb35DxZTZCGdfvRrcMA1KE0Ag2/46eW
BRbUWA9/OybB/XMW5R0/udzQoS/Bhk0BrfBrOjrE2bhLM6r1xcaXbf27DQBSHbDhYF/o3QF9Tkz2
10M5ZHd1Wa8N0AZm3CnapyzR8DNGiM34s3yhKdz/vqdLpyBPvSLwrIGpUQmWQpceAw94IFcB0jpt
nzL2F8Oo42nZs6hJuGAlXb1ON9sjRB9ZNgDU2RUnmPZ8SkzhVCcb1jXR84z7EOiSw+IGy+DgaLl1
72UQvnQ0gH6+0gN0Po0MG+nPma+7ozcIyMOpIN4fsbcmC+urnukTNjrr9S4iXx0B1pcgKAURdnul
1Yq9aH0JcBCAlGoWGAjCg6uvuSCjLmsz2s9Bw7eyrfjQ9lGYd8wTdK6uBfMVRrWV0qc7JwK56GDQ
8h49Ptmiv9Ja5vvCx1MrxCjqlw40nOVvdIym9uaKVp0b/eJJrkr98qBVjP3uUKwDB4npjuJ0FHq2
X8s8w2LpgbIAENDP6GUFXWMgbLeASM1ZSbbcyGWsNk3tIIDwSd75sR8khhYNE0QZs8cFo474TgVp
3Qjz8OIkmbeXa3BGsPKw9Kmt33xRbvOaOvf+stXCsxnCQQjG0pAR2PPk8q1mulDZbHWSbOfFw9+s
6Aalt6hLBXDetdjBlv43bwJFIREgoDeNvU14GAMwzhs4D1eMonmfRntMk7RANBiXBZfREJ+TFYAO
PhQQBcv4Dhyoq4h5eCSgWlZTxkYpeeO4GGXEyZqrrg3UtkFKhkueC22xyClUPwlk+MeO9GbJlwHV
7wapZLR7OuNze1qQQJJz6JJIBRB9R9SQvja2azTeeC2JfkNgmMkdDNA8UA0omiBieQILJGsGT2VM
8mXATZ30IG8BR57m7R2tO+llS9fsvPxOPQeuNKwG3emB+qqy347b9NnDDEcAQYKduqtoQAgr8kQj
uzYPDOrMJOwN/5w1kRBAHVJVBgIWWkznwELQZA8R7DObtKSnfkmL+k1idvXhFZJNwx/lSJoToVdw
Fz7KeZYzvamhnv73kNpL0a6hZvmaBEfzlEp6bFFn5c661pj4cffX0R3aUt4S9x0FMn4t07/xmQUC
uMdYpwqE3NNmzwyHfA3lEmemPfRiOzVwntJYBIZOKrQPZDSONoY5MX4o4ayFNBVNk4hBEH70V+5t
Zd4CNMKE1VpZzMH87W+B7Q59Ns1UPepCMqSUGezSGIP9/4TdnheIrGXa4TGR7zxozvMLJ46F2W0A
dt9w8G/hp+/DJjH4jNUrt5Fx6APJ4V+szA6GEnpOVd77AyBSOBsPa8y2Faee6dmS0/lZTWobFHLl
ueYdwRWxK3EVwLbMPqPFoNEMMjMfItR7ufyzsEdKRgXHzdqDn8zbJUzkcNybjzFxhceLTKUnuXeh
VVLM/KUoRv61dgHMbI87JEP0qozywujd3SbIgviZBmPCRjwKIwoI90YPUiH3S3ALV5gMw+szIEBM
ygKvGIM0hPlDA445EWB+ugMaxExpZEUJXF8Y2XRfe6FfZIlREULzPQoh+IkRy0JF4e8Q6bNdUjD3
pb9S9acL505NXVLs52KJduIZxumb+xcPeTwtNwaoj14MtHmccw/5rck2ILNdM2qysYKrKcfKiIOy
336BD1r+TmIWh67y/GQyBkFkFvKEgOy0PhrY+YTBbo4zGpaWLo5weYdd6Tbsw9t3Stpfzja6jGfS
yCK2Qz9f1nI4sw37twX3Tg5UV9aOSmZCc4kBgbFl+BlEhHISkUdUzqwGp6o4EoEWo4MYyewphHfX
7dNY+WE+RjBTtqR9fE2Agns/kHBTF+4VEhT22O36fXaRwA4Mt1O6UXJjMKzwQxtG0wotOg/kZp8R
/vJUFTEZbZQK2MAm0MI+Ga2FuXUDLi+IXwzciKVMBr0qYkZMAgTo+LHQDPNLR68okjwr3lpFhbM8
vTmff+F+odMAr+E+WCgoDXulE1S0KaXA/v08k7TbF0x5iWClhzBRrxYC1ZTs+mNBl8WY+FuWnZif
+7Lf8vrvxVEZmTLmaoq5o34GsWYa6cVrmQUqOzKSq++f25FZLO81/waofodlR/QDFtkU2H7+qc8I
BBGkpqjL8KzPE9IGm1fL5eFVYMyCgBk5pZgiHZcRne+AhAb91/2h9h90LSYcaWyqXQMKrM3fY6Tt
MiC/WIxC0Hbp1+rwmTmxnJyXlSFt1MJx8jUjse4AtHnTlgvJjquMTzR+eoP37+kBxxzOnsyiOdJb
o55kg2fKSIw5eeZ6DOGbe2Z2DWJFj/Hm/Ae0GGjmZmXJpKQIF55CfttMh8jgSNVTnu4+iBv0MR8t
rndQ+rHQHUxGSj3HSn4LS+zoCLUbscGtRS7+9jNrxgVceYtjMQrzwPc296ySP+EVUzMhhIF/WrXc
lcNx0F/3PLGihW6mxtcIFPKf9lHxrVx9M/JZ9c+LckchAyBEHDToU8VhUSW99gIZXtb11mrBgfQB
Nl/Y+XzXQhsiQ5u2rqITljUNW9hWxtlv0uxhcAD2asqdcKu582W4nTOGuv5wbsM8bMzkr5C5i9GN
ytqoBMrb9z01t2CwVCJoTnGf6Vt+vTcMdSZ6fkmDOSMe8spLh7i4QCBhXvkcU9BSx2Du2ddKB601
F1R7DJ93DQK+nNJhkJ+TRTpp+QlTZBywcr27VuIyGtkJozrokCELMveBwCelzfFL4TSMWkslhDhk
8HPyqRgbEc91XECCPA8zYGkiHyvnaUp1MTFUyBaG1DL53sSFRym6/7zoSPr+x/l0A4/7LTvvnifp
REHSAcs6ZVsjPZjoQGgR8pjfFQHasWUgJ2rB1cQqz/SYtyrJqypDikwh12xTpieq/2pLGIpKmgXC
iQBTdqoOWer1DEdyzy22dAMdvCaYSA/becIgOfCq4cY6p6ipZgyopRq6zKbQ0iXfdL6GxXqGLGaQ
DwckZ9w3UbS5ZsIek7AEU7+N8lk5RDiBrGcr5zrONoFmx7kx19VjmFKXzMtwugsM5q2e+sZ4n/1B
p5xte1a6ikg816hGHAOOP+WoKLenmb0e5kCo0XIPqTXm9Jrn+2BnoamsG+2MksnvK/CJOoKDUv1E
gEXj4zh5JlhV3tgR5VY41LW2VJWXWmG5b9xdN9X95OSa57jDr0SutbA/rQpZIgIw3EMBGIrytSR1
KHxkMlmDEcCblT520pkWsiskwivscAVOMLepCTJe8O3QlnGQgTcqgofSPEhZeVEk2RCDLPeHO682
knlE+T8ZIfCbMFQNaNYXbGT6dMzweJwApmNjHUaXn27ggaMbW6FmAqgzCJH2EJge3NIVsZRRSfKD
Bfqheh2++hfuEQG6dCJrBhNG4L6/zMOIGRviUvkEjS0TimOgg6r6tXa/emRHWFmPnvwyCdOZEQFV
Wcjp9PGtge2pgn5rn0R6ksQrCtw9t7z/gFJT5nvgN18G3mGEUGR/DGlSiDqLQKDCgIF6JcSssAKB
Zm3+CsTKueqlyzUU5tRdqApy67aptTBRoiW3Lp2X/fvTKkP8cvjnRU3ZQfBlcqCls81Y5kub9Zul
ymzADocaEMGFwTppXwtUsflbWVbQVf64X8KtjlVAYeeZiqyk8WcU605YH3JHb7eOcFBHnGrxPOtn
LVTIAUx4mQH8jVdpuKXrlru1XuyPMDxunuxlRRBimc71nUES1tLjmurCW4v1J9/p01n/Cv1LWE3B
3RQ/9JS7noxu+FNMbK20yg2FyONMN82Bn7mt/I/Z+tJE+egsRMWlhMBh9RKsAFCLi7xkwHfbx5YE
/Jj8IsMiHdJdothiFdQwGyEuodkMXrquOowEbxdOwNmdZi8lpJWj0tkI+r7+3FcM/pnoG65CfIwr
+conhmB835Cgssuv4U/En5IUbFCrH6xPD1kpFIkXM/rpi+XrMaQWk54BfMXEDTA29csV+rO+qU6o
HQNztPmEWb4SjmDDzDWQskniZASnxcbYV57d0UNYAnvoNWMyUTC7RQnYcrafscsvqqPpVwy72bZF
CwBgP94auEMvWaZGahGjSoNnj989FNpjUgYESmr2WpGmNmk1NCFpiowt2R/toBfoaqnzzwgY2Stw
d3UxzRxpUrqWjBFJomIIg/XsRVb0aNf+I+uNWKPIK0Hu+2cTkRrMCw7EzRvggaWsWQGMiCh+Lvb8
kj2+Sazkdr491tBTwCinXBuR3EPzUGGUKqfj67PT3+a09SBy8OQ9kSO3Ux6xpdk1jS9YDTvuE5nC
NF12GlQeVmqlG4yf2f1OshFtFO9dpbCLI+Dd05MuLlzaBUekh60XZBm3cFyJXU75VsUxJHlEkxDM
brbLhDpXyG3BFWCj6eAgDglxyZhGKzaG/PiZos2BkYG8u7op5XO3FmSl+s7CiejR2NDpQV2buFZW
oHTunaZZjpIbKEKYNzSmZF0Zp/XJ3UnhNplDGcDYso7lb2afPXglb+jcK0LKx6HaR1VLhqR8CewH
Iim2bZwa22gngz9RwjRvoLBJ8dc8MBlMKAYuZGQu80ika58zEX2laDgf5Cj3bEUwk8iH4w/GxYKg
ejGaOL/Ewkk+fEwbII+KmIK7pKmEgIW1xoyE+AOgj6DVLCxsS5kUTGVaeNdo4FIhFzyHyKn6KOMa
aPFKvccQ+qcrjhUDQax4Ga48O4OMxOX88Ks5rf+hhf5c8/IEDpZidjAge6uNmDRBnFm53V8+WAGd
IXlhCrfOUCnThwbcKYhj0FnklD50cLozTH/l/v8oYJN2QAYDGedCIVDqYeulsGwCKCns140jEoIq
qySTJFxhjYF1aJYoYVBUgWRV4hOFEM/ajU2IbrhMskBZLoL6UmUP6sW09V7PPEc5x3gZD5snm/tg
z5RxVRECo+dSB3xmN24J4ayW/SrZPDhhkhe3223G0zHt3gzx4kg0D3aWvIgeVrkuohP/jntAVxI0
8xj7E9/qQjMws6p/X9X+O1szxRhB2SJM+9qb96lIBFGsvv98CQ0rdacnVg/WFApxBQ58gynNidY3
u6GClJ+g27I6jsIPeIeo2SVcfPCSFxPc+eHvtY2zIMBQYjv/nLAiFb0vH1BYBEED2wSPidY/ExhU
Wg5+SH0/uDsnqVmVFhL6sg/Zujuuyq8VZdAWlIHjNAdXAQzsUpFQFCh9omGkshKOATKZa10ZlcdA
5oo6qoWtMWAYr37gpHfR010nR2xHUq2QFN5FAXmNIHxLyOlcFL3RlKn/YYXHIWgukRC54z2Fpxry
xCOE92wyKoUxtkPKQuFZbBEorEXEdHkQBY/VwCEGUH0QpIIm4995X5s+ERuPGOHbTx2Xq1T59Ydx
WNP+XLNn/5WiwHC0OQfa2/9WSOOzjK3COEeX0cCyGc3exuHnyY2unM+2Z6tucaF5Y+aTe+g0nZq3
HxxWSSAEEf8kaN1pREQ3m+gcYU91/gyTliDqtJYTSN91P9HX5r9sUFj1aOTJGGpxHgboiQrks/xT
WagA4e87R6fHRK1EIuR53kUWoKB+IApUEr00PRztpLES/oLyk2taVY9eqC5mVKyFKp8ztQLDi5XO
TvSj0tsmaraAu5QDbM3iPFJAC0puwGA0HLc9b/TAq1MtzGtFyx9Xo/DMUy8NiRgeQ62irgmUWUMX
3MWdtptpPhD3l1aEYAykxJ8xftZbYKzNVlp8wYbpFnNeyYpzPYFk+B+0sVpVVEcEaBjM/x4ei7Cl
uhUyqOq/ajMWKZwbQivycMOyvx6UsRLnaCBT49gEwnzstR1c7Sh/JgqffFw3NJV34UEHkbxYPwP2
Q0/QuJrZQC3psQnLHxzJK24Aq2vBbd+F2ru6JxzVQu6nfd2lddCon1KGxSTDWC0nz6LQd2cixVMg
slFlElP9CZxxH+mRAE9XLPt1cf4YpuNbaE2tFlme6PkMxfJa7YkmWht52OWh1dUfs2F0IbaAsGwP
5uw27MW8+j8WbQTEfzjTG3IXMDesA6xT9ymZIaVC3ylDuk0PpnWJbR5RjQoRHwQorBCBMHd+cn46
Hs94KU+wayH06QL/NmpLcAk9XvQFZFL0jRBDkBnENR98V2Bv2dM9yDJnakKTL7Bg/Gj2nI2sdUtb
qxdx6q0J+510g5+Zz56LBQxEA2kviTr+6fnogWAa5GfSyzVsBtLWOOPGt1gzPyhb8sSqFoMVNVFl
FObuZlb+lAzTfrFUB7TAAgoS59QmH2uWKM8+L1ueee95jysWF1Yv6EeAWduFfpOVmoBj0n7CbXqm
kF9DKB7L9xJwourOq+xJb9hz9YcwYwtDt9XSVGrHJAJGncQxxKjEqWsXytsdNwQ+WhTAiHT4HUNz
jmVWtQrccEMa3L4al6N9/oKyMANG4mJRaZ1p7W3LKUY1RT6lpOfRPDU/Nko0uUzVV84OXPo+a1tv
ovnZJ0aynhnq4mhVinkTMy+0KMl58kCOweXrLZgJVcqNMwczegf1oBH3eYOGnvj00CXKzI1/lq46
A5M/81pH7TIsG8eXvMQVEQwmvqA6J5Y9ovqLCZEaHx4nuINXLfztss11EABxYa2Qq6yJ4T23cl8M
elLPZOPigZnQDdsKSvr5qWuajUJm/BNa2cpwUC64cHwDASRiM6/PLd23jFXT3M+BGHgSUByKUjUG
jvYT6RdrlYvxaKVlCSYrHUpgCGwR7Y2utvvDM4uKnVQBtJBvKLovXKqYKiqGxtYr/MApFvmZeXqg
QyUAnOA3MokxHzz0WYSES0SXptFmHNmKRheRwbIPJlNdXD0DqqTaZEZ4VHSf0d+08eKBAkAKUkE8
flD11oPL5ayhQdiw4JSpbOq5yK7XgBtkXpjlKAYp1aEzzCYZS/vF39oSimLxYG26BCKp+C7FJzd/
TSOn2ISo4Zh/nQFRzalbAfnsUBBZqSrM+VCEQa/fnfyfFsvWsQc4ynRm9ogP2eNejsErGLNw7orM
MO4yGxS1yrzf+WUTDAX34gKIdlL96WCHhOBnfi1fpw/8TtuHCagdWpyI5gQdc+IWHsGiMRC1DT6U
xwZ4TEPiyeMMpVcCflW9z8LsU4xbXi/jIOcaFNbEsw5hJm7kPSQhGCzy7sTh/Isyh2qBhjH+JRLG
hKqGGFo18otZ3OJivw225oOfbWcqaeoUTN2yt0pQB+lCn6ZGfGBFzWeDVb+KhMbDS6QK3/4d3FBf
DN2ZEbhP6co+SJ4O/c9ijB4yXxjvSEH2fmVg1AR7PT6K7EGWrD1X0Dm2EUlsHjebookLloejuump
yhis1OTnDwgJ/db4IV3zeBhCOtev7DDDLj4XaHq44XLzKF7FaDOQdQeCD2yfbSXCdTVB+8/n4NWv
pd8rKvjsd833ZU2eU39VY5zTRVgX+K6075xh3VVxE+8AlhI79ST+dYF1jHgvIqfHSvkeZHFDGICx
cEnoXKf04Xmyzi+aDhv1Nn8+ShlHCIRfGfNw9KfbFYSUQiuhf2IDIWTF/9PtFM0uIfgSEzAscoky
VHJwYUEzCx8Bc5u+8yDOIBmHAdT1UgZs6zLlIti/bMSMzZOa0HfZCKzAuZw+MP2IeVPGZBJksHd0
+Hi+LlWRmBWs2y3zlPMQbQskJTzuRsyxE/Q/P1XESrz4Itt0pmHz2W2Vo+fRBlkr7FP535e6KfXG
zuaylwxV1zYF+BwxjKHHjfp2ZAG/ZV1bFWF4MxULH9w1eKzfgz4AQHMkXrNWJh2VFGcdHqr9VQDO
iJy4tGAtGWXbwOD619bnLLQBnJdWrVIJB6rh4Gk2wDiLQZzMA1t7DcUid6j5WGN4XsSLJlV2Mp4C
YjhqGVZMHn7UdhLkz1kkzitOFnUaVZPFryyGLRR3O+A5wJgHNFLvz1sk/EmAHR045zmMk3/R18lE
/vKSVglSbgWc6I8Sf0E3F375Y8GY+hNiKhQyMpGCAO4AT0C4esvBsXVKZ6SjUa11gr+3q2UnQQ1m
5zBEnOp8R4IDolRUB1LbX0mBhfHts7bmZECqJixTdIpCrqFSvn6wnbwpFpBgopqLAyGUm9yb9XWW
iu6EBHQcBB//GaAFq8H1rTBopgQOMQmDWOFt/7O70cfLB4eZwZAVyOPqWSepucsYA7o/JqY+UyUT
cgCY05/MnTqCipVwKyAOjdAmpOhByISnHsOvdeYysQHYV0CjLJyC9WPh1GiDoW1kIyEfN/qtInJa
esJ8fRRZ10qqRu8Kfrk9DhaWGBhfQexGOjr7rgGC65TfnAIpwoxZcRNIL9X3jghn7jFQVTR+8AXv
Rin6FxVTbVSFiSQUDuUVHoA17FC//0Pyxtcx3B4xgasiLavQVTnEaUMEEFXTU89XUY6OB4/H11/f
XrmuTaC8S3ISHUK3JMfg2Kq+xctQeP8vnkvxmmG4Lu8oTyhey+Xe79JtJN8icxpu7OHpL/uFIFv9
kloyMvVumgc02hvprOnee1y8MrkvtmVWU/R3OI4o0GlrRdZbu+fsAtknIF64VtFVGgnSHqRisJba
Z+haUQLPYP+re8HcHI+Hsz3mkgUiZsUfM/nkjTq0jkMZybTd9+4On45EI52aVdmyUdUKySiikNNc
WG5KexLZ6OBX+nFnff+ooJu6y64RBkQoPz9Pp4QwL7tTG4T7O5Ma37+YAsHXYsJzIT/N6NscGh6u
+TRQO60NBZ1q+wX8LyCZNVK3OT5vG3mHbQBwvy/DRzsoM/o8my7UjN07B8DmESk2/K7X1kAa+20Y
YiqI9FRNHYjjr432KN29JvB516ff6ojklh5X5oNjVRKuX5HPQyLygk4qyLxmURZShloZK9xzFPW3
AqCUNk2NUDAXH8RFPjmRhRyckx0nDDgPksdPYk2Yfj5UzK1Rc2jYpAv6l/V1YlmydI9T7Hq0nnwn
khhNNGU29oOK+e0kFS8v67+DsHwe5hzBFNsUMO+KB6xgtWK3Gh09ymCoePdL3d58yRv1SqJBwgYu
2tvdZmvGQTHzg5P7CJ5XfcwT7IwR03Lra6YUxm8hkxBjICla2rqd0wodl7GerCpKnMr/2n2tZAQP
Pkx0BSyE8j/UeJxvnCXL0wpkw3aRTUKMYqpTaC4BFid/5y2eeFrNjD0zKV/xAW+b+qDYOfRvrHQA
Nu/hI2p6hum5jT9tHnY82ZQAQtdEBrfV4GIDSwaC4vyWer9WYiBl5c46au+32/XfZ/pHXAQMsY4A
ws24E1NwieW9Me7Ps2mxXTn4iFpHbcWmdmuI2SGKigrZT65r7Z6Rajvaap9XR9LPgKTEjVhlU6uf
D5R9q9ug0N9RhV5a+BDng2Q04Wxa4lqAki2EmbeL0FzUVWXhPmicppFNw0IAy1F7dfSfMqXEEXNo
QEUOf8uN/Cub2D/VZ+ZCmY+YzipoP0nFqCIG4flnn4N1BbReY/H6JoMJ0Q8Xf/N+kqzqvpa9B7AM
2kyJAHb+chbioLzbr7B+JBAT6B5SoGVqrs6RxWRISfVeGf1rIKrc3VT45/bnd5S0qikA8IJuvW1C
PMPs1P4k0Bda6uifT1ROOU42uJP/9qjIuuPw4hP/74E64jna6K6nXvKAafTjmJxORp+8pyD18oAn
cYI3ThLvdX14K31E/9el2l5zIfGIl53446BuUTPEUWw9elvxbIDp7rVe10txnhUDzRRc+TshT+l8
HzGwsjq0RZTBhq5HN/BcIJgnXJKsV9ztgUocWLzeoqQl66Z4t/yRw0yp6mLyY3UZbAR8L7cjCfgX
ZQAIMrd+e0GzEqlvX1fZMm24B7fKqbJKxKKsZUyF53LMCQ/zXPNY5d8NvzlSOfSpUBzYz3sctCJx
JyPAggK6Ga2H1Toa6aK7OzFq0nB2NE8lOEOaTSDsV88LVlBqnL1bGZ5XrrqhuYLcIEH7x5GGtQgO
IYKdRPbiTe/MT2+dE2S2gWzFZH62KW/erJ4EXEMmydHkfGQyxs5RIuWCVKjFr0+mVhM0iPMWKMNS
5G6r/GVebI/qdjJNCzXVi3Ny0tVNuSXHDUEQP8pzlwMbgQFeaRfDX0zyo4o2KwBE1rGybUgf1uFH
9XJDwNAOe18QdVZZr6QtF7H7bBUfctsakGd9xllNpUow5JE1B8lpTl/SQ94N4ZwpcatEdaa+Qwi1
LHkFfKTcBbvPFJY4Tvxe4SvI6ksP1qdBqG3jNsC/BrU9HeMDbACHXVfsBIsXOuTkFH11d0BPzQU3
rPe3YkqeYTh8qwK8AzqJm09SwTjIvT3SC4pe4ESwUQ9tZBUYhKVgH89wN6Isr1eh7fGD2ouMMVXU
mMS8Ak2C2yK3J6Pzx0GZZOX6D4pLmALVFHvf/3jNUQVO8kZwEOXHWG0piloF/AjjVtVvrtD6UKVE
H+81XgEgS2Pym3S1BuF1MLvz0d+JsK6m0rpRvWWbTSNo824dt1hIzG0YfWjWRufkdk4GxnLtTTiJ
pLt8wjWOv8wGRx7Qy544n8yLV55XokW47Jwq/H6GG3n4eFxqsjKBIPV/W/EHvkSFf1vcAdiP3D/i
4ejDjiS+K1zwhpL4ESTcI7CS7ntjF1qF31AFvyk8LDM8o6abPjOWY7Tr876e38X6Z2tZg7hj8lvm
wzBf+wwmYhSGaaImj+i0TrstwWrVE+aXL1jZMxEksn2CiJ4VRNZhKSiRRvIY2AO9z1J78aJ1H+6V
8PfGZROZusyfXLlel1yRbqlwZub8XCOK7pwtIMNVCwqQFXF9Vmzb/+kWXeiIjgq+iqQv+CYKNaYm
sFpTdhU7kxrD8RSNoeBtulo4tn37S4JNu6JNo73KR6uuT/vTiYunVW88M9fwcq9nSim8fQEhVmqA
gMA4F4efpsOQa7C+VzZPNRikUvrPx+wPKSVX6+g8Qwf8KTYVlU18ImUUVlSjJtKG/75ZBHG1MxiT
TVp+ceJ7NYLyQHj0NRimTNCMWtIcly8FdIq8HHqG+OWOO9d7tthRXbjblio62x56n86Ruiwfk0rb
/XoxDc3wmE2X3HDfwkPgnQcOk8Fjh/Jr99M3hZb3dujHofr7rBAkKP70Z51yju+FZqnQtYna+BVh
1bMXVacNP7ZuKRfB6ZVwLHZW83GyVLuzn5VShtroPIIpWsOi/os1VHltd7b7bHiTJ6heDFrOumVP
8jp8ygET8rhZl9WxMjTMDN32g1tiCE5XZBo6E51UQ9NreGTrdYao67o9ETbwM2jeY02mA2nzmm2A
Qu+3m06j0kNemRa54WI5uht4KWjXC4jw6c+jlmdJb39uFLuNuz85fjTVmwYTBNkMcFoDxqecKMwW
NRoIZBmHGgSfBdW++QW+pqs6eDLTzan8EbAFlLLNefYN+l+zkBHwJM5Pi6ULlfYiHwq3HfzZSZTr
rKSAN3X6Dxz8QsYGG6DQE2yGx9NBSu6gJnbrncBWUxVblMLwYSWDeAK3RXuK8hObE2sD9xJ3vT6j
wNLTp8fehY9m63QgRT2OFznTaocWPe6HUorlWsVHPm8jLfObXHsf7qKo2DJTVoo/VOpnt5y3bBog
dicus/AE7oSp4zdFRZeRGoCeCZ94W6y1wZuZc75gwzT09iUxrxMrZeMYBW3ch6QorUiJDZWzBneb
ommv3nq3Vx/O18fYQijuWeUOw1LlfVcSBH9y1ngPL9Pp1/aPWUw4oT+BPkt+0usUuAQiG3FwEhUc
tGzW8ddFn+3aJ0HbzK0/CxbY6YgvDXdMaeg/vm/a2BNuCYMKpUHU2J7whj7n0RXSzAXKIPqOo+q4
oYDLuSnzqFRXZMtqdL6/a3LSpDdOoPohO69Z5fIj+DekX5JGb9viKKxbR/DDNm1yWfKrAmI6NFTj
xU1C9H35VQO7MLgUH6YF7Er+xDxkz9HrvIXEmSjtIzlR0wDFh1R5HgBSzP6IU0FtmKEFm0bkZEBO
s1JsDw/al3dVaA7f98JhSZuNamN5HFsMbxrSfY59aayzGqEkNlxziLUQeL+1o98NlZJTovx+cs2M
3iJt/0KR54qswyEVmq2svXdUHcWkGUtRzjpV/ETKNMc0UGJ/SwmO/BXn70flHr5TTejyHxl+yByh
oC+BmfJLJ1u6hJ5XlprcPptFMIQry8FFT8LWMRqG/FqN4CDgE6VFTY0xf/45/x+PK0Vo1COvgFg0
QP6payBdzy/KYWLnDoqLtegNbiZfmj2GyFXrP6ELqt2+mnLZEZm30HWZDzXaD5qgL9ZbHaB3XJEC
QOFrfmpKtPyl1SWYwkTvnVovv/e6Mb3U2JJvjNbZWDXukzfA10gCgykzFQfGd1hNcjFb+u6krxPi
aTbV0e7bxgtYDRtbgR06JT1RK0udoVjEIB8okQZ1t79EpcDYuWHAqY3FI4jzPg+3CpylfADWYFXA
TNtzn+gtFRRvPD6UaRaDCJ+06MdJ114/FuBkqNuN6tPCHpELC/Vzt0Pr+/+fBJeY044Tq9WTh1xI
ygA/RT4EuGSMEV7razxu4Eb3Ic9y1FtXEFkP77DjVAks9ldr/3pQMCABS58t4AsUHghrJ97lNx6O
hPx4zTKASrTMnGTwFIVAp/gtWCxB8Jo0N0ePanWCXsyLtcEubYBQijIorT9zs21xR20VHrXD5t12
vYO90DJtnfzpBSceutUIS+PjHe8c/kPd1KdVY//Lq1GbAwN2EE/efh69pFQdy7mqdJGxKv+MLKYP
czKsPRbMsisakA1DnjPYg+XJzBGBZjPgo9pvkF7vqYk1Bjw8GDXHcsFizsRcGjc1iVv7xryxZ5j9
c2bEmzeni/gtJ9uWItf74WsQFlWnTkak37y0zRxR/gB6gAXzNwuhhtwsZNQU7ZdAZjwB/DS4US4a
Yqse1DQLtRHrcTQ0sSyjmWmRZQ26yyuU4NeaEEIxxN4BV8azVtTaJ2MbZk6sNDYjfiq3Yak2L08m
iuH3acjcZguDhSzl5OvcDNsg/HIt4toZ7SoP7GXLgUAfIsDko3eGZ/fmRqfG/dCb15POSKP/+gJe
1pHRZumT3QDJtL3DCdFgise+BlXekBLstxlboSF5m65Y4Nnh8mIaGSit2ExyFrHgYun/FldD8lia
AJLSjcDqJ0FtmnDCrtDgz22ixb1lEjbjqVAWugWE0MSQk6YiqM+duHyAagyglWnclCDDIJJ3xYC/
qTaS99zIFbG7/XUpxDUw201dy79YcbwkHSeHvUXfekQuz5kHQy37az7kIzDUFTsw57uJAeCodq42
wJt1Boz3D41pLgabulqkXLfdd0ZBbemVR84SUOoiEJ+K8ONtQPNQq0wcthv2QUQ4wSPqLdTB+lUu
LvM5sabg18gtY0erjcKoqdIdtJVUbqyUV9tXp4p9bJGUdJ/fGUBHVDKKr7/G/3QJiEWTCkEuHNxx
U9vHO0kOHUsddj2UsP3OHCtVb3vtk869iC+MKpHrzyqOySLyvAEWF5ebvf2BSyoeH1Ig7YCiri9S
hEXUsNcZrG5UaruEBLXQh/Ia3dBxL/OnITagIQdYTWzovBMOJ5uW3/mfBIS7Kn0+LCBqCL/uMWK9
DZ6dyXxsSLEgw1RxGDFuZuLlmw1EbjnYt/jYKFMCdf5rwHZzxQucu3oG/feEJwPlLKLMXWydB+r9
nGOHMiEpp7/Pp/MgDoU22varIfVvq3iEKEi41tJmBW6qnHUSxuurLQD4tBnPNWMzHMrMb8lAKfx7
DWrH/dY9NO1nrNmi7TEJqWMqSv4uqoCmzpcuhxoa7EvqmZX9edmCM1HVHXfdLV9H4qY5bWZ0AdzX
suIdSRiRjfm9jtWMu5tfrdIrSKDIjuB0t3Ukc/kR+G91Mw6ikz+i7cOTJU3myTsSoyW0kI4WMbGr
qHx0pXqUW9jl2pubOaQAqGywUgcNhOYuQsOgMWmoZcRcLfr16R3rA7nQ27se8BP8qsKt5ltV2mpJ
Uj6xYaQk7CH/ug8vMqwZ/f78l7qwbhoVY4sT4Qnv8SmXJK0Gm6714OAsK5V7uELeK0cAb4CZKDJ/
9hIQhbjl6C934T1YATpiyl71/WQqBZNFn+DJODHT81ulKSvMks+Wrs3GbPqRrREsOeuxqOsjsYd9
CVT8Z5lVxX3arlLxoVDbP6w49DoBPVtjcikSuz+C7ArzkReIAjpT1s2QYQvt+IyfnntLdkrVwgkE
AyNt5os95fH588xZ1n04eoUk1mRzfKir2GMe6RyIAnR7R5lNJ0DnHzwqZm3C4w46qXyDEPVsWCR0
7xyI0hhJfS7/jx2vnXrX75PV4+iBmeuTj6kfknqxz2coez903oAHeCUpYQ5y02M2eoLEbGs/A2kr
6injPcniriKR1FaAKqbBpKftE2gOYALXBbUdOYY6buFIOYedPXVxVMSPkfyTGn/8FGB3jbvq5r+W
AE+fG3ZbYcP3t5plfDfmVni4YrWdD7A4W2UPh/WDYO1rCrjyg5ATna5I3UHV9tOYp554pZEktC1n
rr6fvMHbgMW/xbKHdM0tq2D7oSq8va+e8qiq1Jcm8RxuXZauowQ/+gMDU6btxIIysnu4QDBowk4D
UhwjVrg+QdtPylmUSqaLk8YhOCpHCZ0LzamtLxl2lsF4iTGVZGy2GXOXfsLe6RTdOop7qXNFnsMo
mS6h+EUcA0wFtzjFdvoRCCF8ZYlX46dzvMLbp94KA3SIHer8SIV9Y9N2lR3J1vectcdjcZ7Pd+C9
c8rAheiylA+wUN/BphRpI6eX/Hf8kTAqFrB5pR8yXr9yx3d5Lub1LEuT9UZi4fgk32+YYpaGAfIK
rtXg3plsuKmJLPQkYNRTWA6/A3znaAbXQzU1LfSzq0DwNMqzH8Qv1CpO/Ib8EDwvMH1OUYb9OJdZ
RskDUNupcZPGqsqHxyx0XFwK7OmDcdGd7E6amW52Rv+qL8QG6duKja0EUZcUVd4G5G8TZn3/f6y/
IIFVYgIj8VNxDHYyOc993h5xEvdb6/Ww5gxqBbLKBZQnf02ZHaT5iHbBtoe6BW+/lnNJ7FHeyjSa
5YB/j2gBSwAEQo4B1/31nOlush8berMwzv0g3k2/ZgqODp4I7IK0+u9Pzlt6iNCwdNFf17iLxLO6
aN2syRqSCR5Tu0fkHotr4RkxhieHz+Gflf45oAkNI2umonafiziPRkLaPx/tiwMOwqlB7PhOzOHV
rWwXCYG1SvMXkbaXNW1ywyNbHEe5j+bGCmBNKZVdCE4t6Q2uxkYRr3HVRD7AC2TZ1uB6BPpHfyet
vkifcgM+1mtHHdhDnsup8GVA83Df2FTBb1GH/WzzhkyqECMxwmz43ThdKIhV5V4cgvFdphbjXHQW
y9LWCpXkX+Jg59HxxfbZVFeorXPUMGU9gyW/ljQDugvKmI3u8r9CBB5aS5QKBxtlGhiA/8WaAV+h
2VY2F+PI+4I4twK3O7BAaUbH1TJrlvschVV6n5utVuN9elMmnUiHVlB24/OGqZTFu/nkGqNv4oIG
TLKZPA81BvLinXFRoakW6wyWoRqWt/FHwhX2vjvvniUM8ljaKM8XoZpbY4JYHlez/zn7rgs1GIvN
deDjuG30QiljgklqKyLSr15imHG/fEufAKXv6JhnCo4d+XE6MPwFyQi3JxSscMKgZxkcdI6hzJOI
B1Wt3qT9GNiFUdCpOX0On5J8A9NarNFlxZex2CXU7Q3se33BdJgyZAdpaf5dk+upis5OKY4USYza
5k09DZdZVI9ZthSEErwj68MEAthe7bxpHZf7Z4aaYd+wEOiIp2yjwzRDj+jccbjkPzsI2zbFKi7X
qb8azGdNVoVJbuczOWGSad8KNFNtfsJZ+1yajQWaDu0EuyUTpUQr1KJsgfXAWp9e/3BfnVx26OW+
CelLyMRmopLgXCw6VfkcfOMIsZbMQwmNa9qfLnybcU4C1iuB3/cToe0SY8EZb2qrkEITPSJtzIO3
dvG5fu92AZ2odBJdj1G/TXHPUWRc44NAWVdBbl5BaoemzYc/KgFH+6U+FSOp+uhtuXw+v+Sd5uZ8
O5w3xSEUToJqKR9L6yLgMmrk4ii6IDvHjEJVM5sbdcZf7ibEerDicF2S+3C87ewpBVCBoGD1EKHj
p7tHLbP2AttoqJs0fnkMK0Kkz4oCInOgdG+x3wv6mxiXoA1VMdDAwVMmAfYKoFxkvVrOhccEbipg
CiPv0+fLqBgJHmLPFQk7lE/pSqxetaaljhYanMGKuyVnFO3ygbJzHI2yZXv1WvU7QLgQ9RFHt2Zn
N3u3EWVZNC1Bu9s/CDW7N4dLBjRsr1xJSb+HL3zDW90jBxJuz3izRxVFOnPTI8nGSJDg7Xv4Pwad
cs6W3Ej79ox91aHMaJlt1A1kVZbrlgbdPM/Ld2pg4eA6ujrOFZmMaBuO5Pdt2AGWTDQI20U0+ArB
pBv48WR/G+8gJiQ00YD6gcd5dq5+Q43TIrLWxgxPn78XWps343eTrK7L2CykwFooEJnT2n2GRhAE
B++E2ly8O3C8uWeJ93tgWZ8G0FRsTSD1cMNWkghsTdqr1YvnxFxr1o9M2PzE4dCSQxr8HuBV6s4d
u45nuS3gZYrmx6EhcZdlGRMoDCFhSt8RcqcoA1yZy4Asdx7XYb0rOX68JoPChTfzeRiIVvPhQuUG
HuX1ero4Z+TvBybeL1ieB2tA7TAlcI1OF4dLPQCVepxjKEwTTxlvJFfyzQCiZEunuA5HSrUsknIX
biKNaKN8utNbOyK1XWhGlZ7TxnYAinlsFTPE0mka3wezP+Ca/hfYFq/AEfFd6qNRbd/kpgjOYoRK
W0FULs27VGtic77V5ty62GjaHC1EZnm53ggaD2WYNJi5dkyjAVF7qwsOJIWONnTuERcG6cr2rcYh
I4Hwv9+cgwvPW82leAPg+puiuvp1U8bu5yOymYa6vFyto4vnQKGETzOGF54db9zmekZYhYk0q7qv
ti1/TZi1zFfzhX6NwT4cLH75/Yox5Vsb/TMMFqz3kfCwH8WVF6Ic9wTInAnWu4qI0B6A7I7WSo4r
9yINuYnr0GQI/i+eLAi5QyJuWjCm4Sl+ZIaZDwtiQwlMKQvtixQ5LcIffwtrwVHqHSMfrRRjk/f4
TIuaWFS//aaKusVSAv+GEGCymTc0gELzQTBdcC2bRY1Q7Noc2gdu1NQoy5CeoDlHfXwblzgtG9AM
2u/uvMiUNxSqnurjnITijepcNXv1FDAzi4WKcMMxheXyU32+x/L2WMPcawcVTCNxnAn+7EKefHrL
jR9rK9aJV+4B0Xu+y6bbjZSOcY05Fzi6MqVz1FEt5Dz9X10oL3iT3iCWhYMKpgv5gxKfW98gd1mO
weqJb+odsU7R4LmWeIpyNjC7nkX807Qe6x53EfqWZeZJoQtW8e9+hCVrzsSVETEg7nTnPICv5JCc
D7EgcdvKTGJajF34bNVpbbZglGP0Nr4Bp/1hiFwsD7UJujf5g8PXFSDL3WvxIJD8/FuSNgQfWZGe
ld3iBVy03yqgGy9hq/6e5d/s75OXiJfQWyqSysxF5X+2QG4MjLea8kSVissy2U1fraYiQDrWbTln
Hf3Ai8pirz7jFqOaVwrQBnD+2TJskJOs6H5dqQ1VQHDNq4vLZblddJoviM/tQTAeuN0HKSrA98rq
9Njf2fw9cECbkC9XifIJwSlkL4HngqMSIM/yTaTFCKfyNO2xcmC7If6H/c3cX3NVfA3TpBATBpi3
SJlPZTY4zw/P49pKqwOZfIUcvN1ipj/V7KTtVfRbVlDHRohShR5zD5DT6vK9yDNYCd7MTi7j6XcG
ODHbLEJCFKz1sMcB4lzdFqw0Mz71yXOzU2yLDpfvLwG91RdQAsVc8l61D5hbdPvT6itfyfXKq/5n
wcUtK8BkKurxuKVNjP1wWXhQNvQqA/IC+/n0RIYmlPy7XsFKuQSL/V7/nEnVoxAqWOAlKuIiL3lK
WPr7NdYltKVf3eXI3LfS94J8cma8qBNvqOZjqajTB+b8uxbc1aX/t8RMMb6COB+/hcEQY/4J4G3/
1b04jHSCOWITvQaoYrAwOITtCoGoWF3S3ET9r0KWiB4+HAl/90e3dreXmdMKcxeqrLICeIw5YoSC
+THVKAopG/MVefWmh+J76idDIo3KddPSwxzW7+PaboR/WeDlxpqFxqkeGl9i4ZV0g0BTWMe2wI9U
gOSVNFXl7aPEkc5V2X0Rz2lV69/IK1NSj8Aha7YdLOyN5PD+nb0CdTISXUDaAHemA6ovfsxdzNCk
1hW1o1rVguFFgCI2X8yKLRcVcf7+Hb4Uifo8XxvC7qD0Vrk1kPMJYWfSlvaa8Oqwf8rRsZCKS2UH
AGRrHDG7Jc8NHudZlkZEmyoJdm1rqvsDxKB4E+Yn7CpWlAlR0vTO2haPnUzwGnsrxM96O6aPKV0p
Rf2RBcF5pptkqN/x9RAR56yK0+8pDaPDvuW7DyCTa6fiq+T2EdlHtFmpIigLMtRUABNaL2X1KEbs
MoxMhdwdL32umarPEFDzhWQS0BGJADqdNpPK+PWpi6cKJTWczRMbtpy2NvluZwArxRyVw6+pEmY7
oHhvtVZrVUDZ8lvASGwfQGrsYChBoi/bgCksFVDAraiD9DMD2D1JONzwK+dZrE5u5O45YA73pRFK
0jXAW8nekZEbNCXpU4cR1oU4GnJBCVnVMol070yeiUIYXXJI67jKI8Uf97oJ4PnIbal8b28/1nV6
2h93xndGpNHkkRQ3ltEoigvkPtbk+OtzW9bD8DzQfgyx9G5eBAhCDy3Sflh6VI0OSXNdUZsR0lLR
ZTDdIaGji6A/hWmPQzFEvUiZcdZvl/RadOT/JPc40AQTfIiHwkG8WI3f8hapKYfyykuzcKHdUopa
2MhJnMpIYqpl7MWeXSOuQ69/SUCzIvq8sHlhCvEiB4cX+OuDLrjsTXTQc6A4wBgWO5GQ4sLAn2Bu
BWhQOVVNKB6wieBuAOXE/0smCe5eL8iSrR00ddYdZJQhvFmLZQpELKFA1rBGEsd9wBOp9tCADysy
ucCklXdYCiP83uRSJ9ZVphdKl8dhNWJsDdNSm3N2O6+y5CiCqP6i2UywxeHH5LXHjMWrf9jtoN15
iiDiPvu5pXXcs6JDwteI35rhpRHk4+9Lkx9bpcZG6Iw8SXYCul6jkfNZgKVgnT1Wv0VoaBw0QNfk
tVXirc3s+SsPWhJNI0OPjn3yMMdwTGe6ZSDB9X9J8ph6iJ/Ocw4aDtGGWYFxVE/lgkTH+RdOk0Un
+8RDOgnh71uYo514UO4NLk/gpMJhDYxFIPnx4TcHOKGr5DU/+cYiJ8zvBjNxNVFjDVnRk+RCwrDq
MQ1ADPTGWdX8Du40BZsSpIzYFU4FqkvKQmsPhi5TYhzqh5cm/I87UMpyqhEzNuc/s6w+DOuMNDBl
hK/FqzBahW9OLfr0z5pVYiXb27vGOsxiT+GLidB/Ip4890WCggjTal+0nJcLiI4/M8hVhJzLmPwD
/KQqbDt/JkvtrRtmKXr6gwu/8NNvXsYgUlCpwTvzYr+iQFsrcCYC7HQ6nkmCuwITsicDMeAtaQVt
joWOrnDwT9ETw2PNH1tsLk3k9Lnhkq7IXmWeY+SkGgpOjXOeI3A8HN6VOPyYTwx1mm9l6Jy0Ou6r
LsNTmrNP++X0yYwlhReWt5NtdLagYwYqbUcQifs2h243b4D3JRYoP9wHInyZyHFKiyBcZgpx9jpj
eaICKWSMX9Vm5OsKfMYrvB37eu/b0rxBdZn/QRekOXAhwUi3dcjvXZn45nqE2Hmx8mOiZqk+wV89
N/LWhYJK1O28mrquV4ksoUvuiP3mLX6YHKzDY1HtXgUniAKMQRxaH2lV4dyjqmUCKGT38AeOGLbn
41uSJAJencs1OgektRnlhPJu9/hVHDcs5emDQj31PxLdhItoQFwYccy5AjEzqc3ITRit/laPPf68
E/6PxE9/aymK7th/s3C1756AL7bkb0VlR1uRTVFSXsJ0T130i25cK7AuW0avAerlJDT3M9cUJdh3
I/3t5KNaGQn/qtOV1jQXIhuBPaOHPEM/8OVVr9KGpD8b+Ng3QAmSnv6l3/JrSBqz8LKVTGoaWfyA
9LnlZpeK4naj6FMjsrFs5r6VesIcQSnBtDqoc8J/o9ZLqLNSkpivPZ1nI/TRpv18rvdpfE8RDuns
WI0+QcRRZUFHU0DJw46F9LVl8WAFXKRd0BCzlzgC1T7tjyK6ENN8fiOh4srNEBB6ZrIBDqqQHYiL
MoIiqjc3M6LfNTIU/yx5/F8cS4lWkOueenI4tIOaHnM/+Mng5MnHPDyIijaCyvhCdL7oPKDyULEc
uXlNqXuQ5GqBa87Tm7kguFl7n+/Ef6pz9sUB1i2w6KrhPwQ7AamE0Dw+S/Cn+FO+EcPoEbFG6RaA
+BUTCv523MK0TrS25cM90LlfxJ3QJs+YQ8t7o6ADy9TWsF33LvzUgpes/WyQeGgbl6PAeSnIxDrT
mz0Z1dMNeps5ANoEmUSslUvz3uYN1y8PVO9124YTUZ5DwQPrVmlCmqUjNvVglzt+NrtktfSGVNcE
zvqJ5V7DwuK2HaabB/SjiTnxiSeS5by/dLBTtZGN2wn3k8HAl4hcbWqsQZGr+QWxoTJ19hZVPZEK
diIqUUimWIhGBWdb3pyF65iSR9f8Yph7HKFjAleMKkID6wlzRf6pY6b7tI86MHeRC/4HAJ2AXwEE
ENRP7G19rwWjCWSW7mRmREXynK/5+9lNPNUNK2j2tv4VEuodhD2CbHfRF+uF2cPiXESZMJ0CRqzn
5eV2uRJBaNS8Ypgp2HaV2e3ijmmshyb5S6VVuQgwxK+3oZQxL1Asaqgnw29O9Im2smuXICWUBAEx
n57a3P1oGlTe8bCc4J2JuxFMxd+pmqZme9gD5V8UKKLuaQwsoeiVq/NXXBq7upKFXi38dHiPY93b
aWi8riaLiw0y7hA1g5UzY5xBekUOONgyvN2WNvNYCn8vrUA3fj6chI928/lhY07yB5B1TLDQwAzg
UkqxyuXUwJektcEb6v8qfuRT2r1mzks9KTq4J48zjEumfpDe3ya7XhgAzEgdsOV/2QhW1ToUcsQw
5K+FWT+CqAYYaqflem/FjVclV527pEOvyLYUrjajw/e2+23KhBEMbrogKBdOADSWUdUZUDl/7qUu
CrN3SWY4Ekb4Mx5jiX3N4iJCn41IDVCgtHnsmu74W2p+ZyKYrQwAK52TjGfYhJjzrJKtnTFGYWeA
rYrJnNxyKl6k0ohrfZWwvccRE3ayRSmWnVPDl0H/nUeBlhC2W8vXl8qZsu37dXcnFKJmRmc0V14N
JD16unwx4+/69y/kOFCx0/CNHPndSC+VC8yYR0T1MbVNQ2ajB+qkOCeOjk48UKW0lbLevOsmRa7m
HT+HdRMjjx2Kvd/D/V1u+e++TZoIJKxTnRGAaAH+HhjfDUaSbaqcXpY8dDw7AqoJIFCyU+vpviQ3
fDyPK93j95s+Zm/mTQtdIq1DnojTyZPkaEXJKBhfQ+SnI1Won4b6zwnrWUmml9p1QF+bJxvUeV/E
gqU6YNlpWuiwD3kJo9Vjw4NV3pthDjCC9Cc5kK3OHSZDCUZVB31gtlSxM4tWu2g3d8+cLM1WESiZ
a9j8+ZW9vsHlWmLKIPWLeSSXoRegC6thWSHN+0/1yqwfwhnuhmvqH4werm6gQY8pbFpUgAZz+ivc
NoKwS9Q2jAz1/azoJ8tbFGYMKDxZhCL6eGfgeZJbKA4joU360Nrh5hMxdMNkspGzvW+vWHTZdlQd
Jv6Yhjn3YgVfQohBOhhd21YY8AYEauTiXwGgQ9B5Xj9b6TBlziWPuKPoM4khRPGwn52lmCoSoWbs
SaIa0qCrcaWbiaREN18Zb2rge+G5biry/fKC4SexMwMC28UT+nKbbgRrtezSAYweNKWastxnFJy2
8VocjG4mYyrIYtGYEKymKYIeYFjYOm9bppk1Y/6C926v5hbcMn/57sG67h/joraOGhtgEytVDSWS
ugu1iLIO4XWYJipDA+5wulJ9eh99UVMJB076ORl1/OYksr8dzVKvx3g1+xPhNBnQvHeemvcWwLcr
s3z3UGM6Lw6xPIShx957Qe47NwYr98m9Fac7fcH2XIGhB+4iOeU5PNHi7cBoHdLhP0N+al4l7hRV
DCqZy11i8vS0dbvIs1tMyhlF8UUDGikw6TwczGkyS3DZ55EcIfEM0Opf4kXgK8gpKjSc4jS1U/Bi
A7F5Njabe6sza/ANB96D3fkmv8Y5vhziz4yoxLVZfZ2ohB+6DwbYaUb9NxuZ9ecqyPLZNjSMO1pf
0uZxvM3/BC3Kz0TWPpnmZaRdO7o76ZyNC5hzeT0ZEWdrciJFtDIMdDxDcQsderkoRPrHRR2nnDZ9
CfAYx/wCmEJrbKkP6A4b1E3UvdryQ0iMMMCwRk9nRIvpigb8MaJw4BiD8oq3DkItvNUGTNQKMGeU
79i/SkHUw2n6wCXBCD7EIDZi5w1zmEcKYE4Ku9jEtKGRyUmJadk+S6DJY78EfZleMTutaNuL599u
ZmpDPxxMKU4aAIHN3sId779vj334nN1YRXfRf0P/xaFr5+v6riAG2kDcM4rxHxx3czb0TDnWY3mR
/sQcQmcAgtZSQePUJtSUe5+va1w4AjZqi8zQXyKim/iCjD2u2W1xL8R2ixe5yLc4ISYajUXcH8M2
jNkAPt9Ty+tG41OEimfO/TwTUM/Np3yiZ+9wVDgAb/8E5dxancTJDrP/OMTnIXH5aCgTGbi1mA0Y
HONm+g0zuz5JVZrnhlFk0UAhfQJHyHAd497BNIYOGSORPbVsKqy+JXxvONdLqVwUgV3YQu4npcSe
lTrr7/PnZd8sow6NpgLj+tczSqZJPen0qcpImAxLIri+tqp/yY+0zinfUAzRTBxg0hgOGb72beM9
gwBVtC2WLtY+E5tyuyWGRyZ+/BFKv+ySgmtVMFmy+JlpNylbGPxmeuC53KPjP6B668E9o75OVgLw
KCE/S+TEmA1518UUfx5MynvvpTiYxwuMlN38EBLD5DHBLYGzVIY5M8MHAbKuNDWuRfPd+bVGBgtw
p6CUANcpFKaZ87SJRN/0BNJv1zRpqF1mkRpNmVwPaKn81FcZIya5uX6fUBAA/6jHDl1o89kjr3SY
2Bball1Rs/pIDnFAtWHvqW8Or0jNluklWA4MoJdvqGjsitTos9cYveSGP72ZSmUjdsU+ksPFDU8z
k1nKmqLyfoRc80nA4L+O4I1LX/6WhVlC0XscI1mUVWrrZN2EbEiKFtXGposphhw4EhyVGrmNeAwS
PD1CHrlugmTnj99d1JzIcQKufNfkI9sZhoDdPQxIgfFf5oH/6M1JhGyCKrdpggPiHTqahQgOxEyZ
NPXv2ehDzox5Jo3wg4l6hI7i82862lEEigOqrCq1nov7XIbgu6WWeB4qNsnMQLornB/EzktQxvIs
50hOae6YLi523S/dgu3CnR1YBbCr6nQETdlL0FT1IREJqmYwjPJdNPGt+RyKPeB/n5tSVOZnD1f/
H74o64AUWk1Ie7pLr4JxsYMboy5fyaPnYnnk6AzXMA7ubDjFWntB4t9cRIjr6Gr48G2gmTbPpr8i
QYf8XQD2zkey3PlcS9lzstrBF16RHdAaLqx46MMZe/6K9IkuyNpN5pbLSKmyCPjomoAq7gDcM44m
2KqhIswbHGh3lMvdnqLCXyEM1kMhugZwKx4RDBkIulBU63Bx0CJ/EU9dVE1dDhA0p0iTuL8TmhJ5
Li0JXYdf3EgWAmjjdfMWx4ea15NKpdif+aHJXjyORKRq7ukuPKM03wT+WQJqfaDs0Jo/Bl1QjKcM
PZGHFLbQKIK+a6Xd4GTY7AjuGeZTG/4rvbaMR+Ttgubpy51Sh2pcvHQL2ra/wa9NWqgKrcrCtNb2
T5u51sQH74BoKFX/DDYv/hOeXF8UOdYVjBUE3XGVEI6MUu5DmGzQKRr1iOvyJPgNqe30Wvte8Ygf
Z5nJcuVQX0ORlJIvVj7YeHJbv8luAFkXdvKSERnlRq/bKfBONZ3A2EX1/cEz6WB84KNrpXzlewaw
yxczVyzONT8t8LKh2997kLuEInFQ8vk2YIALRCathu7LbVXxkskJbAoy/d38nwa1M4rqXZFFT9Wk
T541/6OOa3LQBOkd6Lng++NUzsiWR3Q9zG5xYLXMY77rrQmBat4w84xz/UUv/NU5DhOmvrK8vixb
DKd8Svog6R7YlLytjfzw3k1FHCvbrfxr4Rjie3HoBvisKMYzJ/Huw9E1OqypcUspRIlV/DQptU4g
zOi5AJ0cS73VT9wk/XqwCgq5nXGC1Yam8Ih62Di9uv6WkBIx4M0tFIE64tv+Am5nSIu5CepKB/2l
iJhgxCUmmHAnqB9heWKFqidfgGA2GjTECOGPCcFwsHHZUuo6UFMXore6Rhoo5tX5zpI3G6DlGfOa
+Zc0oToZ13jYzpPL53DS8CeEGfsbV5GOccRqWnGUQm82ldw8ZXOuPN/ouDyyeuFf5tganB+HEo4t
mYKWNxRS7NoNM8yYbbEsRnA62XlfpdXGj7Y1e4Nn7+646Iip4Kjkn+TqA3FWr2RvWRdd7N+s3RfL
BUN8IeEBj9V0iRFhH/QaqjomWh9YJBlz5xU5BtWcBtMo3b3DE1kYvPS+PRcunAIKNQH/P6zJOGO7
fMyy0c6qUaP4cFKFRZdQv3HxBB6pzk19e6lvhrjYMsDAk/3nXtFzF68IM3sPQ8jAYTTBUdRLIeO2
Ac7lxiIzyMPTa5dfxPITBHN9hhwXh+0SN2HKe35Xqd32FyWOVtOI+p+R2AAjiGKTk3y0Qi7bkr83
C2MIUL/slJIv3FuZJGxnwdBDoBlGGaaBhswRTA0aZzMvxajGWY4BLuF8bSWImsejJzOAFSlbe3eh
IBP0dSPCZNlXuqLCozMtJtCgL3dddnSMT1NXILJ3Llt75t0X5mMb7agojPNp9ydxw5VF2ak5KopH
XYf3qlpk4QOvLZBfNkjBcWOqOYM44vOg5ttyR8AD+pb5s10LUGtNAAOtWSeuB4ooNBifULUz0eLw
pVr8N6POseSQ2B9U/OWlQ1Rj5R6UTDrcy+Jwv4VBUeieg67uLI7XGGHhRGX64hrmRS6KnK7G4Y6i
5JMjdWCW8McsDYNo9/7gSaNTbsFfbHlOreN4asd0pkHYkoS5ZTJm8chyIW81w4CCjyjdZzoZi+oH
5dkXkbELnZM60rwYh2D+7czzWAoNW/ywp3KiAKV4DG1KEILe1abl9Vsc2LPryQlCP9WYuFXSm7cv
bhe2OaqMmHzrrZxULlTK4u+QJabAwZ6S6s3H3e1MCrR1k63mjPOlDZM/yMyftJE380EhV6KmXEmv
aFYr8Ac1yDkKxLTgVTmc+XeRb71qBV450sRQ2NgBHe5hT2nCBJhtsCTxdq23HbJeGwvsHt0IH0HC
sF5UCBsxUVLNH/egcsTVYqDQppk+ywpx9tlFwwfhPHe7fKCUWBcrgnWFo5eyU3iKkv9oecGE0i0C
eDfiwLLyw2PBUechTEpV1xTe/eoKzh+RsjTdq5zdSI6batdeo98Wc4iz+dIQTVCf5Q+8eb3bzQQn
of+BCAVD42E6ENcWzPjqzdwjeCNnLdjvXg4yNfeK7CcpiR0+TAmUZlNRL/vov9vIyUFb0kNgKIAy
IAEPVUetBvGs32uQIrv5aKknLH7BNgjwH/thM8DD/x+cA8d22rcuQxaUJS2OwfLFsquhanUSGEmi
7SO4aOkQt08lt1Fo0U+mhcN6Wx8wo1ivf5+UuVoK7EW5cPj/CVvmW8AD69VT98u70xfVbD5UgeXU
AodV2hXV2+XAkiXdPv/CqgQJuA3JVUxy5Emur7/Km4v1GUFkhovv0wuok0STRrfEDhhcdSWxB32N
hCIfyltSQ59mnuesIaD5Zsevh7XRhO+K4DlAUK4VnOYaSXo+WKfMyWFcway6K0IKMRW1OerFufCB
gVz+7EmJif5R4lnveGkRnZK9SW9ovXV3qdjDoBIR6+KOVfVblVS8cmwACQ7AulxZDKaxlri35THZ
PdLjJGFfsDnjfRwv5FvbMclq+RboGk8VGRhNgL0eXwLf2oN17QKvF1E4K2UwBIemdw7OPVqlUptl
JICpoTpLQ6eBg1hBHLKKSPXDNnwsVGisw9qHnffFnqtoPq0JVFD27FAqo/bJq1X83Awcl+aKTVV1
LCqUBFhL1gOI93ZASex2yj1NKRZ9fGVo8/WUshJcgiFv1UgFX44wZoLWaAL6bknQ+KNJYUg+2vUE
mff9ZyuQQ4CDAFPcgaYs0ss67nDb5bLw6r8DhEJ8eKN/N1POcH4z0KrVchRJPwYSmtVwEqh5saBX
/G5AEi5auSJ+f/AFg0rWjCLheOSd9OM9K7M3NM+T9/ER8/sxEHiOeH/2YZqun9VuU9JDhE0nfaly
y7qZ6/TEwuLAOiufS5weBiJQck+OKSULBrjonB5HbWORTnQphN5QbF6bvm6s6oxdKIAcMWallnZx
UYWhfeowUqqb+tLKgf6ow+pCr/S79KFzJMnsuk8Nt7tczEqaMave1qeHhKSMX6ajUSpvjGpUmKir
rdG2uSrsR4S56HEhariabb1juquAzxzBRPTVlhK4gUGKd3y/mwxlkwDEF35E9wr8BsS6l5f8h2er
5i6f9KSufIMDZoiZx+jYwLSza/hVEiBpQxTLkLIQjqqMFF29EDSCkO3C9zq8L99ZDy3dsmx22ax2
D2Kg4XJtVziEZevvLKgB967/1Qa8pvJSVYP0h2/HF+89poYTFL8XzUoyCQDeBWlRYZsHpZS16U5f
B8474KCT5Z2G5a0ul4JkwT32exrtiR+FwELOLDmqVlpBU3BAkIKHXaPGOm8roqrO9eTMH97GxxLT
4s6JpNKNVKMfCsac+S5BHoBTSODDRXIRUzexVVMI9PS9x3PEAa9puXEMuf+f/tTbWJZ0JgL0etfq
0HoetsK78dvczA8quHL63DpgRDjNUZLJhNlrzmVpWsvaDKTREXKbLLoDAgxAb4I2gsIm6k8/PhQZ
USRtRbAIu7vPjI67fHJ0J7Q9sKVs7yRsJoISfgAj1FyuLgBvuS1mClq1uH/dqzs4tUoSx16O7L4m
pkNHefvMG+SDFR/mBSNnzwPds7ut99pbK4sW3JiJ09r8TDYA4jlT4/MNvgmqFw8m/IbmKXwj85Np
XRfLVk3704JjFKeixQgdhCONlL0M8H2q1V6yVqlCeFFcny2x1+1V+lMot7s57GHZ7/sWo1kMSMzS
jFT9mn/E1JrVzCvexwKDcdk/+TgpRiOwCrz1MtK2UJiGLKdKZIn0k8WXvkUSP4h9OR2fY8miD+ky
VDDdpIOhOheqPPAflL5deIGTfgVN+aFG7jd9UtsyWHLF3V9ZQtJRw3ECQwfBKd2Ae7267wDE7zDq
QBJIGdsda90B5mggGI+Pr0d7vAsL5PiaI9+Ljk1wxFURdR+xPzofIYlbZb4/EKkHni1kL38jN+8O
kvsCUG7SaiINWE1knuogifcRjHtZ1RTLXlOgovR2mYuKziPI306WBjI+1oZ+pWkAEujhrLibtYqE
b7OhH8voHOfRC2SYJFONekpZkwlmayOHxK1gE6yI805hD6C2bwPjPsVa0sUs0/mTn0/yfzsn28W8
mT8DtYe+0F5ETWUYABjdj4kjcQLY7zClDF1aPB4yE1d4KlTFi9Gt4018k7ay9VSAhh/re6NSZdIy
WFf9IfVwegidLOS0dy7XFdqAVnfE2S8KSq/4R1GPF/qOuyxx6WWZOzFGrYl+xJFVuy0UaCT//xRY
GdilaCgTUTfy9wjSXVINe/ORY8BeJg1Rn01m1fT605KYuy5mUgq34cXR3t1t1mkRA5qP4mCsm7jr
2rRRiD7PH1sZ6xi5rN+a5yn+6WAjWP87cHUfkIhFBpRXNIrwBqjOoW3SMMhH1/8AklJwrUZ1HiZZ
d7Fxg89uk43Ff1J+oS0+h7NgKIIWW9g/Oibh3coPJTYXgHDTQP/ebj6lOI7UdXMezwnm0VtK5ARa
2wbzMRz/YfnHtHJhkKZ1P9LKKwAymnXucaJsAlcPXDKpvQnJvokyLhMRJs+i+Inm/qDHvwd3dCIM
yXEwymP/mGZnuUvSAWqyii8mdchUtCIlQXlHRcdDMFCdgsjIIvDMBNkKn4vmrFu7ZyDqaiM7fadj
eDf7YHtUY8pNZP8OVmiFWAKiX4hn1UWG0+DNG1/vQb3mUukBCmSU5A8TjBSWqAXv55y1w79WdmYQ
6fDoV50TfSqazLeRR81dpN7LW6v2+7+pfW1dHbTtF6N6EEksIPhi1kZ7OA7/30TW7NemmVpAeJ/n
XTDMHLQ0Dffia0UQ6S4o5DSoOW2B/j8bYi+QgAOfRqfdVh1RbhZ0MTOgF6ZD2isa5VhiAWWEmS+Q
J3NG196B+EyBXb0366zclefvvER/cXAsIKqSj2wwIlTVD0vtI2LoBbFE8bBQRDZeJzWBpgsZ9Zmi
o63hVcLNhbXN9aH8JqoSEM5oq0agWMTf4lPp7SYRiYD1IbSRBCeRoMucdIPHVWmRcKOCv9+f+etv
RCfYbUK9EVbYcKijxwFIqvOJvdDOoc/WnbXNLQg+aHNK1t4l3l/rXwM7b2fD0mKppkpuzHJ2BymI
S+wHVoTf6N6OJankrmWWZJm8/cU7nWXPlLSter0eeIXm9xAfEcuQqx6nDby+Wwx+xZqH4Rz3t6eN
0USMtUvBpGOcbl1yFt+HKopwv+CIaO8pxiWLKxeJO8J2IE4eAogFn47igV5qy4NLKcKAeMYttIrr
FCPi3BvQbcseXV4Nofy7oFSFWUpSsGYBM7Iio4znvwrkUap4l3N+cEdFxSk/J4ZgD+f71bzlj2oA
Te/BY6HYcLm47V9tEwqZS9dyETQpOiIwiC8pL2lyGq0mPNNlA6xGtYqjpKGXGvOdbb3Butl8onHS
xKhKQsUk63JJacTDEWtmI1jrAAD3xCvDXz7cAt7xcktnaBmR0X4CP1zkbrj8rfXFm9ptBF0fEjqj
myGzXqyaeyTZNlo8yxY/vyXBr1RVvq7ESt8triG6K7tXKjk+GyGrj2Ql2sOW1TCI5LG6+KrJto4A
z5qTawAXRnSfUERGcKqoQmQd7KbRKDkKcuTIBoWWaTbpjbvzf2VHPUw1Z91OdbpDhZjxRT3rGIyg
M06UHoPf2UW9WxQyPFRwoQSKIhM2yEtBdPINtJoLPqbKgNsLYtKAqVvyaC990lxZiYeSxk/FMhCn
fxQV6T6cBCKfkp0YbvPc85LwiRc9CHa10YvdgaUYjar8lzMMKc83rcrCQKoKaBxe8/FfpchYVZ2W
289X5zzuwuNonfMBxa5j2CYcj41T2/N87QdLwWGkPyd3+cfUgyHzXvVlqLyF07soxSUcBZIRXzfV
p/2HZlIJGDBrRoK+2Pg/6gtK2gQtgK95UtaW9cojIFk0ODK/Wz4Vu5C54F4bdvOxTfY+8uvPq5hK
UV37czd4njisFaRVsjcU60Im4iRZXcXUGO5kJ3RiWH2YLcOGVen/GfucPGpXyjk43cbZUHr3FgnO
5L7mnGbi9HaYOWqAcT18/bOfFDphbiEA3nNf5x8gIotl9ZeTGkYcH3HQQ4wBg3cmInphR3YZUYuT
+sEUAqxD6nQ8Jj1APibD7i0oxYUetpRi0ZkgoT60h33xM5sn4alc2kfoG472Yse0nvg5PHaiJF+v
3QoC5rH9ck8quTZr6ZxOAmgKZUbV7DMrchdsrH8F571ZmhM5bU7d/+0OBbpAqu3Ty7F3DpYj0kvK
fAifndPr9oXrV28u4/G5NNedOj+ZERB220iJ/RAPOhxuN4N/8axg0MvxmnAwMsXaDGPr43EJiaBQ
vnsIGYTsAP6lhP2vJOw4Uy++slYd0qHD9DQprfXHuSWhkUJhHXdkE6pvdtXfgzT51HfZOATV/qZh
/m41ccxTiPgEmTwA/lAGcE4pLVRYHaqGmUEfn4fXsrnwMK32IoVsW0M6qI+dtMOx0/OUSYZVAbx4
U+ROASJR87Jh14IoPS0Ro61aDcdPHsD8JVi0TUDuUAiWMD3mpVitnRzmI/X8HiG/NzsHFvb7bfX1
mCXM+9L7nbGyEGqbvmTd6vwTd/bEM6lG42vg/B6azGNFpIKNtb4jjoEBrlL68aPtYXYQyuB7VFvB
Jk6X6hMXMNhFnpCMIfXmRnPy5HD1zCZKO6rw9KMH1AQLY7rN5eEJxLsPZbakGOaxZw5PKJunkIga
ITPBikHmB3+1j0h0KtDFuS5iz4P/YShwI4rbTWYRQfYu4L9OqJ6rUk4ekQjLKEtkiIDnV2f9Q+5+
XWnyZbwE5Ro/yk4SnjEcD/bsrBYR5IY3xtLV21fl1SfnclYFmJiIqlLwnchvgKInS7Tzbr5E8ZZd
P1zOCVCr7cX6n6sNNhsQ37UczHLeX10Jti2On9wMZxXJsTQbrcCqSgGzTXXbxkBQ6Q3M1w6ee1np
zbxVNtZBrZGXxVmDU1AhYumPbrdXbvOMp3MD//hxY9gmH5RGLGuYkU4XQFPIN0/Dp834LrrbvDd9
L6Wap6PJIgQNdIpKJUanE631D8NSqC5nnX7kzCJnNNswWqGjddtu9jnLfN/UZVaWRnLQD5BiSAcq
A8iQUEkIoAlYpmd0gMIGVQK43DVZ/3XiaLwWTOlni5dzsZyXlPq5yw6KID0n/9dBzSRpzltrLCGR
nVnVWAhzgmkdiXTx8VEFliO3Sl4Rbuv8iw/zYevrmiZ8cPnFQzvavz4o6OX6QLegWbS5zlIHsaFd
fb7rkG1EO8fgZk6VBcYPDlAj0V9NiV3XClfzA1x2+ikEX/hcW2wkkY4P6B9FNLRSeRarwLmj1zpx
o7Ki7XSfv81CbuJWLAvlZKqQB8IZPWrAgdR9NFnKy/s2bLY7qdUB/t4oizEcJ03xSDrueHWb6Ydz
uyTblayXBIjZLDwFzlk9E7boW7b5aj6mNi1kYJNxvn+2wy4UMfsv5nmfDmYHq6BBR85hw0TNgy1t
lCsSb6A7X3Hgjp2C0sGvhC3Rz5cWSbonxbGIH+sh7ezplrzFEdvKGJBs9TJNilTVA2I0quV/UD1i
6gK+XL0/41xFBhAgMcoR/5t4eP0Sg8+yQzcuwkciAMiLttnF+45JherwaPS9xY0BFVjdT2w6x+Bh
DAt4GbWRlJWQWWPa4BTecljhD3pXRhqxstOVMHVnNI9v9+HzU2+PPDrX2zc7QLCUo9X2JERtd3NW
oA2HQJSt96FI7cqfa0Wj+4VlDC3iSmPYkBAwOe6SUVn2uQiOKYW6T1qt4+l+WiA3VXw4V4Q3aJL6
iy34ROCUY34iYIvj5pGgIwNEvR/VOTvnoz1DpILiKZXW1CtxC2mxV/43IraLX+WEZipJZzmMbOp8
GBrPdxRGbjjSLbrJ/LhQLixNMBgGsv/zqSomtZ1f+L2Tr1Pn66dLoDEXwooD29/gjDE7tGuuSU8k
iNqoPOa5GHq6hSf+Er7yh8pjxHOjeXsf8ORjMcYozv/ipJ9lpnYQQCBn8nAsWynWRLjFHLJ4VjI3
70HCu/rv393gKh/wM5WXDbBHQwhP5Kod55hZPdT9DHLkMsScTBBnI3C9BtPmO8qKYUWMEFk81F9+
3Q2MN310YTrIfj4OdSnGs6d56fdwobsi6H7ZpuHw9WxlRlv+jkUdSDY3Vw/QsclA6cSaazDb/qhj
YrYQCGAm8blI/Uk+tUk9f3U5H+VAImSDjEsEToxuDE1k9WZgLTKCInyMc6Ewz012VPT8WVjubuEv
Uw/PKH/O0J/CX7MVwwnk8cutPtRoUqnHIjaLqvYxlQ5TQTcyZ/dI/K32pQJTUewTivWp9gJw8Usm
M/5mT9d8beRJvwRpQjbQmzi8i0AQgERXFLeG2cl3MzgACamyifHMnWjGH41DhnrUygNp+3ApOfMC
s4bfZifs8YvE7XAI424/pBrwm9KUlZZgpVMoQYqjLx9APvY/JdJyxSLw9Wtx9YZmsMU0kWaNx7sN
ngCRwMBaucJf3jAAZaxA7tqtgmb+5JMt+njCPlB7kSo8SXi8hZT8V+s0SSGsU31/IUml/iZf7KcV
X9NBXiMUy76etUBWT1uoCG6cz766w3D8I4jd0g3wHsLaqlJ0kLzIbENv12RycRpkRyucEQCHjFbC
BShY6Sxx7yAXkRdqGsVBVcClzEhTtioGtVuqtzla3YIu4YcPvc97fttrcp73wY2MS+CnEu8Hhcpx
yz1h72bd/S8g+JFjR0rPXcSO3SbpyN68/PL6hfFuKUYwvjYjATfzBu8Bg2RjUXdX96GaU5UyXocR
GOwr0V/cuVbLfHHGeNsQCunzl80unt+rBq/jIHF/4P7WJWJKtqxzAN6bqrpbOgQe6e98UEHAKfhl
JDqURTxSVJlA+UQcKbLvTwmeIuw/N0tzIZC6Fa6B8nWQEFlT61m4Rscj5vwRw4dc0gqfFi2Cn5+E
HYgN1HC6/sGvypFx/b4XuAPH0xHMqq4BGiZIoW4Md2jKq6hLdZK0iW/pUONIqENGgO0HwvAt+XMN
AKYyL87XoCrqe583GJHaTpCVTI+4ed6wd6G6nTkW7YfeTrSIF/ZlptKp49dxkCuffTuVGyEUw72X
LJtdzwOSBvjSx09R9kDiIAXcSeZbFgSUlfnV8Tjp4hceWK1B108jCBGTraLeoIr4LXweJsLrP2J6
tLg55v+fkculPrCBUfNI7sQvr1FxNkgUyaZAOLTc6IvU70C9/q0MJPCAzWIjCGhJmcBfHix4zMZM
hr5nEJfl1ph0gYuTVODiHGioKC3KK6bUjAMXZFFCiAUphU+wW3bZpJcjom9AvEEkMxZ3LJJeY8wJ
e3p7eIaBxlMXyqEg7P8EevZreUZnhgvuQ+pkn57MPxp2Ra0kk0n7MpEtSZdMCnnWCY/f/q1lBi7Z
yABEYwkaRbWrrZrFoDKbfNynI4q4TcEM3tjlYuQCAFa33B8OOsn61IFOxGL+khUU3QwziY1fmXXu
5DB3jSFi6RCLG+Cnm2HAYgG/PKWrs7oAyVqWfQymkgqxCYtrFK5kV/f1+MIZFXccbcEvCUZsj3TZ
JEI5/1sxQoIrEyATA+mpTnoEZ3m9HhF46X98mpFOT2sjq/8B+hD2/foqA4grilOeQcldwr6uWf3l
wpvWJQHDls6Fq6RNmeF162npLWLQCvlEMpMjlFkC+wYklGH+ZlnScRWBmP6apxEjCOgfG/08gMNk
C4iA+aMihVyeeULcKcanUWDMB3Etr8Ca5wYDKh3Cgmbh9/BTkewp6gLqFg8qarQaDxoOELk2Pto/
axALrZBR5t0/gRgAcdoc2tERqi6GWqRGXJ+0guIDnsWxyTl8uibMySz2MhBjh/2mFqOVEpRYTsd7
mw96Chzpwmst4drc+i+BC1L4gbAz8rjcorSbSRhvQdDn2KXGukCp+JHI3ezesaAQGG/eZl8YTrH9
aPQmqf//0Y7SoWpr6JaGKg7R3ElAbtCrANKxPSePWmAiZSdQO72Y2ipDrbk9ijiKKxehaj90lKVd
UQ8fyVVa/lUdrWonKpaDp07m9REpPMZ7+F/3kKFTUpv3Vaj6oK9pgV+wQes7WCqvauSXImyF6V0O
1mYVjbKwcx6KNuzzIdWvbtPu9ASadxJKeSAoIQ6utWgAOhFOKf/eEED3s47YWNUMkL80ZJyP1M8H
tqz+8Kj+orPMVSEy++l44ADJqGdDFjSRgEZSNdRhODpp8k7EebGnN3U4P5glXSJF5veHGzjSvBQB
gpHIvnM2zdYnRWyYCMJWEATJ0ZjM5KXyas2NP3kfZCedMX+fWnFnz9YiF3IbsWI218hBt0wkfRDr
H9Q2V91D3FvWpy+9diuibimPEadQv2EqlZvTb4A5YGeLtifUjeIjwh00dvSI0u7Az60McaFaqiTM
0dHdKhPviD1ifctm+QFiOQiys8n5KdYRgrIkpBbEkL3foAas5EhOsDDaQF4IkzU9z3XEaTcNeb2N
bn6hoUL+0111ymaOlGVs2zr1lEPizv+xG3T7ZYOqBXLIG22BDOZAmFkDIjQxsM9Hwro20kolA7/Z
gFwowDy7PQRdwyt49oYLuPSTklArtrUxZdHqk+P0ra80rlpbWp9cF+RdEalHaVc92j7L8v7du0ha
18hTkO/XFd/zg2/HiwFQ+zgC1BVsREwU2H1/M9wNM94/Qsnrk62I0933Q8vTIYXPXUhaaapyCCTI
iG8WWAYnvdTh6b+StTpVgsgX0br0yIXLIb3vDwXRoz88Dl+zbddwkj8SO/Gl8hVLAvN4R38u13Eu
K/PCM8SRDU1owuuRkiGOkpMWl5UsUqrDflZgIKU1gr+x3EccP80p8rHIkmo+XeLzyMr8VgsVw8H3
dLcTe03t5UjUgIERSHs6QG3yC2oYvJ6phcJlsPBWErnHUJwVhrrqeyqgNo02jQs7W+C8IazwwAqU
trRkfKGN4rlcY6y5Crm4nC+cHAod1K8WZI5A3LfLXHhZEG+tIPHx3p9fTDJLuqSjIkufMNqy5P8n
94cl8GmMG2q1nzbaF90jtX3INKl8DqGsk+4JlHbSVF2xvMoyW8Alt02kTOqCIhT7fJEb83sRYpIh
4OzICFiunXSr1VCZLtlOUwon5VHaA6wn84raKZaime0P9B1GpzyrLM/+0UnFQzc3aEkDTp1e6508
pG87vNwWmjYNq6NRUNC6qAYqINQuJg1Vp9ejUxwGMHdi2me/hDOSNapKyMbMW+u58lAZUPHIxSpQ
ftzThRIkTS9TiVumsO21vYfiONfldrp9uDYA5pRNCCp1521y9/hZCxcI8wjwA7MOwNt3XkyYY6ye
6usDXt+yqn3Tdux/S3InDQFlsXIsmMtb0TPLHoeqMQRLOHifp0l6WlqKCh7Fj/uD3Qssk0yc8QBJ
sfhUmYv24zXwqXD126LGM9AdMkw6FgR34hfXsrdyU/1mNoBS+b+yD6lynDhbzYWbCYGNr9bSMC8y
rBMBoc5zkA7qqw+LTX6chuJjN36Cta07ZJCH88IqZ5IyWdsDL7fLupeagPJJxNX7Hj/9qf7Mfq1u
rZDfhA14FI0ucbPIeWYKsWAHmNdtjnPRDr9NTlaV2G/BKSk/ZAoCT/Gq7JzBiuHDqbfkIdz1pXjb
KYdH0n1CFg4iYGP9eTVqBiPgTQA5T4pqt7UQT3zjXkF0b2usI7xCKWxDd+1VxH8fl4oso5gJhXHU
YAoFtDzzmISpWAkJsGIbZcboCd4ifFogQU+oURR97zG2hoUmBXOQbU38oGjU4dprdnW2+SPriLRR
nBi5J33Dl2t8GT0wii6AFpBQFhIo3/AO6nDI4KtF8RVX4mQcir1x+70uDQepR6AF9dADJ5+oul00
0Y/widwaxOcM/GgWoBeiuEsNYWGah0cuHNFyVL94uRdhgeTVb+mF88ERDjUEWf7gtV+3nFDXRm6D
OjUAe7mFTgJAGDElslnaAFV6qYQJTxNj8DU4D79sw7sCYUufF9S4BA2GG8QKyTrbLEpjL38Fowxs
cLL1pbXKWRPfhgy2F6nB39U5TV7G20Voxns4K6lsHWJugKfoY+nvh4+zsSiGpoueqLwgaJNx4RCf
AXajTSDRR3C0EFHY6znpYo44X8rPi+u5NO975diev3guAhXM4EM24bAPw6gGL9IwP1CAWbskHw3V
WkFAdmsoJX9eOe2oL62Ke/mq5Er/v6ptjMD5OSK591N0Ztxi8TpuRVlNfKLPse0h2l5jbdDM3R4W
uc14l/ZabLH9N093P1pfPbsIh8NBnrCQncPlP+UWc5NR00unaZ7r2WZAVDE1lpL7ILZYK9/fM4Az
0vKRyjA2E6NMpIa0V0iqQHRym0NiMcIlZ+L0u79qFlfarykm6GXnOjzA1W2UhO2GAoM1mK9Yw9jz
laCAFkqhVexRffA+XU43DyRxpBWtO0ObR+G1jARj77SevLJ8m7fQawrkyl4cq15FyhK18c9pr9X7
9RaXIY3LcBu4/XQrvoJxnLdbIoVz8vYMeufOjm2AEW1lccX23QYMe/esmGJ6OgPqcfN2CxOaG7VY
eGyM8T9dqaj8Y8gmnsNiwKJIYHLi9thOd4V8SsKndOM641vBaom1LHKIbHtdF/vJ5DJoU1Rxpoy5
g728CUqdCqpxmmKKwxCOUk81lkZbSpk4YKMqySMJohQk58skQCzdmx2bZc8ca0sI8yFjcwnWeLZB
10vxnZb65Chi0FvyQXrqmKp2DinXkFTSjpBuTKX6831HXIZdlRxd5zeGPx4mwQDUqHaoHtk882Sp
Q03erzE1D/j84l2AOeF42zE2v5NjiOdCdglxwSPNCYZkDfxFvIa02gE6AbiU6GlqtSIS7Q62LIrC
I4ZMa7o9nYxeLOxWBzw3RWG2qgkZSQ2MpMEcn47izVW5NVR3+gxQKcD+B9c0GzkN7IDGaCh//VSq
EDthUV1gWW93GOQ/g5Uf6FIBZ3he3rHyu/fqmwJEo/bC2coj1cr6Ab5y3dFxx/jRiUWlrI5D6GAO
Q7RcaAR8ThMuRzsPKPjaJTb5UqSkB/hlpsRWQgADvUTNxQjqPFDc1PMz5jwHGFXqGNWeM2zX8iTH
G2KN1nHw9882NVAAgk9H+menAiEuk6tDyX0tSvzguPDOQgLSNUJzMzoxiDIxJdihHabtW3fESUKr
YWqZ9/rdnrYz51+OIP0vdlw8oVNZgqU+hgZBMSTqHAII/Xvh1TYyabWmSoab0jkI6R0RkPOinvhl
znJ3gRJksCuwWyOXtmJuT8baL3hQiKSnhqOhc84WS0iQ/GFd1u/PN+0Bt0X7t+8g+kJe8cEK496p
/s+XQNY4Rlc8Gjwil5h9GKf1N7KF1HOEI40Ai4iSzqmozZYlYZRweFq25L2lxrCfduzfqgNfs2xa
tWn2gOHzF/NWJOM71gDUC/cJhxVF282occ2ro+GLSMQTSSaSEP7rXRc1O2tHsoMgf17d4LmPBpiY
FtgZkJ5db532BjmjX3TpiZUCkewEqPOWdAdOLGtHYaWP7JVriIXcoI2XSzvlKqd3p2CmcwBevQYe
1et/VfS4+rmulOFCA2hplKLzTIiU3LcqBW8eAYxEuBTo8m7XbgtqtyQ8IL3kweENBK9bSsEvnH49
NkOuKPbZgERfUBBfY7FD3NSd6URahlaQU3RfZXluKa0kaAFWLQQpZoqJB5HfcyjAjOdHJYfmufFM
sPOpn1eI+NLQewtJ2M24ovs9Wd0iz7ru4AFXCvvcNAwaT5Qd3coxCWwQGniBN5e2Qb2LkJWJ0tV7
vxv1dwOTrEEMcRiO8YFUluY+y7tN48hpBZ+wYP5kExLJ59jy8VgyXm2yu5mzTk/etTqVqGPPVty2
+vD2BmMCBij/ehTmTbEkqTGLnaD6qC43J7UD9hqDxDttgF90wnRkRICgnkHDHiEPLBGG8JJf/1Jn
jFy4eFWW1rs9E6nUBNjpJhltnLr6zfG2Vka9WO9mbL0yVjMfG8NVYniQVLtzc0oplvKwF9KKYeGH
F0DjJFHdritCFw0Po8rxfvrWkoZbrtOKGDPof2i92olhJP9Ft/xSD5Axaws1JP4ArYUjPWCd/gvL
FiUiAiNYwa5R4ttAY5lBcMzHYPDSud+HZz7kHEDvLFCT0x+sEoBto1CdFZvnjpExoV22FXVMtGcH
69KBrRNJOXC/VEsGaGSF253K9d82ezq1RPuzBN0M2M0isrBiSx95N7JNcynmuo2/m1QYAwCSOYm4
uy3CsdYmc+IJxGblsayumW0B6fMx7+x9etFP+s910z3csFfbcc2PJzvYO7gAUjZece9oYXSwXIMD
kC/OgQQj/dJ4lDuacfjuwiG1wKmoX1BHWcvpSZd4rgk1qgBhBypebYRgJDEd23kp+lTUft4KMIU8
2gOKZD1NIImLQiuWO3FLLuesMXqC9mKSGEFIc2B9239gqrcCBh0SmZCp5QiwVmBAdwGbGk5FfPWZ
BO99fQDYiTOQ0LuCWo9UaGmfN5/NLCfKN3BVN6raWIMLnd8BCc6P0R3ZdaW+NBJ+aUdjZNAgOZjX
FqnmSNM7+o+N5/DteplXnYGTNssiUvDKSrvV5VGL/RcbWx3HSdLpnJmUArXVNASdFgYgwx9CcOPy
RnDnYtHM/WWi7HJnvPqAlEDnj9nGA8jQRyHy6r6NsZA64PVkbBUaMLlOxb6jlJdhWuQkl+Cf5V8d
oRv82c3t6PyGJ6mvsquY88R6bq6FhX9gdAU7RSByWka0RJGmPUSYUrhyjQ5/zzgijCOwNXyOWKgX
3NMTDv3wfmtvRYLRWiKVW4oQDT2fF2e8zyAmXnmbEJ7sduKPAEE26lX4BJPxO2lFuc6Qwga2/z1c
6/woqkUZPtYM44LHMqN1EvT7iCSpurqxjmgSeovXO64SvcnhYwH+3lVKN3IA3kJNmrbs7Z8FsDX0
TUA91VrP9SfOBTshItSZVK1X1bMk+nJuF3EjBYUtRTY260oKLfKImGs7obsyidKec99kubgOZ6jE
T4jpmW8TQ3/XGWXCKeuNfI/TUka0v0kQ5CqZ9vZNiE5Epco1kBRfGmrZpQ9Lz1rvMjsfFJye4QlC
JdgfNpdzHpmQpCJrbW5+K5uV3VnjPQYv0uA6uwCsHzmSRgS1Ef7vTiASJoh2Hi9kFAnETxTcD3xs
o4Bl1q87DYTX20RdM9+ETKzjWohWyDSnYWlpswg11l7j9vsjt8Zbj8MoyPsVjmCpucEPC8qLhnpi
YyCuCTOEL2vq9KCyuea/1OMx+6UnWkZbMzo22mu8HE4qv3ZPcb1IsqK5imW+rEvIWrr1f38RRoKA
nrMdH22pwNKGOfqq9rKbhXcLToxec0eFWtTUDYFdrHvdkQIGkjH9uAO+sNt9b0tzbSRQsc1C1Dn2
ESD4i3VZvPzvigVvMuCH0KuPAtephppcymogCjfC+9L5NajoWdzKMh+sUm7NMiBSYqF0sAdHtwV4
SBGPiLBK6HwWa5W9JMT3n258MrI3257RwnHYtLm+CUxUGNO8Ai3pNOuP5tX/6Gd/ZjhDzQmcE8ss
slX0StIAdqzOrhbXs9lPsKht+qqouvjL/57qcsDGnS85n4aUHkLW5j6EZpqfquzZZnzVi+ugVOIG
U0gJeHWXLFfbdB4Xvqs17/WQ7Pq/1sbPmhfm05er14G02PAnOylwSrh95MwFKueGUD/l/6E2YwjE
1GGCN/yNtU7BuPTeS0HaE92JQmeaYeCp592i4Rua5NvxcQnfqoWUfhNEXflS6LkcbJA6YKhwnO+0
C1im6VMjtsZBAKu1cRnPWMwHfDAILWqTClAP1VcxhEKe1uVg0u129B0kPyuSZtJvIeAiuREoaX9z
kV8FwP+1Qce4rpuuG7nXey1Xllyu7s44BVa4hkkZu2YAzzMuUOCYFk4duoHSsMwR3todwjvr0kaU
zpeQHu/Uz7PO8M5djVNkIzfq45cWI9X/bAKqOj9JL1elkcs0ZIagBDw4LGHhkXDgj5foSIhbDjVE
VdRp9vGF9ZBJ2AMtVeeuMFauY5Hnc16ELdTIodzshSao1K9VsM51yi2MuhdfCRTy3ugqLAeP39E5
2mcY5QyeruFh/YCCqzJmB7u0uVhVLVN/QNTh5amYd3GBqmelCa5rkBkxMZGLCrlCqeBRp5e3dajr
JJCwPj9qUr5caUuK9Mc272a7KVhSsYk/NldLywlhs+BzAnlVkjBMHXOEUmiBmACnBITRvO3FE7MD
SdkyMECgKmtK+nF8NLtrI0Py4MOHZE4GsyBY0Vmi2b2N0twsxovu0bApMQeeSFn+p289yTJhCJwH
X3M8YZgnQUZGamjxxCQqu0klIzyASmJ6jnXozvk4AAQNrV/bY6aLsV7so+HAyzcVcs1yay9P/6n0
Q7a/UoUtdq3EcSQrxjo6oIRKWSzL250nv4+MiLpcYKLR7t+DFwh3kUyW5LWNm0mYOi0g3JaO5H0X
kJWY/Tfv4sws7ERU2w3Yx//3F08TLuSUP6KbYoOh78vFTu6s/HRofmzbeJRb1vRrpNkAHO0E8uAV
UeAXNnrjRDVejSSutKZwDgkG+9VoRJxW5aquzFprftq6CVsBaAL9hs4OrtHhuAIr2aHhOfKMk9cs
By46pFB1J+c0HriNJVxjjtPt5ufIkc0soHyNliPKmYNxp65ggV6nlrs2GhJG+gHtzsRCJpyli3rQ
E+/BPcXfpig2lXRI1MA8rqCtYKGdKP/MLXxDzHi+EaM5iftSoFDaL0fHXUz74pvafsSrzjqVKhKG
bMaJVT23IEMkIRBIyO6m84NirzmctS864yniFP12p5Og3I2mYqKkvT3oukduzClDwfZ9/NdsD6fe
o2jVykySymVFp93aX0Pl9jdJwygBK0I/h+6REj0TmLn+hibj7l+De6oZd3wWCo2WMerZq1aTCtiV
aq1VoF34DPHcnZq7NNmPJz5gzIwLMFBc6m/gGkfxC3VHKTrYEe0m+iajoHL/Luhie4fydSQf21XP
ztarULNROQj+MjZsXt352JwcaAkDzEoQ0GzGhLy4ErOovJz00aMFT3KUqqvdHq1UL1aPHSm38+TC
RN0jb/X9zx/Yo2Jl99zpdGmTNqYAEtTZRKGkOIgBYdJRgqhg1OPhdyTjCuZHIcQzwQWlyIKPhIK3
FD0uIc5mMq06H1ELbvKmz9Sd9rUr8e0AicdwK+KaljE+A5Up7XzbAISrenktCH3eNpB1oJwR744e
kBcUUSwGJrXOn7mozMP2dYWmhd1+tG07jbzqn7CNARfLHz4XEOe/zi7qFTem4ZnyG8V6yQLA22z2
bkgUxX4FXTUvIoccDGDH9oZ/hh1Yh1cgXXMGeARluU4sicBJu9QvDrbsPasGbz42J6oTIcAtQMGI
n/FGGBQHEenXJWV/Gr5HYOJa36Q19QVGjonfi0yVWoyjq+oa3euEXnIB6H3nRGteMtfZnEve6Dqr
Xz5rKr8nLuiax9i2Ng2HkyeqGHvjySKpkPO9josDw/fgdUUgmYMjTA9WbFGCxKzzwARTq5gKglXQ
LLeRjPJvtGilzuhNSNH2l/6PJMpLf8ZlL9dcP066HV1CXGSx/cheXvhbIfN3qlLbuTOOPcDeVRkV
dQPuNDkBKbzSdKmOUZTme98szvwmLQYWYbIDcESsXMBtci1apvFzQwFN86nzWmEyrksA49vwtiCW
lmUqQXPWzmwhBhYAw18JlhE5FNGnGf5bodbRrQJg4xCCiOw20DayZ0hzF8IA4zF1mfs4nqjeEABm
8L9514LBJMHEH3PK85meVtkXjaESskRGrck4rWL1yFxYzzkLx0mJF7c8PcN0Ao9o6x/JPFiLj6On
lg3yYoe6aT7i3MTLTt/ZMXK/rVKUOZ5esZ+WOoNX+XDPH5vARwwR9p60RQFPYeOyN0vpxnYnZPRa
cJUkyL+ere8j2ac7dTRUd3zFFxn1QQLOXUTeSGHflsgED65LpiN98YM/e/H29vEcPIXN8jfRMMMt
oe7W2E3mneQjycGGasQnIY17iFt+kwEUFUwO1m9wO7tNAsI5kfRzH9papkor//6ttTOqcT2H6xfA
ZrihK47VcwQlz52dxxWdlPx8DN/VnhgR3JVHEEyoIZTI1nRZ1NnVZ5DJ8cQY8YOVBGtVhCePEGeT
xvZImd115nSLTbOzvGwIExbITExZ2yWAoszUWOQx9MUj4mlQaqkwIfHSVbyOfdDQurBryXcjmR+D
Wmny9H2Grcvb8+Nmf6Osa/JEi1BBQA3YnHzrla9RPaiUL2e+6rb7rRW7VAdxWaf0Y6s/h7O4AM6F
GWpRJ2YQbN+iKb6tRNCOfnnLguIimpUzoaOzOXPxyHnfOgZpMwVEq0OZCjYLAIgXiU+dyG6Pd2xU
D0ZZhBkHjl9jN8dGUGMT6aWlUyBF8MxzXBoL19rgQ1q9UUjf7hva8HgvdCrNY0wMPlzLkogtaUQk
cXlhYspW4ZhE7nVBpfKzh9xTDcXeVIa8WSi+rtEeyr9qpKGK8FRFuaJOWxcGWvWF70hF2salnWFI
amyYaigs39RlWp9b8DSN15L5AiiL0NApsC5xy6XNp7f8XgL3Sfsed8Qm5VvVdNA8pM5uVx5rNXuS
9Ehk5QkkboUs4TcHBliuj3tCp48IC+spWwtokifGzuQd8SSCw0SpatLV57CDR424nPgx3zLdNe9a
AZl48tYqpEPGYb5NDl8fM5EQVGNNxQ2VB6BBOEaxzPp7XSkEAD9GmHTe8ygexrHOArzozEsYz1tM
JdcXFxbH/qLwxs8y7Sh3wNIvtDYxzhrhyFdQHBjGzn0ml0wFpWj4/WRcd0TbicuEP9eP0YCZXZYi
aFg0bcqTHF2j6nsPRTqO7djKY686Df1JgBdGFxpaTKK02H5cUtMEPLz2o5Q+kfijlg0MZsUr6qDn
wIwqXVqohMJrU9j8ormV/FiLA1txOgZ1gkaJepOEWjbQkUZOS5oEYxeRrL7Wum6RTFLU5QyGPCCc
Q9vmOX4Z7COEEnDiOP1Pr/IiWuTw39qT5nMtGBGbJ1DMIEq6PvunV8kI27WF/3RDJkA6603Qbu9F
ZKOma2MZagp+EqbfDtNrGj6Nk8xYsdtyzTXOpkNiNzp3DtWFbHp0UJjiFOcIgBrspVFpzMK/zeqt
W0DUmAxWeTzk1HmXjNUBQ8AuhViTbC62BpvF9H5zTWyRZdzpg8IppWsPzjn46RPhfMhnIsVXINDN
Gj+De+vbraEQEKHYJ69Qv+YH18VXI1NxtxHcfWkLlptKQn3wmV8gAtPnVDE0B1KpLLBiA4I5sg+Y
ljwskVdKOeecxID/AlZeK4mFWy8d5jinoM8jnEc/foBu1vDo6yQAJrV1+nSACMUMMadKujJblRib
+VOtCREdjHsCsz7rHvTQwgyDFUtdU1J/oYDySo7EcglvyPqPBny20X9DTllEBM6FAGRhxKYhI1w+
rktwykaISwVKC/Z4ti2DjCr7UklG7Cu3ChU5uTeUirRQhMmhhOL3C4fBSBqOZQUR9aOmB5PSxAYR
xVZA0QfQbqGgs+syvYnZP+wWB60MAPHnVNUXnjlVtJawxGzX99L9To7vcA8QfUtTk4MZ3JFXRjKh
61JgU9I2eW7+HGWirSkZuJlYdXGcdL1EMh99ANZWy4kAWovkAhMXc2DMHFExU84YE/XYwAPy/QJS
e1c5OYXvSI90ZDouFEWbm5z+T7S3F+2xJR3eQEOegor7yZhxhRV5yVyLeCbrBqAt3yaDWVCh1P2x
ndaq9E6amwx1UNW6+ruZLIqCGJWVkEs7g8NLm0jlEWY3UeRRgfYyTuJdp5eFg6QS0If3TeLGehLs
PRAtqRF8BDsRF6vFiRZxBWKcf5LLxdywrvIXFLV3dSqFDP7HdqUDn5zGN8ErdZlql1RHlu7tXq1A
8a495vXyv/+N/WZZzEoLS202VYojLLe+3xSETDsUlgVYkO4PaV9N+hvmNbWNKN0UupHZ3hjHxmB3
fvbjjG9Yw6DE/rBU0HG/DpDXDyrCOgjmeRvMwrIf0vBkJdV664j5JbPxTODqJBvFxi+rZIfLUbO5
bIqPdlU9RyyV/0VGf/v2p49ZaeCaUchmDNp1JivSLzH55kPOTFB85/gZV2r1Hf6zU3zRNIrb9yhA
8L/ubc7GDTCidx+xyEXjVrl0RBiLuzKUhICyH/i1E0wsBPFAl9xrnNH1846SwMt+lQOpQcAsVMzu
Wk40qMBzpDCdRh7l4OZxSeLFejjARUln1TpeiwmdcNuDZvsYhttTx9UTiHaBVx9HrqLqbS++bvCv
7n3/JGyTA/1T/C6jJ9mtlvUPAxS3s2a+jIkdXWhVT4pmKSdG71DDeue3aYHszPQxZJJGmzNDH7jd
P1ShL+Hs783uh04U0Jm6CyIoe2vd3uq+T4qyie+h9OAeGPGnDmzL09gAyyPsv1UlkQjpyFU3H3y8
+9KgApu/9sbmqGm60172xieU7H1ZBSVwfw4kO5b6S2y7rqEh7BIm/ndMBr3Kc2210T9Im4zY24nZ
J1Zn9XagdM1i8wLbXRmfO+NFOTVgFjzYbKJSyGADNidQP/A7j3H4xNabdy9+xPPvmV2z5k1/E3Kw
t6vc3s+ZeIp+G9CVP7dyigl7mrsg+1d469mzc1OcvgNPE2Rfi9yKGvUYXivDUNn7optiwCCu6j0Q
pXzz9X2g9jBpNgD7bNzYoFduS5XNATxx4U20JHbp39rG6/7M1rhOQmd7UEimYoARCAGOJ6PJ0IgG
2OYhREOi6Gb44h5g/Tc5gJpo1AUsXIUdp5GCLYczz7yeMUyhH/mXXkR2XuCPm+onB91NTI7qC2iD
RRjcOF0P1C81kzRVq3apE743DDEmtVvDrMZJkr0R7TfCZtwmejtwYjxN2JD8DuUYWbcKOZwbnsFn
Ov/6rAP2YwW9yjdSfjz9XJA87u17FHada3wzNdVK/lamZJGTwDIlqNpgP9b7WgsYMG5YwOsQqUMq
tRzBRFh2N+ttJHVpqGcT8LVUq6Xcs/Egk1LxtY1liLw6cMvXHfs+I8Uc1j6iQrTeLWY6RGJSqTfZ
LLBVB6XtYgzJDFwQJUcTSsaqdzfKZqW7K0JXuyxa6kWkGUT/cWhlkebMQtvmArCZWiKJIUcN35HG
x7wEHb606DvZWGXV6tNib0HwceY38J/hwbxEFdH5JK2Fic08yftJa7F1dcU1SHJQImFrbgPw47Ne
j1Zmu7W9DTZ9Iv26UAfN5cjqmu/XUFFHeLxvPaioiIdQMMDOy5qNm73pxqNFJxI4yh+WL76GJDvy
Ew+fcpzRlUwGvcp1ni+aIyiVY4rqwaIAZv8o3GTBVOwz3Tx1p4Vlz9aiYs8Ja7j9G3jQAyVdYmIO
7aOJydt3XehYW0qkHlt6D5PgcCiTzWAgmOq7GORpFAgRBHDgcgnyRNVxZsBeMkzcyV4gaOY8hFiV
cYwepjyrF0eViHt9j+b59fnUVLvpuLBYKIXOQbPBKQG9zg0RyatJ43E82E4NUZd6+yqVfA4RNbad
DaNoruOQxJzpJqMpirBUm4LnhRq3kVBLIJfPBkC3sfVAtmgZxHTWTw9OzZJAOBDzKKSPlRFlwHjV
/Ea93afaB7UTzd19QBueI6jt0JJ1pxXvpE9Kl7OBrybMAmxfUYmuHI3j6huO54ex5R+saOLe8YYc
zN6ZQJlDWDNbXG16lge7BzEAWj44IR30aN+lOctl/3q9EPA2rCzUTHEzYf2L4FCuwzX1DC68yOJ7
mB0g2EVQSQLihK9SgSMe2W0zBGUqIXRkSAru1FlD1dJHElAqESaJoVaFVqHLaC4WiDPCmcwxJpHM
HGCt6DBv3qy5ogoqAJKjU2NwdmBHH35snJbRd/e6oLXVgYY9IUYuOAO2zNJIgACwLBkqTGf+5/9C
BIFQ46SP3A+t6OED3M8dl78k93XYZbrjKJvNoiaU0xFrfKWLEJsUpLiDitC8KykLR1BeqU+/IAIZ
Law54EZJ+ZHX/cfWTLW7JqYCAy/gWHtxNoYB6opdNdOwhQm6ORE+n8SAo9XtofLVxnfQiYTELCr2
AltGIrA4SSUOyMQIbwjlpk2/ZGhfxy1xAcakOcHZCmKITKu7XlBiVQJk580m2s8uVMwE0b3k8E2y
tcBt9BdACPMCyDvMiG0jqkg0HKGOQBjAvWLjcAMQVlXS82R4QhIlcKp7OIZsvuNZQ5u2waaSNKXy
hVJQOoxyY9Vr8SPkLpj/mtP12iJrf5pZCHsEpe7dF6D2C80SCHO0J1k3y1ouHtj3VI4NCiR72AF2
1QiGDB9CVP8a8ixF/oEeknddOfUjyBC2sAYgVh+Y9U9rANh/m+LYK+yeWlujxg1pBOptmIKRLXaz
7cXK0n+BSuIrSnZU00ThF967lRTplo4V/X0SwRTqX+fGG9ZimcM+JF/q1SDgd9GabKoji1Xhrw+6
LfvxMQPnS689vBaNYaVBWlCSaI/H02yqVtyZqG5THWtsn7SAlmPPDmDGg32U0lR5XDsSq/+VNI/t
TgnKzzvEZBiZhnRTfKm+9/2xIViaqLfjAJfWqAzb83HfYoSGxnnPqRYZLCQOyyjfaoU83mUohFGm
wy4t0tMGi1sez274dtb6USwx49S901AAJzMw+F+0tB0DxpPVNfYFbV+Q0KUXjXXgweVvr//pNRs6
tL5Ifc4VJBO2kTXXWV2fDktie+Bf935b+zF58bUlq2LdT1xfPDBORz0c6lUq9H3+UX9Ki9KGG5Jd
x2U7iZFtZNyCYNKH0sPw3Zzt752+pigqa4ruKwd3joeQYPnuDyUX1F1AA7/n2fELT2dA+85KSJGd
KrBG0TAsTaPhakAA1FCQYPmjt5UAyxSLVkxoDAcTG/t0n+QbH7ljMzu2GF7/kBq8vdgDXV0HRy9y
3j15iteUDaf4Co7SwpQngENsf0EWS7g/8OsuSHMaB+kIXQxAQuN6i+NgTNWxHA3r3ajTWPyKR1El
IP44oxZbzf15slAaT0F9egNELUWteGWyCjQXA+J1fgqDAaoIGW+oZOR63XyAjr8YIoW+KZVFkoj5
EyrBGIFZbJhyqSXmRMPy42UvJk8xU9mhd9QGiCrc9PLC2l3nUCwUl+XRX8HEHERdAVKFhzBbVe04
Z+oUZOb8b+CFSYCYRtgUXzuI0R2pdibrazevVpY3rr+avYe2a5+wdMnkIqK5fi7VjHgK65zilEj7
EW+WrQoobitiF2CR0OYDz2DbRy5BUdXGldWO8YRcCEz6dNA3pIsYEMRr/v8vuG6Oz2rCmWFWO6KP
HRy0rIe4qYULnhsUvHJ/2beNUK2JNndk4FTf1j8i3Ja4KimY+vY259U/5G13Uc3aBGzDVbEk3JLl
ZYsKknhlY2yZcPTN1OzaJl24rwqpljn7PFj/b7mDK/gGc/of32YEpZZpFClOgRa5wbkY/0Ecv1Hm
Ac6OMvbRLRM94VkVMfgYcG1Ml+Q7FZnHkJ3MFDJU+B21hNxUG4KF0btQhaaxXzpYCEIw+BZQbaL7
aMrITBobg7R3NK/tsN+YMImecK+aKdqpu55YBdwTROrL1qR8wZKQO74/8FE/+bG1zBJrhnNCIOzQ
6V5SDE/daQ/2rrflCgfhinhd+jp1lXxbzFaPaPLn+V1bwAmI0Vlct6rzAEf7SoqsC5KL+Kqcso3l
Nf9MlB8kZ+NFnrK0p/T3To9tyB9kfU9z7HVAIVpdUUQXM5Ph/4NODqsbTbpBjNjhVkgqvG34zlqa
rhqLIsVWsJYBlbKgAV5J2GsQHQFr+pEVC5yGkCEUBT5J9YTHR4uYnvj4xSyZmh0Z7MyAAh/ANrmr
gw6pH/SnZMgj7Zxtoof5O54bZOyiQVXs9SjOdoKK+q/DeoajrsizNstNPuzoKPUr2RsFt9fZUWOZ
vlqpIjv0d3W/wfTvszSNAQsNjEVwtvbLoF5C0F5SGwqQrwjoK5WTFk0spZmPVZ4RNj5UDZPJL2De
rQXtWy795EHoC4irSKdUnbEpJlD0khMFkxmp+sVFouL6VbMm+sfJ1bjB877vC8TME4GndYFw/58d
GTb0Mp4gTQk0PgJ8ore01TvP/GRocGKXJHJSwPezI7NSggijPtHNWXzL60FN0EbggYYnUBEP1dmy
tAu0RulKywEuTOO/zBUQEC53HF7cYCcvpZ81QIYQ02cbzNvTBldYNsWnaj8DIBz1Y2sfviuC6Nfg
ysQyXKJTsz45CMoqW30Mh1QmpNcbTs8L81QgmF4bEBh/56+hp0+LV8cfNT+ZpJLYBBQ1DyyraAcQ
3uw0tOsuvSnLaUzqARNuQ48YHxvBcAjT1E1SKelboIP4zd87AO2z9XNuf0EFjO3y8bTEe6xj81Rt
hRWuf9PNho8+oLD3XQ/XwBH7of3jRG/erJBEExDeYM8Idt+zfXwOoMBVFe6gfX2AQsADDWjHVRBy
QJDmrdEA/wNi87CNeSnX+T7X2kGlE4W7BQFGtgaFyzFpTQs5oKPqDJ6of0KCkdPm6LlQpfJ/tQXk
YquczWd1CK6lnLdFUbnRAZXc6HvpCAeF6XuAxW+/GkaK1Vc6jcQNWsS9+P9udh3j8JtTW/XB/CUq
S/YucnruqXE0KJjWqdIiSv1UEoE+Tpxrza2ajof9WrgGpnn083SlkVuK98OscbqRweKECpNVRxxD
Edv3IRi7KOrLu2+d6V6lyA42zcLNZu04f/wg9WQ1hlH2vl6Ut25kLcKVIg2IwEoGvPG1AFKBeBtV
0Ph3fQqJMyqzumPcQ4fvvafqpd411nRkRbVGgodyCaKUTIHv3g0tfgYF3WUKPITnEDVgTFxvY2GW
MRt/Z4wAkEtWk5HW4tbogU4zvZmAKpzWC5KIcL3J7zrl09dQqvjiQXFtxolzaPqzCvmHg8HOYV7k
rbiVQKL3dMLpcL8Qeb0KnZpWDeSXwFekxC3vldsv9+ryaHk1ups0MZ5wQTMnkTgUYKmHhJuXYxM/
XnIU5UTQpESdectuSj7HS0Weha8Qki2tBhMeEiecK/x3tQvlertCsJtKiCCFRWfM3WEe4cLpXK7V
ojpoo2EKPlT8ChgURQafylNzL29dS50ZXAOG+1HfDkHZ5fwDfmYAmKfLx+6D1hG7Jk9pmT1+3cqw
sZn7GzCLTYGamudxWigwsCqTP8koj/PvJgTHC8s3lheIWvi92a4PQnIvaKVVcPBWv61eJ4Bub9yv
tKPhS9KYyQNKIsIiDCTN86ZFO9E+PLq1uAxzHEChno+QlSB/ti8xecFXtF0wWK9GJWuCYic71aou
vLWjb+EHxKjK1hvX3jaRPtCgwoyqxu17snsuX6Egzvt6HwN1+toS3VUfzKY/HpKnGkfEWeZimvUj
DSzWyj90lc5fXvoUZeaYSGI+C1CPLnWmlxfayhxkgC2IKmJSqcEOim+j+vZsM3ATIpIJA/b2NoOE
uvi8ze3oQSmB4YLfk9TzLpeBOhZc3oF+IPDslvc8wN2sk+tJHeUGyYNLiuw+0z6xB9mYUDfcdeL8
MsOlt/2XnapxbCvIvavbaWK15i5TvxDB6dMY07iOYKxqzevOjQkMCxIPJxgdp8CsV4CaBJgIHdoz
OmpwXMfoeB5/P3ZFQ9uOiZfe8GqgVKHqQYL2k6Yu10XLPdvy4EDSd6K0w6iKPh2w7W4n7b6t7mKc
oASP0oqk0DFPE8L5gx4CDCdym8xaH7E5bYwAQo17jEOxi4biK+9tzSw8iLczPsGmH4rVy0F7U4jp
7PhJQWynVXv7c8UpVBkCqLPytAyXS0nIt/YCHzvV/lVzt3VECGbKLcNwtgMbrxBvw0ElHu6gYWk7
qpn9R5tcxTO6qatjBIy9PBDfO/smFqoLOlWRbdRrXlKQ5NuI3BrrHmsYUQReuqRKFSoA77zHFPVU
RQQ6ttJVLEgoAR33qxPVBeYYE9OHKu5IFpL83TfDo2EfLd3hVCxSUnHFA/Gx/B0uxqoCeCsnPVcY
3DHeoK5Er9kU8nKhHVEuYCJFX32kwrYjJdnlD958d2pGEDyF4nmerON5/L1ZSwzXr1A/Rk4PSmPr
aar8S6SV8k9tPxYnaHmggLSS17FnEVsYOvMPdX1eBX+anEkknMnPIlniWjVMCP4P6hzYlgJrBgn3
Rb6icPNX63BytUxt3sOzWkCQ0yhiy9QMIvvRPgJfzbS5Bbz0I8ZUqSXh16g6OaTsVsIMrv8BcB+X
HAF66lSf3mIF+foUfHV56jGtjBZt9+MnHwLNoUn+maaH+k3fUr+/khB62OXpbB5sJUHtFJiDn/ku
WAUyaG6xEglimxHYv6Crog4gJx51kSSzp4dsfJfBS15xACbGwk+OJr7oQJZDNRKy/WrRi6dDut6d
wXjSc6svWRA7bfwX/hXamEU3axb7aAMvd2OxD3JiewanD/5h9H9EA4XX9//JnqN6Kbo7MECHLo7+
Drf1wK1oZ6m249ssa27Oq6sf7/AvbEQAAvbo6kPlFvKwKlpBlnN52Yp96xJuuwB+mRH3wvnHOQLs
CUdZWJSJzlcqLIK6SYk5+EmeSWSGpm6O03xk83tAKHv6MOZ2NBnV1dcIQj+T865293AtFR/zn42+
ENA6Ftv2Lb2XHTi7NRp4RKurx+GcfMxQjUCOOFLjAL5Xx/1WkFp6emI0uZpYvd+KD14FiEG01vpf
pK8A9rpy4ET7uqHavmEqGeg/fhgNXPUk2SUIrD4vub6TjOBY6y9UOB8a5U7ru+c16k5e3qShWn2i
JRuazhrBgKI+pZu4CrNqI2UzjP12ioIzq16wx+P/aC2nngw1V15riH+QWoBySrz7KAf/omXl63hV
lJvCyvn7O0AYFs6CRcFG2REotY1p/TumS+Vl/+/AemiGOkPQ+d3do8oKXoQY1zjHRozx85klm/EK
Y+ung02MMW8Z2mUBUiwTW7G9+o8j/hcnnUwaUQFiQHWvPDhYbcGHIYOEnu06pBaOAuIdPQW1XbpG
OdSXOJ7Nr0CROjl8gAgYfpjskVbyLkEjDMApC+CZHkygi0P5/fscwXAzEUT6Ic3QI/Sn+ftW+MD2
vMr10XauCdEHL0UWVssLEU+lBkuwT6vAf8LEykuw2NOfoXSlUPTSZNBVFah0UKr3Dykoh7SuZuUa
kKgYbEGixVVllHJoqzfN0RfI37xQghND50MaZQQZTV9CAc6B3JZfwaKIOO6BO6SHECbr7TQ4KIaM
h9IUyovqSCh3vq2+TtWwiZwIzs1bXwE0YCAVepgGmeyTmbZ232QV4wqTbmDvtkR1kVO5oKGJyQOC
1JXklG7DHviMHX83PBtwvHP4RXuDEGdHrZeXIXythghRyVZNOeXUOH8mvNuN1fEc5wW9Ii7+oP7U
B/QpbvmTfUlHFLu4vTiKf2AaB6Q/sliogHR20/URGrTJg8mbazVXNZsdhKSe5H0W4KJ2Tkfhex/k
BF1qnu88UMhD+Xm/JO2omlRBVlj21gB2eZGz2QEz3P7HeR+ZTGzFRLj4Ok486z02wYi72fq4HUlb
ZCG2gWvWkACBHqKhhxJGwoJKqPbUwOrFEBPqEEOvdgS2fG0lK1w0dSpCksa/bIeagGggfXGilyw6
ndKX1VlEnflOpM0+bFRzxgbdEdZv84NmB7nm5+YY6QZf3QalBANS62fEOtIdL0D2L1ZgyTNZYMSV
BGVHntq/jcdRz9LSsaxmXFkyKXaGWtt/gZg1FbAyxdSqRGVeKaUJq1BKjHTDpi2IuhGRLEorBQ+e
HUQ20kWG436TVwQBKUiUgMy+3EXipZUV/lraTw+em1dOqaIF+HwpKXbFT4h5laCrwXeNM0OqOed4
f4yMwbsvaTc45hlhnpqgfZy/ScwDD44gpqM3TnlZlziNVGiHxOjvFgVl1P7wjQGIsaOnUSEoEqTS
KrLFWU8BqX6r0irnK0xDnsfVxn5tmMjuS2N/rcRNY/Xn+Y6lL4Tf4XlGG0Ieu12EsbJZPtuw9jA8
86OYFn2EpFf3Dj2BDZsrPEG4Rxy5R4QcrddgS7vWYb9nC4l77UIylg/l++gEUq2b/JN17FQDOi5q
JZm/6I1cPHXRtoVe/y3U5AhVS/ZG0ZhzDalIMTSz0otqmFRYds25akvgue1M6TnhJhll6Q5EhP/Q
c592R9tIBhhe6V0oUbK2oHHMVX4BDXD0teGYqJ3s4tM53GYvIPlDvUk7IjlDctaabYP0SLtsTzT2
2xB6I1sjkJxUxXsLKc6Dul462BmaKnWu2QnEFi6NDK0s8ummbYTvBl01EGuk6WLmSxY61d0zZ/Ga
yeCyXCLIAXPL9a6NVTDNBzAlhY3FueBXp3uZTuPPG4egYWIhkgVIpKpVVmtz0DpIcnjpW2v6vRmi
HU1KEBlZWvjVk7/xVMHN5L7FIHnWJpo0kCkY1GLXOmDAD58WDhEcHNuy/WLyQzOYMs20771v4Xqo
T2XYcTXi7myVuLRTJIMdy33iE8FNkIeaWrdkgsh0kTiZbM4CrsdnGU4GujahqpPu4gmMUIpTTLMt
d+8Jk3jStDOK42Q/bgW21w+KFeGvokt+UG8tDpdEoT5w63424d9T2lmvisP7nzXTCziWrHaD/5Rf
CtfLQXM3YzIMTF33O3FVR72oz4YV38lX1Yzc+vDA2Cp2Eq+DEe/CB99dHgaptDULCplGP3SiD2+q
2EKkELJtnjzZFKDaNz+nonNiQ+gCPJjghd3GjSf9dJw/oWiQKOuKa8Vtkb8BVas+g3n4VmgbDKj7
m2fuX+Atjqq3zV8Z6sJbnUgdErdGQNw3GLQX2TjRrEtpSS1McxtsNRp9ycVAUpxjC0NhmMtkeNZk
A3E0S1VPB80XnUEmXpaQt6KnXRZiaaB1WPlFNy0oPZhH6YoBho0OUG4dYDtleOiuR82K4sR+VY3z
dq8FeTBpfzTfSih0QHMP+fDFonEHgQWZe9HiMQJsT/vu91wWECPqICAYt39kgn94p8eMucEW2cTr
YPYCGrjuT+pUlBPw8PES6LEEA9Jc9B9Q5yRvDCYyBG9yIwn6CDDCWCMJ52ljGdKSYkO+53x0zPRg
v2CKzP1++Wl5lJwy/L8MhAwysON5p9RNgfBRkRMsM2aMSY0rwAlAEleG9NQLIGSli/vcKuQBvR1L
bi777b/micjqWiK2qQ3OrrOsruC8QYNDWVySVmPVhGUu5GGxzAM0nCknbEUNA6hV536RPFrMz5Do
YDw7zvSlC/HTbMlRBlM1q5x5aaXO/PRfUM/+oVVJ713W4KKcHsvLFAADeTPKJvI6q3my18lJrryg
zex11kiTh93fqj7t+n6bBLARntHCjD27MRkSDHGcgo238JjcKX+Df9+RWF0IdlasF/dncnU9uLpB
izxcnBX66crT4Qjyv14IZwfmXNKkujIvEbyUIC2T71/aZlIpyPuZecoSUCqE4n2NygY724YTUK2r
mYVa3Yyd64USRvhexALaTw5Q/At9qyU2sTyw5c7JEmU1rjYt5M1OmJMPETZ6nDG1aiCrVv8Rttcm
r4uQi2he1M9uecIeWPXjBk63rAj3Ea7uPVFpJY3z5ZOCQCQfOdiByEFnTjfKFH6IiGEW/JB5U1he
j3wVdncOiW2+UoXoEYQGevsqRGvaZTwaExDHUwv5+HTO1gQ6WZ8b0ZOluXHQ3PiuIWn0XUiWHjj6
1DxFKnlgoTwJ1IAo4hoEwqOnzkuTB9HmfEPF8vuW8g4Qu9633LChWt8ATwnrFlWAkGDfCxJwbjlv
kOD46ucDaLHa9TZpVuUPYMKraqutw5d5FVp3w6I5SSrUHxznktDIXdD2dBdo0qsQmiPlsEJqBFeF
KCgjScjuTD9KEJRIwV1jDNoEPElwsgU6a+lngIWcIpDCSjjUKBcpiqz/xIkIlqvprZhPP4rlADBH
5M0Kkz3j8yPbwD21dzqdg4vpoQ0oNG70aZGzkRjfjBaDnHwiEMFjjOVDEEHZDLHkVjPCluaieKEQ
RSXx6lmHRYdiFnfHRpA9J2K3UsSTqpapyu3xync4UcTcklDo71f/xyYRLG1Aig8jFlp2CLw9jJdk
R+DgOtaYr8YH7dD+b52gstE+XyO/3Rq4Dr15YqDEP/jaG52YfvY9qRnbLTHssenTDgrIDx8ekyTL
AnFlGk2bfqIsSgnHDl4MGNhcFjffhAdvYcEFekzsfP+7gR1EwaJNMVMHozzwqZaieGItygwsTE+3
GA9rV7pVUge9/Qa/uJ+/3atBX8wXREKqn/HKUWBVYY2LSrh/zBo/mlX+PTm/ylzzBFaKmjc7k9T7
y0C6KZRhr1IZM/Mjdc2EYYRYgcOIq2AsinBvGSkSwKhvHXWm0Qf6SmL0sF41hdLAxC56EVa3ZDA6
VvRBBZb0HlSuo5ZgxPrgbtzQYc+EHlP1NdlRtj5l5555JzLy0HAm8G5WicilgXzisNZP2+nIova/
9btRiyTaEB6QU8aJxi8bb6qR1oxbi2elRNgRuvCQF53ieaf8JUQh4hMTCTESOduA8CakaAI/Tini
jcC9fkoOFja5Z+EoT3HWGcgddb05VURrMgWq27TJPCMYulAxi8OI9ZIboxk/jGJNyYp+5XL/9GMN
sXjJM/DqmVSxmcurphJeZ7kI8ebJdHc26SYot9dmZWRF3XqxbL+KBrpNnrMYlOE3iX3s+zOKaYCJ
DVVLCLQYKccxYaiWR+tXuxBrPV3YMLNeIWXfBNclbHetKDdXaLb2CzDuA/tRiEeVlPswiluQsUlc
J1EGVwswgsTsrlnTjNMp9HPqn2z6RBfBGUTzPUtpwr6qpAUn3uuIKD1PlIyY6K+x3yVKzOpX4O+r
GvACpn/ri5EBRQwSUeuL3pEhrG0UBZOW+v6AnDfM9dR4IgEM+TPcF0Xyg1C6k1rJkW3VeLPEqezN
rOiz93Mc+WEsAIWHJRTgTlSdK+V7D3qPA9PE385m/gOB2iMErtRRioXBhlRPyLDwh5kAtMfdq3IB
PqVKXv1brDce66jWjnY/E0mkqfn7bTCT48tf+IKnNG3bnYLNdLJdjI7HMD29zTcrb4W1KEWkcB72
F12D61OsPzs92R3cjl7oPR4UuqQQRxGteyNFayZrWgeiBiLg4kD0H7GPE4hvPYCIkbx19yHYuGjT
8c0T7vX+Q3fWlRHbs6WIrw2rMmUGcST4P+9lZ2fmy/QG7oFw78JLi78HasIfg742i1NWAN26eQXe
hL8EZgepmL1441Gvx9V+Y6JBCgTrMjrrYKLAop39YdGRD2qtNHdUoMCNL7N/gQV6sEdmXjdEAJZP
zJazHVi19148MIGGgJYrG/cNkuqIL2nKCEilRscn8L8hhMqiaeU6+JnCXi8CtYTPvO4prVsOM/hq
FVBXBpy75kohJo477dJQCV6u/XOkrF3ICtKs2nto7/WdJrnt2ZXNFFJwXtzleK8kw30rc7YnWVWY
1Sq2dwLx6sQNQCB0sq5/crfN0/M7I8znONpwbcJ91IqeBzTw/VI797ZQkLKzb3zARHFrQF7dS85X
uU4XVmTDBKwO5hdAi8XOFdih0Q/y1M1dZuuj7gTgh/vsCxXF08DZ3HgFvV4TCHYhvxwSdpG+WKjq
gmtiu9b3ojKN0gBVSpcPsKeFXfbpXBaNZ9LjToeehnShwnmQz397gvE7WBCefKQ1wCjmQX7Ugnov
wHSHZjHgnQEBn8XmquLg+61G7+gEA7OJf8+4rocUaFtK/pW+UiokLcQqo+Gg0egDNylKgBVKKT/i
Ge724nBbC12ZfAXVKtwExPvCflDbJxT3pThUkIOY/eBGT5CZPyP/wOgsEXjLgsGyAX95X/7mMFhA
6EFv3IY7IlMgTmf8GNPYjx4IzE49tCJPbteSbRSoqxyTk14WecQxDw1dEyqYHO5lcfRV38nl0Rcm
DFe3epQILE/m+LxF+moJ2bsSVgAepxY5p8pa49ZZq/kqehu2WLb1tP0jrgRdm3yMKjPXAK4Yx0qT
mZh8NaiCOToLg/G6Pk4mrAxcZCEPGMIUfPg+Ti9PVaueZjLDltN5opDSf4D7O5mxUuzIc+WaTgR1
MJOsQXNWQjGBUesFggbO8QPkOTw/Gs0jAqPJwVwXNyWhoJrojDcPxkgAEIbpZVt3/MlJcsinJpKs
qowXKmqRqWJ1EMe5s0vgmImCzv5iLzshqrbeJcLfdQk3V0YlnIjY3lqSe4W7lKAa+vQPDZlJj44O
2Ub1exueNBiJBMbs7p5Fzoy/p92Yc/Rpb+j2GMBYvVxn4+0wjHbvnZsmtXQK9S95ZOVh6l2O/gSA
kIbOEpneo+Y86k8T2wlsHfp+X81XIkWh92IZGBnq11dHPkSGTuXA5nIcj+qNB2X5q6GJw5OBVyvv
/0c7Xkav9Z/InKKBW9H3eeIYAzcuqyg6BuOkupGZmJtCTfmoTHqWapAX+lSbiBnSUXwTZKweb5DZ
7oYYDSUOiqOSCDsSklb8kZOVQNBvUw7Zh11Nj9ZxUeGsB0Szh8pmk5/kyX/3EC2KS3xmRUb0EakF
OZGnUZ0ii1xHLdMND/q5IzpTzbhis4cARO1Ndt1EdwSuY0X+Mgjjo6/tDeFsPKnlaes8XDmRCLGa
v9nGumsNcVnWTAycYzM4iogRN4kpZ6EZlft7Lh9D2Gc+uLfAUyelVDsReiT1aWVDFqvHw9Q7lgEr
Bw6ly+IILJE+cdKARz1GV6vTcmDiQ6u+W52VhKQ1d0kteVwo20Oz1FSbfRlMDZfj8Kz1CvSGdRbT
nuDDiZnwZr2PHaX/bKRUfZgyUyblUMeCXu3kXydGU0d0h/dZWKmk2p8mi+b6oasHxv9tbSkyFWwB
v+ECWzL1S/hpZOcQeIClFg+REXF+tcPmo748J2rf6Z/w49VCcjsquGr29cOKdovAquACSW7jUatN
4+52xot3v8gxOaXesEW45YUf+q4f4A/chkIu2GI/zYDA8gwigNvPL7ZbXUJXd0g/fYujSZG3SQdk
yVKHHeumWNlOlj9fOaS1PV+55NuKE+o0ie+BS43eCvmdoulrLzg1JptesWjPXpyEmT6Bsy5m9pEX
IrYDqT31k6sbjn3GKcgKeiVdeCezmgqpBzEDs/uL+xU06FT5Q2RpUHlvBPqsEEIGQnZmbDzLtx9e
PVV6lTl9Wr4yWL46JogwUZpSnFad/iNoYR/yflZPc0Xea7u1GGZeYm940ZUO+Sn6dkXUoU1K8Nz3
AZdDTK+j5Eil6nGwQV+3/xhPw1OenPvLd7BqEl7TarqMe1Cc7GArMaXXfJ6XKn5gR+G2C8nI28Cr
nMqWJ/Tv2eioimj1F2OKDzeTI9vmh+3/7ECrwnwxGSgUV2WW5GczUWsoETqqLWDp/+w65y9h2zc7
uKX7ye/qdQAyNH12H6rvf4ojMiUyn+W8nTRtLnfTHi02CQVSut5QVGuFnzrFTcNGyYhbEhxRyKbl
DSd0K8HT+pV/kbXYVQWw9tk8F9oQpa5tgpbS3DVGxDbJTc27ptBMcW/dH5Sgs3bHTfZC9/hSZ8Ro
e1rkFPa0LJtKDAA5ckR6zB1Rq81SNQffN0zps18Ghrn1zqOMom4ojihpRSG9vwB/fxL3GtLJeDLy
728DxxWN60iPGjrU/TxD3W3jrFvOAtbeW8lEg1ZOJ69w2BWXh0GpEbwwQdsnTdo60hw1cqNI1mOc
CZGxoemfdKKHEeiJLJHPnJpCFVkJMqfvGGja3p1f5C8bAA+twzhTFYUlZTCSeR2Jilj4PoDABDVM
rbAwlGfKlSQxz0g9vlFvs8C8Qmz9AdGKRmxXLdMZTl7xTlZf9o5A46UmIuLAHot/4tKKEwz2k+gr
uvGOKXzyd2KeWp3rbsBZlN7xpbfD2FLAbiR9DPZ/u11Yg6faHYVsEMnAkj4tir3JgxtAEPfDo7dq
Lf/4dgHoSRcvHDnO1WJxL6QkAi7jDe9BC3LfOQQSp9OJ58TiAt6Gu624Jst5Q46803U/yjIG3yMy
rLmoYl9VYjJR/zWf4yOXQiSBxEIynNsOnXOaJpcjvThq3X7U8Q0YRFyBqUZn61XzJljaTJZVmjkS
VGvlAtlR7wt9gIqamawGa3CDNXnismgSR62+KmIe3fx9qVl6jV7mX27xZJA5Y6NlH+ohobuxtzDH
sVsg+UpABWW+5490xfW1varqAWUiT4Ilo/NXY+16Ipt2KOPAu+hxRlOTgzXinbSxBNU6d7dn9pNJ
NfCLLB2dQHzAdbemIEHTlcpMUP2MM4Z9rVPgWgRY3xRkE5U6nhFhJArUW5icE8QSkbM5tt4rmMzS
av0JjN2Jw9xdiaJ5RJqjovGcXBsjwmx6qGc8ompx3eulMYWclP6naC1ZPI9omyIsZSRnIHN4Jsn6
NuQo1jHuFxU30nUR8xc3AKwzBbSqSTKbLMXA7WJB4GQ99tPhKn1jLwhG2WO8OQqWr5t6G9mtKle1
q0dC6Bo18WChn8aCiNMCNc1yGbqn7DnO/PAdpjyrkEFULGEl89BxEjXlTGXyLIsKnOQVAUpA0dmP
nGQU03xvxQgR1kQ4Yi2iDoUSRAbX+shsH80OIbB2RgoaIQEmOgDiu0E4l6ipK4HyHrG9E5e270/G
byYqhZJVWtpcOwGyXlLQJg/zjOJ3R4ctv+ZeyrH4SxBmKP7GA0JUwtCIPeZPQTvcfPT0Qt20K5EA
qA5NJTh57OORIxpcTZ62SWSA2Yn4PszKrz1MzpVHAQ3BVUIs+Gwo4w9LIwEZcqFLkobHUjx6fY6H
IndBLtfxAhg6OnfLq2JZUH+SEuVx0Kmplwzy1rbHSCxfzq9//Y73POJosCssa8/BDYTD+I/HJKWK
AL5TpwtmKsGDGI4hAR3mxVGrPslEsNUPGWoxfLqWOvbjoanI11TgG0BKecLcG7L/FJiXkejSGcyF
NwIgjv7cjGIt9kzsYwmn7/tTc3CLIJa5hyXF3NXw/w9z3CgQwNC/QXiUrj6KkCRIfiVDkSbMkGU1
LBJudQlZ2LfMKeua3jVYbVVVAEbC53w1YyNZjOndiEr/ttxf2ffFgGZfoFcS5xCucHqyUDZl+E29
YMFxmySM51ZZPKSvZC/6DZuvfZsnmxh9rBNPEDMGGbBvv2+vH5pSufL2CA3zcR2v/kQmPfydAc3I
moEcFgHcoOR8qxphd0ZvdWaeZGCXlKxFR1VBDdDvKlrI5VAObG/v3w5av28xhMSehm+NfdRbsXsh
sEAHOWjglDph5eSBuRYpHHwpkEQeq9Qk+qZTj8wtYaohI2DLMo5empvbXimTei5qWFHH6WWE/AJf
g3lpgi2XrVTfe72CLLiMroPdo0HM5topbvjguiyFYi6juO7JNZrLiTHrPlqRPP8Yzxoy09ziAn1w
OvSlFTEr9V3PtUWH6T2e58bLDelRkBRQSK2az5husujx+omQpCdCDR2MNIhZjyE3ZC2UXFWKjwVQ
5sZ3fMDDF3GU7zmeHhxl0cuTf7bh2cUh1JLn6HGQDjcPQjtHCZTswH9PJ0Kj0pb8Zk87MAQCb/Kl
HxSm8RWgl2pe5E/qwnHtdx+VzM4ckumz3vwnCxPAGKkajPJBIdj8VLi+yG3DQ6d0Q64OfSNit7Es
RbOvaXuAQrYgZzFZ362UURBPNIuHhf4C5YI1Y0Kudo+mH1xX6m845mr+wyxybC60DHrw59a0Ja5y
TB+daz5z5s/s1fp47mt+KxKVVBLhr1YgfmZVtwrqnKbeuJJym5hduliGKX414r//KR9qJyZkumyr
5Z8FlTBWOWZ3gSyMeocQ3+Vbefi3yrE22fB08q7hSpQCLsR/xFDQxbUasTG7ZE9lILDdJTeEmzAl
vwscSWh/jd2ssnjAzbCUMFoVbqFlLdHxOyoyplBJKLIq5B3AnI+sLWpcTDtAKYJ7nJFsioCOunZ9
Xa424CfJeGmGjq5kio6IIHecbHT0TFHP02ZtnnSMiSm1b5MGl+qNI6NZmd8hr/2YqyEtybkcEVzy
rhXwg9OC/oToxbZ+O9GyJhQf5XYju4YGTIcWw63Jm3ZGD/D+ajyOZdaCj6KYW2BGZJxoP5SogMQx
C/VseiDQi/e04KWC9ZjsNJ9VtE3HGi5og7xJMK911LJA96uOODf7UtFRZF7mUTUMETIPACFT//OK
rwUVBGk4nBaEGEAjmC5DgDiT9QpOIwasvlnyDajdTPdOrssYn5NAQqpzYQvK0ic12Ey9HX2dpM3M
3mQIBUTnQVEzzDzXCNqR9tJ2kev0ThAZEQuXCv9YYdEqF1fPGdDbIlLTvSg46jTqqBSfSzM6osyg
xMdCB6wErDDPmY9yY4gmtTACWNZsv2HqBWuZi6wApNUMz5LAaeqzYjzNtcfZaVJz/kbmZHWntqtO
LoK76uQZNFCIFerpVxo4jjAPOlTfJO3P5fJKxu4W9GV+yS/0iW60y1+AiNA/7hhL9L6NiYQk5GS4
rkSQVldJCmZ+EI4W7IwG11sgG6eOdYLhpND/aCkMNDDuiuu32zOq/nlpqGxa6vy5gi23iERautmH
k4tUY7BiUtknd0ixYsNVqU1YtW8a144kxgxB+Wm/hN3GDRi9cGAXy7ycPG5IbCnmOBTNIWkNo/s2
EFJJHDuhpk2qAquRhLfM0UnR2BrwwVHQRIs+ppE51BRKSvSpxP4BUNS3uC38k0x7jIk1JpVti0XE
oki/gUilhM2BDJGFsIu/J1bbd9Dz5tBnUpE/nxybA5jhelUo1lVstY7OIXlsWfHqjc6dK+tNoo8F
tDJLp0ecjHLFr3ZZuT+CuOqsy7UwjkhbX0X/pGqE+c6dizOBY8bzxQZHdYxpBCao8BtIppjBxfda
KVFw2O49dbVs0Pf0Ifos/HauQ/FSw4yN9TfkLyZhG336ygzy+9mad5cRV/YaqkaL7NNrMVfGie+K
Mx4DUKkCl93KjvFSr58DXs3zZjoIxbt+56uVe2m9c1CraBYDnmlKBo1zcy15FvhcKmgPM2pzwZz2
aNiGUbQGxwXLGvCmDLdeVy1SCbZmtWmNBJkk6yEw+bK1+iF10vLgd6PmoBN8sPD5jyig7cawObqg
5vTJd7AukmW5kRZ4dOj8nDnvidjtFPZ56bN3fY5F1hYGvEU1OxwLLUGDjGfr3yGlJRuBPV9+uERw
EWvB5FdUTXVpJQaKY6CKf+M9RbpGcmbcWx+zBjqBDQlJdRgFsfcindCoDp7cCXWlRXdT1CRxuoEW
cHPE9x7XmTsYgQvCNtgdPShsmHUaMuT2V48ZpNR3ONWkH9bvYaeOoLBqTalVcnfzRfNhVG1i8z/M
G8rAP9DFmiIfuaHL0QDFVV9kZXG2iBclkUFZDOdpsX1ofOip1uZUjMcbWCWOS4UxZsn7fbbYspXU
+WXOHUGI4Z0F+GBvH+X4wc8VFONYQAbggzx5qR20wjBLdCWPejO2/Rb0XNYfhrkGVU2EWv5gqibw
U3sW6X2X3G9gpQrz1LpjAavy5BUpo6ZHoOsl/KAWTsStTwQB+5iRh/xnNVUyzSvjTniq2q/s4NfX
/37Ok4/E+vKh2I5cH9PXu8jubYDzq4ihRm/SgjV3mcTF3FsKbCEtBEKtafpnKAMmm1k1YF/L+7CL
KvjziyRhcO6CeG+Am1Y89YZ8SOtcqjPEb3X951mw//zs7wJKa3jewvE+n3HzSRU/7vdNt2VwffYh
xSFID3gAF29I1KCupXh0a2rpXqUixnzeTXBxJg4zsCnf6BcYT2THQI3dNbbEckkLP1zGd15MqgVh
TsDDB5NdQwgm0QApTJIR+WTA0+74o8Ico8TLm5iq0QKN09mwJjHXOUvAAXV93+SATPrHlGUYLwh4
CpgEaN2bs2gp2RftVasz3vtF3CpufmcduxAHZXgcrSA7i1RW3OB2s/MH9yljYP1izQicj8dJQ/2L
wZkrtrc7t/1swGM0gC/Sub12RXKOfnfxSmBvraFu5jT4v90OHnCKli8b5Hei42CyMKxtR/4SIuAI
LPds6Aioo8wZEhu5iUVQD6luWQv2hvJ8nUfsyAFVPZcfWZ/fxWkc9/y6Ieiz664UN04LfXCTbV9H
3ZQMufvFUN5HkA+TKlQ1yBP5FoFZwZc8Nqy/f7+/6rZjMyCFLea98/tdkszKOCMCFasVhYRbAyb8
2MpOsQ/CVGNZ9G/1pVugEN4dq0NfFkPZaJR4QM8u/MoGOJGDJIvoOoVLx83hWga3LeVNGCPZwg40
aLdPabAcycWsP5nTfEjf6StKh03dLE8JRCcS4E5yIW4kRZECdDjKOxuKvXc4zl+L6K5DHD7+romE
rvIqNKoz/kKGUBaFXhlZkW3/hFV5FVrHe0K0TDJhf8FyDkuVK59yvkQ9bdcFQUiIj4+tWmantAsq
jAMa2DOhyAheHhc8G58Cfszaz21k+7d5rPPxi4WQFSafEf7R1GRcYVuaxeQUd/HKWflo7pg2itZg
tVeZTjuqzd0sRn3eXngRE0R7kQvMAodCSEF77VMQDbpy98Sruj1UlBteYyBOoZsxCMC2iFIjuYAG
Kba9H+E/QR79ODxsf1/EKJwYlWSG3yAvvRgjeS2shzUzxBwVmFi6kVWSD56eZMgj1oxpsmLiBbf4
s/1Is99/Fqk3R/Il6ieLXqRUzM37eCnfdfh9YTWTALPcYuXXR7TybY1h2lJYrPnKCTFxybkp5tBy
xbkh9tmsXRNSDmfbtWPzSFpuCPg3hkG/gApLDb5MCMEZAsPv6fxSCfj+JxgxiV633dxnKpdMiI2A
Bo8vjoT/ItZRk0cbZCygeDk0bYoy6nvFuNKfb+/PrImKGqAzvVrHJ6QAPyr12jJBXEVEEwgsJxxo
Fx3w8kkR4N/1X8mnpkdqV5DhCdhbiOB9M71h+g==
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
