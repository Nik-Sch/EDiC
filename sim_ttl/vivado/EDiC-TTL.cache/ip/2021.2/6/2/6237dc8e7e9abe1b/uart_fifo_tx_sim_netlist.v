// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Fri Jan 28 17:31:03 2022
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
MgnhRScyd1h0UaNrSADT6wovO3rW6ralL23B4g==
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
