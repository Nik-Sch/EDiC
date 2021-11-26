// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue Nov 23 22:33:09 2021
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
nKmz+gUYm9lB1WvYc+Row0QNFUDObJCqHz/DbQ==
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
