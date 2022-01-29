// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Fri Jan 28 17:31:04 2022
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
MaIzLOfcq787U6j3ujxAhrQtWIe/ojgU4XSMkw==
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
