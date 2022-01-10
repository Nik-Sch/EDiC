// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sun Jan  9 13:25:04 2022
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
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
oX5ihXcWFhZMEijcSUSWiiBQ42odhQ5yRk3oiw==
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
