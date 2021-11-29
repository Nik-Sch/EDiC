// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Nov 29 11:37:08 2021
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
qRYSqJCmXQJTYnSQu6jHxGxI9R15Zc+n5mEm/w==
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
