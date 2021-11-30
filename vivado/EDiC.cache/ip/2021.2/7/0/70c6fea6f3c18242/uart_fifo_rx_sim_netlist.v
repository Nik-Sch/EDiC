// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Nov 29 17:49:49 2021
// Host        : niklas-manj running 64-bit Manjaro Linux
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
shJxyzkUiBJ2JiTIDTS4LN2NWcN7Vbr3YxG51A==
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
