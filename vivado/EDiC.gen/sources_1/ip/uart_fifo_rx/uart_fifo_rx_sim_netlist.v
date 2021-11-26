// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue Nov 23 22:32:19 2021
// Host        : niklasPC running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/niklas/dev/EDiC/vivado/EDiC.gen/sources_1/ip/uart_fifo_rx/uart_fifo_rx_sim_netlist.v
// Design      : uart_fifo_rx
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uart_fifo_rx,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module uart_fifo_rx
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
  uart_fifo_rx_fifo_generator_v13_2_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53088)
`pragma protect data_block
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
gvn9+vJzHTJsLuM0VJn5E+SgvBHS
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
