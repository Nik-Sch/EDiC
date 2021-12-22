// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Dec 13 23:22:04 2021
// Host        : niklasPC running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ uart_fifo_rx_sim_netlist.v
// Design      : uart_fifo_rx
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uart_fifo_rx,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1963" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1962" *) 
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
  (* C_RD_FREQ = "5" *) 
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
  (* C_WR_FREQ = "100" *) 
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
tgTa4d66vQnR3DXBS06I0tpHpFS4E4XCHAh1wg==
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
