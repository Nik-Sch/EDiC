// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue Nov 23 22:32:19 2021
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
tul7oaxXEfK2lEy/iM7ro9WxjkvJ7Vv937pfzA==
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
