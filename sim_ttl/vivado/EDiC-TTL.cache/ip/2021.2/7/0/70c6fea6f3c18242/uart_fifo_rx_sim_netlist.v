// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Fri Jan 14 17:49:18 2022
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
aWfEnAzGIx3/ZfTZVgLhwEqjkXH0ElwecAsBpw==
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
