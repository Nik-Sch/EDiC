// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Fri Jan 14 17:49:18 2022
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
2+pF8M6TALpLe3TxWJoRH4XCZfrU/9vw+/82dQ==
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
