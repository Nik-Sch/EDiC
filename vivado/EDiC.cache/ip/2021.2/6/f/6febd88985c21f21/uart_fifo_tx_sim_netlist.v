// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Nov 29 17:51:18 2021
// Host        : niklas-manj running 64-bit Manjaro Linux
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
qJ+Qw3pZ2MxW01+jJLWruobmTmkkIn/IG8sPAg==
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
