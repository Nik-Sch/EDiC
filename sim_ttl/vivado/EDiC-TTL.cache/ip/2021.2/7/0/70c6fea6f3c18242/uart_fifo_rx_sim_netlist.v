// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sun Jan  9 13:25:04 2022
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
vzgG6Y1s7BDBkwniCiponq0Qcqs2YTNLak6GNw==
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
