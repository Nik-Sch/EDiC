// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Fri Jan 28 17:31:05 2022
// Host        : niklasPC running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/niklas/dev/EDiC/sim_ttl/vivado/EDiC-TTL.gen/sources_1/ip/uart_fifo_rx/uart_fifo_rx_sim_netlist.v
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
AsG/OnDvQo3deq7kmwNTtbuOBOFyr0ykatJKPQPYjgTAS5JsFj6GQkPh/zlGFOK0qmTNq765hP1W
rXtZAo6vh5BSjagT/+SNCCDr39IRy6kM/Q0QF5nhUBTQ6ooSGb5+7XY4QRclfgtiNAWcunAvqTE4
459pq3kShoju71lL5TkFnZvPhBpQMpuOf0PL9sDBT2Bfqx61kjsxCt2SQkUHWE+HBB6KHSiNLkGt
tVsvt/y5pzDtYIsYGKZoBUlgMqzf1ezYK5qMC5bQbgwv95FuBspuwpmrISlxr96KqLz36F4aF7DZ
zTPRIw7YVV4vy9pHj1Bl8OAev2HZ42ugsOCU1xotjwuxFOGkgh3CzxxHnveQ8NZJy3WB1O5MIeC+
0OgCg+EA5TzJlDhIB+Il/2jUbY8a3kRCxBcpQWLZPh8lO+Zqnw6AXHtVsJn1rkAaI6TWbU5FCQeJ
Wl0C8rnlDSYp2MN7yug/zxh20Xu3cLfMeuIP2oQJRCu07ztXU3G5kHeZ+kRqTHzTcAbXjSTYR2vS
roGfyPQc2Qv/ziNjGGukZiFQ1NUWlZ6eDtMCNraR1tSLlP8BOhVdUKvE1Dw4/hHkJ17Ggvw6cR1n
37icW57x5BLVv5esHYoQc+TlnMJJfjwtSejrDLEHmqyzOS2Fj1X7o11dfbzYretZojfPNHeC92Th
K4MLUkYsmZx0GRUOvzcWXvQhgxKo1XIbU23ZncexmI+ritBTZr5ASHJVzKUc93CAG2DS1sSS9qcd
cR2wVRkQwxDOHusgpq7/vEkshuhI27I13aRXmgs4td9ih0usfBGR8RgDtS6/Rh6AV6j7KfbMsznY
GTtjl/i2kjx37RYXgOcGAWOtF8rpi339JNs55jfbwLk6xvzy0jtgCKwqK2ZdcJDu8u3/8ElrObh+
mSY7yiFQtMpr+WrEeRcfDM6tmvPwlm1gKM6P0oFK/UQYYd9hfKLqbIAh27ySHKctkuYsyjD66ypZ
8N0IdDMQpP9x6QKjJsBpORBrrmrQJPXyFkT9baG98UGmsDFYYi6wqww8tio+Wpiy9tm7OrUqgbCQ
P76a38ZlFvzeeZ4FrbyB5suOD6h6EKq8z1IrSt1NnX494hg5YpSnDI5QQOl19BZpNkoXF0dGcQyI
b8ulaTdzvX+yERacBRqW9M+DslJSAmcimTK9C1mVQ6P7IwC2bauzmC6uLopxMweqTO3kPvygy/Xq
7xbEee93QDvnyUvYA5cMg2LBHAfPWtf8bWwLPYEaj03r3135I/irr+bvFOubNmalLs+lANefiHdy
miHs03dBp7peTzWC/4KZAob+C0h0SOAAwly9dv18hNIAN1+qNBAXADstO4soWnriG62FmZTlFi2+
jNIEPe5G/g1wJdDRuErvueF6W8d+eDYIJVcM5bbu3SMOarhnIOZueJLzaf8uUBaYF0sI6rLy4EH8
mm/+Xn/4NO1dgoHZebsVKnRJiyhbcY88m0ZApozUs7R48KhGL5zzX/OHGCZ0xKcXVUa3dt/pTQ6C
cKsHrRpAJZQZgwumEvY4mdqpL6OmJ1IBviwQPk2xyNr4B2SQi6roF5uYavbyqCvxASvTTsgzpiGs
G6Z5uiXg5areUWOtTyaepyFQ6AJ3WwsMOvbDhIuAt8rVjmrM15/17AWZpS4l5DwTQ2+TlfpNPYvl
/bkmxmAEmOey+x0bNH7yQOQf+GStyx5ue/UbPRn91GIK6ZUDL1Gkjbp/iOJgA7H8mqI+VQI+dLtd
B33f24S81mbKEfFWAgaPc6Lcwax3jWQlMK9jb8WHgBm8kKzbAAmjaZTMSKdvwasBCYbjeKV4WUfU
QaabFOz/I2v0cmLj9Kb3jNpvrTOD82W7eSs5ekVcOWsB2/dhNlVmUjtEvnvDCwKoyawzbr6D5twn
CvBN/2fkasHk6j7pxr/yIDUbUVb0DA/NidXIQXu2cN2giDWiwWBgIp6ZCQM6y23bkxryCol3Nm6l
OMhgEChlMKSCFQmmPatJFGQSdM1ChWPCVeYnVpS5ehKc/CCZfcBJuGvuVgLWNczp5PcAaKSsCQlz
m9LYhNjTFTT1c1g2M/1VVwzrA4skspOBBwpFVvEjgtIWNA1Tkpde66S8oPTsmG+AuLad03P3cjp+
6kKQnz2nc4lkjDkHC1H3HYdckffBrGRSPd8jF4TGEUXaQZKxgqAEPBdEvhaVUxLleRE6510c425c
WNmDhWZY++hUT8DO8mOwvTQQuaNFLZqVB7H2XXGnGf3ajvENLUhOEg9lOZMmJc88gw1Mwl3lYvB6
Hy3PbCpUx+G2cVEuPGWRWaXjWlG8IQ8MX33ZETjWEQJ7Juqsif4SvBHII1N3da2+hwPG7DZ5epIQ
OciTJq3aTCupC9lmHKju0rbvLBJIZM5FcXVnjDXSSXF0Mh11fI+uXbf4oGEjxBKMGksXTEaCkSeq
jvHvL40VqrayraX7VFb3STLiFW/XhDfrekYxPLEYOHp/rWequnbwsmv8SfYzx0fSTYvaiJKeYJbT
LuSTbYWPQms35aCRYF8DZ3g9DysnU2cmtxVuYGY43C3Dq86DlfTf8E6ZDOowW3KTQPbGADcVFIwV
gi2BPWqi1XwKeQtV5c83AsDAKl5wCEze5AswDnzYz5RXYNM+zok4HX1FddQ7IkcYmVuvoeyRBO9W
O5hDJvehiAFVIf7ngNrgYy3zZ5PeEPd0kwg5aLCkTLsz+NHjSofyQa3p6ox6/Wa3Fh7g4FgrvDN5
xP+7L/ijOUgUeZh0boRicFWZaTF2qeRFFrbLZOiFlRiubmhfCxjZ1St47pbFnoHuZ89VRcHzIrPL
WZnBf069kdIufVsrezYbLixP3mIUmLN/P6qbROsAX7twjQruq0DCddCsdDU2izQEKJ3Q/7EhFAIH
okq4izqEJ5mxXgnudCnWRwHLYShSK6FuRBArC6/ipmGbklXyOZ0YIEEbUq8gfs12AEw01VOw+dDw
bqCVNL/ZcCFgBH3xFD5Bneb5rKxNnwmLRNFKjcNhl74vPrMTHRQDffFlrkeL+HPKQgvjjxrrgqCu
bEpexLfA7uAMfQw9dMFnajUcP7y7enRSl18loZ0h7pmiUq0dsUKoo4h5vCpbERbkMtuB9Aur+dXS
gKIxHCjRSaIGDDx+Fy1FUdSfVuUn9y7ihjFoA6UasCalQ7z3DuBQGiCEWHyNC9dsCMFG/k8+o/os
zBNbIul1N25MVI6UEPG26MjkhQAbUBMWMzFOqAXZQJFdihoFOIr4YJdi2QthQVhtg7N/TuRzy8RQ
aSQf1jB1ttELCPi1tvDStn12bPRVuBw3YoL2qB9ngg6MbKlRZ+y6z1w8Rcan1A7LO2ErxzdORvY+
+GVPUeQtSDNqxMRqkWS5kuyVVEme/ql05B7/MeTsPJVx0fsNy7eIjiZjdAnP8c0vPqPsOVVMb/xO
PSYga2BKPrW3OyydZeYhl3hkHAcXYWNNsWAyHQsmmKSvu6GV1YuklIXy7pwh6q51KXdO/fGxsQxi
vRl7bJ240z7BoHfblFgRykzBBw+owcDVp7bJ49pWWB+9sGRi1FR/ZCelnJq4mNBxF9GdKRiOz+jc
/qsxdTgIFnCr+DM4LJIaU/rynx3I/yBIIs6mSajV4CFCmMY9P328th18Ce9J8MTI7N5SygVoodsq
pnsx/xsy+hw+g/TPniz6R/NUVKaaxcvEW1o8G7jbDlpsL8F/K00b5OUrUGoE3OgOrTbbvfsGhfo0
yyTs29thaaETdmm5frT4DTpn7CNE5ZTHS4Y+6tg0w1bOi/L7P51l/Nrx9eVgsIS2/xNPQ6V2+cG1
r2jZT2ECSNeraLa7wF2ugqiNhBxa6Nq0mfm6WGScbKwZG0QtXTt74dTKIqJlCApq80dmhHZkF2mC
q0ufIYx6IvkUMoJ3Zh4lPZ9fKLeJvPz/7PwUhMRk/wNFupX1otW0husTSi5Rtv53ZBf9qrwOxbX/
pASeOG+Hxg+dvonGSGsGpGSFUJ9FsB4e1o5A7bRsspqf0kHuWh98L5h9u/6ZyqftQaeCi68sblKq
iWmTIXg3EB/wws+vMWOCLSqh7Fe6t+uC94Zj3a1cO55QUQ4a/NDek1jmskIyzXeYQTavlise9q6v
qtlUhcw+i6S5//nrS9YMGOXY0cpmVRbgvUz23Dl0Icpctvh9l/yKLRLGQhSCya0EcYID4x9U0KVn
zMPmATgXWljd17em7N/XRGy9ryo4Q2SPGYVlx9F8IlVxjKPWCao0F8q5RduB+uI8ee/jB/1LmudO
YB4kQblPcn4CsUwEzM7uGFi/vLHsjvzluu2Mp+zDCA/lNr4QvVPy+wHX8EmQj/JSk8a2d1db7cJl
Wen9PcGj4RhT7tIFkvKlq3ytRLK4cuQBlhMFWextOpB7CKCZ38lWQDGquzwE+HTCo07Eiuinvxub
FPpxibGqFCuSRMPKQwSXDvzjOTDqMx5PaYCuIEshZDTiyDe7frZU1wEyS9TWuy72n85+9iJTnqNr
2gKC3Mt39AJ8BVylJSqZWBzVGWxtmdEb2DWnr/jB5Yweo1Kj2tsPMBGelnp6WTIQeqJKFvNVsQ+r
6FKDGrcTn2gueTn2gTDAjIgjmHvvCcAjk7a5h0OL7vA29uo7Arb7td60e9/BbOEwmM3JIhEkEazI
8PNPcsEOKMLciCD/Xvn+HXINSmWEgoJo4/mbbGH+MHpr2E42tSat7x3ycmw6GQLJNfJZd4w9rAUy
5WhSYe8dTnE1ceTbiRJ+igmAjEiHweBsk2tf2lIRBdRNR3j9tV72aifuf2Plvoowbq0zidXugY4O
gn3ZaHvcVdrZoqGkhn4I0P/gJQI1PwdozzG1ZSMTunQUiOqiz/92J7wRApln9N+Im7Fq90vvliQy
HxFCd5Aob3Zc9mJphY4JgKh3EVjkzfWYJwoobg8ZOwu5jL/FgvUHmvNggqexlOa6cRX5IXIAX8DH
42pQunugpcJ+dHt0sCNlLqTShX6c920aOrf1vvQ5ZkYKZXSLcUktXyq6eapSgWQj3O4mfMQ3MYqe
b2SMSUkxPYTvdghwE4ERcJkJpqRmYZWnmGw45MgzJkRlADPjPDf/1B6IJFeXgElG+6cCayfJ3kXF
crUmR56e5tqycaRetRiyA59exhWnIBJdml7QHDZ9diVYc3TgfQHBX5R4FvkIVLXkWSboKGIkW4SW
56dq1auFrj/H3RnamLB2DcN4CljLHFWfyrSBgtVzAT7PIQzI5WdA0yVR3oxuwnqAUrm5c6XYeBgM
svfZQ99XkYDxJ1qTwSORw/dgp3aehrkEYXvOtDvnY9xodHkFNobvIDAT48WzwABC1n7/onJzDIlp
Vw749jKMUaN/92DibqeATLKk0Ey8NmL78Uvesxy7/+YFPZTL8I8kM2F3ZyI/vTz96nE8s9XPMfTx
/aqYvuBazcs/6tqOdXuPLDWO+2oyb+qRCZL9ucDLO4XSVvPxSTI7UHj5ResWfbSdF/yLofUD/Wqo
eCzAyn8H55Cw4lGwXq4ewhV61qBHG4/ctS7oZo2JR3K+J6TMF6BQ4Nx7U1xIU2oXA1PP1WIX25Lx
KEE3Il7Ykk/01FGZHyo7hc8eFhMm+IaMYmK6Ewth3W27sBugnw/a/c4Y0BhFuJEsHkVaXySHowa1
TCZzELitZ8p6J8kC0+ix3hKDZzHvDdgkopjKn/81KW5/Iub0bzxTx7035JAdVstcyksggVfJV4dM
3BlKU8XiRqU5eBhKQzHLEqeppQ0AEvnhDjZy22qhWO8jZn6gAecOUsUncBqgAY8e3BV1ygD7ufov
Hulepe46HCh0G4x+1HGfdJfxg9RLbfN55z+Q2Ht3kCY6SbdDHau7mio1v9BSqNyDABqy6LPuZf18
VHl+0Dfk94yxdLvVkLlW9sUyT2vvVL15qZgpQtI3S6XFxGUXcZCwjkJwk1eWRGvE5tmtZR552P9Y
wmuI+5sQdQ9GvK1kIB6WO0Xfd5kMVB3UW5kfSpAnb4KVp/Eg420NtkuLiJINimUFDMWKxTzAAMX2
OPLVjhwGD7FwMTvX320p878uXDkf0cYr4BWkvH38bUFaPjTwRX9Zb1iRBhxQjUGzs7DLXD2adQeZ
Kos2moZwDgFowtAQe+naC6+Bu2n8SaTbftcjaNeZi4TbUJSHnAf8asTelL5iWUuM3/4v2QolcbFC
ccNTbgMJvSdEpAoCpr6GQVLRJHIc+2swObG1F6ev7gkWF2xrs1tYovPEoa/9dSTqe3FgzfAsjdK5
ZrXQuVN1qHFdmEQa0fs0OAQ35u4p7ZuJ+YfUB2i6dsUDXTW6Tx5f/YLTERurqtpgaHAl8MAP2ByH
sjQxoI9xJwdzKHON1I6ZYIIsgoHR0vbWbxFmuOpDr1+VxrGDsVN94q9F7fnWnJz7KDV0uh/3vfxY
1jgZ2zxYDnpqo/g5KDOJ45mdX3wC2h0cAGhxLfqLB6FPKQD3Hc1FVkBPv96eyqcYM1AzOBNgB5DZ
JtgyH/z9+IGz0NeNx8BPJFkYtm8ObMFRcX3RNB4f6h0001+EyQ7Cc8ScGfJd1SeQmxzpqpujp10N
3Fs2wjyOzNm/0rEyoZBw6PSgGsWy+JE55oUhJHmmP61eaziDAJIXIHUGJ4ncrssTE+EgMYh+6FWM
mmZ+iWRED2XQ2kGnn2mGwgaTngUkS4aGH3954fyioZ8zcRkuBmSUL6SGHThLO1XewOBG7o5aTCKv
vbdR/Y6NI4O81AI0s6+VGYYfCZ1bU+DV+DEQJ1DYGMeCJDbFo/9+/yZn83/LoXGsb3BdEdsWhAwX
/ov/VDr4Nmt2OCp0+GU6iWRQOF+FczIl0SLh8jU2egza62z04+Ojn74I8A+bPEjwVQLpsjT6k93g
AZqDdNNK4mvfp79Abk+7Pmp85cK2pJhv/CYdvMSR3W1g5LmgFigRmXdqaYMSvGiH6B15Po7Sa1zo
9JDujjzvc1Z/bUG997DZv82a4u4AGOopj755Nl9Dv6q3SfS9dKaX4X401ny7zkNOnd28cJGp6NfY
V4Iq4xEdst99G0At2OWEsmSJ739KVl69rTIQ5cZCGCd/6NMflMEynttWmJqw/HTybuO09ZYTcl0n
WxKlrPpwpNvPd0oHuTrLOY5LpsBhVf8UBgkj0ak9s5CexzoxzgI2SX+x1AmL7wwwK6C2yjwowKt7
aTfGDQdke2Cu82m3dxKEB8U+t8SgVnWV4UTcBNyRADHoKF+HF1/4JsMXV+zcYI8bW546nzGnNM/m
A+YipXFcm12SdKSG3cyacBiUo9t47+N2WSEqcxj8gMxTyWtgNhn2CJYlGpW8MCcZsStxp/OskngL
WRAT87DyrbBsXQizqgMHWan7N71OBn/rxxxUgVbMqN6jEvczWlx8N6d9y+e73CxbcSA/dfu5+xf3
1jm6W5wEvGcaHDGg2r1LyUghJaxVp0GZtbxp3rbxoihe3SYo5bq2Z0KpcAFoUr/nFhjGj2gv6wg0
9IMr6UiAT7cyIQ+3ZZ/AMTtFxMz3bh1+h828hz3paaEaFiGM7HVLBAHg7QCW++9Z9PiZL63UoC8h
fX8OTsvqhYHJ4q91h+4AY50ScZUS2M1qFoCCNTNphldEEdj6lD/X632gxnANqGwmlfJ0F/F8cdpV
eRFOjS155IgSUk2yGuc63UENBtpcHv6dq//7agBhbi/6uxpIHO4VglSl5AQMZScvdzgDKqx325iS
gfdCe9slHi2erxI4fkABnDMHibcENWg7Zfy7xGzNGIgb3Xd0VM30NmMi+P/YzYOUyHO8iFld0Zti
dVtjth0R635bltKvALEpHlkoMFE2p2d0iHK6jAyakE2Nff2421dcSKb8dAsetEvoAeNOQus4Rhqi
sdrmnLoJ3Ax3N1jl2VrdZaFGKeBxgACxrEZbUOB1R8pG0S08DUmDHVclpC/VD7HR2Cvcd6lqF6kl
eiMtqrEh6RTG5QfRTPeYmCf2Efnrvok11jI+3yUTs/XonG4oMzK6c59b6knQNXwl9cY/4/fcGWhr
owAznP/1XLDzDThZu8BfgdetMIsa9AwsmjizHuQO6T+eusSUe2jazGWlkSXGYV5TEViW6raDwtrv
fuTKTqXrsoG1tkctkNUFVGmL7H+RXHGUk52cJfWvhrEPyZIKiBn8QgAKGtx8hfuQtq+61ZXNDDHt
gQYYQ8g2txDCxCbIS7bglJMnbLhKVmmS9UBgnAzkWMZxrbeU5JI1ynafJYW/kRmFHnLi/IwK6ShY
sXsicXs9poj4tu6b2kd2FSLt5IjoBp+zEkqLjNd66eJYEFJY7gBSN0AnVBg5s5mO4UIgTZ2QyomY
4TeE2WcLY2R60a4OM73ESXYQucvCBlQmCTQ2GX41inoRd26WJdsShkSWDi2sss71HNU4JFtAPgWR
4eVaBDhZ0eo8CSXtwau6Fp0NPrYev28/QoUUZ3WhO1hVxde4T6d+gBFuqykga3aCwk09iieaSjQZ
quhxtUDMcNxfodo1MOsbPFUD4sxJgPIQKfUxZ0Wp4Iv5zeqdKEiMjzuWnAqRr5nWszmr2/uN/wd6
g3emh73Mib4/Ric8S1aNAGS9ykCIuDtQ9/x3SuEBCTaxHAAZb3qiQ0Xgk80VHn7SZOe6hAuNe03x
yr6M+tTNImHhquE4ziHnFNX7gzjeOb728Cozw+UvEv1Y/TCwb+CGbEplUjtg1Mle9Y0L0UFCboSB
ImPimgo3bXGWgf0PYnCZ1o6Wl+XiAwLMesTH9eIZFDD/76XnofrI+s+EIKwoV6G6KKtvBocDqqYR
HAdiVEJYm0XPeVSKrYKE3bWyePI+MivBxTRKGfipR2rtGbfdzCTI/hsdKnQgieyG6OWW7QvbBt5r
awsoekbxLIgLJfv+PbYlgRprezGqFEmnOO4nouRuA/3aJdr3p11oOoZash4mCxAga5wQh4uwk1na
Es1fuYOVF1WwF44btbdrjOj7DW19wCLsiFzXmT3RoI2wZ4RFqHqWex0MoP33MZvlz4b6sht58wM+
AElPbffPT7FRIwDHBsyNz4+vhNKOXkm6ZMQ4T3pOi7o1CyEnMX12sPnGxsVw2lt7YLucSZ/CneJc
LoT2o5PNU5zauSxSmnu2MuQBwfxLx79klc8jLcGQCFCzkfVvsKVB0Q/AaL6T5f6Kulp2I9HWBJZ7
JZ70/g+LHpfDFyKTtY1aiS8K7xLV6SoIw1ZVwkQsTQzQiy6oCvb5vvNqQvk7YgSvIxpi4pzwARbP
br+SROGk3iAX9sq3dCgl4aWsUnczZC219f/fFQSaT7Oo7gg3Uv7zveNeYp2RHtGMJpQt+GAqrd06
WxNU1/n0QefcwmZUTAR7M7H/YqPOsblfjALfIfQudikbfmee0VF54WVQw/8CbLIr0lYA8PRTAxJa
toRb0V5B32XkeljHKsfMXZ/nXy84AFO28TFQWl0Hwmvk33c33xMA/SDXjXPNLoGBu/AwW5sozU6F
R6ik9WJviteOVPBCjSLvsVTdGEejg9gEwNAxmcG71t/dk2UHXmif5GswSZuFT9b+9ljtorteitvT
mUj3I+vNK1o6PBe/eyFjGC+Ia58KeNa4YtdQOKVrZxqVbbwjBgpkGmMvBBQdwXipB/g7HYjzn39w
hOakRB1zOkg2BUERcDsV2ioGEIcvQlksFa6ttSbP1g2k/wYWsFL4RkRJfPx4AY/uk6ans2DrD1iM
d+Am23Ik7L/2ALszVh4EExuAljsGH+QdN1RerCyXq8bmXX9KmMnYuRhMXxLikj9gHzx8VB0LO+gC
KdRvs3hOL7mrsdp/yarv8FxiniR/9puyfCjeBoYnqDiZwbqBn8eCPyXSPFAF2luahGQP5OrThgev
R4FkRamhZCHsc/NNeGZjyYgI0ffSpxJ1SUnYUXPMKJNMkMzCU7joppVGHkDc662Hm3Ag47ytaD4X
SBWW1la44CAMtGY8oH5p3pSyXbSRP1hPGVcJz8ctpiPlSkDvOCm5M4QKBsknkHfjxZt7ZtW7v+pg
aa6Q37BYaI2PzkkNe5e4sBepOwQZIRRTXqGXfygYLdesrSju4ONzn5TYIMDvfbH16fbpRqV2oOAS
5Xy/R9P4XXUssJOGvnySwvlTIdeT3bkJiy6bPcr9xDoIZUe4IJcukksWzMpVKzS8FJhft5x0F9fl
jzf67gczb5A+DZn+tJ57XObvcEgZeGFfeZaAWLFMgtHqgj+G9JvPB6BODlgpiWw5e5vefUJx31d2
EuLjJyXyDDfvEi034/YQ6Im3Jjf+iujn9v9p1WIGHWsoEiK1Ys6RP2Hmjoiwc9UIIr7TFw0SKVUq
x9G62un7oIj40Vg9xGWzBqVd5xX/W0tAtFyrmQGiIVv2B6gxukima9rNWvnrdCF9RElNZWb8lxR4
NJEqTmzsX5uFrpVCORAUnGloOwJYSSgQ6U3b2wu1ynmIU2ci6ZlOfEJVSkkdiDtRlXBXgLvjjs1z
zMV/PsICpQ3JSUwUb1huaLp90z0qKOiUxpAbxquChMBBKMPZbmFPLYekBrKCMHLVzmLAYu9V4G9s
K16PwT8zpa000wdcHqFUa7ATIGc4mVo51J7evG/r/vTtnWjmHt+kLYIVeghv64+FwKtgNYE96QuD
1fNdJBzZsQmw1BQ7KrWjoHTXAURl7uDgeD4dv+YDcoTBim6Kio/TQCzmn75CjiJwwPZgOG8HW/bE
YXWV191rLrPCC9Fc6EEU8zfh0OR94Qgtn8iI6P5Uxij/6zFq61IaCkuXck644dMfa1q/mSINfbdn
N+1E0dxAwYnZmNP9Ao2h7iXldaUGfpJToI+iGX+arn8DdLNGAk91hZkp7cv+5N7YN+L8D7OVSMaF
gQ07RHixlUPaBW9Hfj2adykpICE/YcC+DbtFFPExAXR4r2+1ObNd1/u+fd7uCyvzGiMG6mtKWRZh
tUc7cNvCSNyux/j9pgIQfg5pbNI+UzC+9/dds9wYMHR9nzAXv6EALqsWOfigpLepWz2trTWjxbuY
6taeVRSgvzwAFWgaLP2f3EXMpFfE3jApyzv7ZGP1JMHtzLB8sCzyr3nC5eHyxjVcJnP3iVgcFtmv
sjrhBloXWGLgsng776MxsIaSASFXjN47tkHoeoUvlT0rz7mxv5u2RjWxK7VlJJeSMAooBA2nELZM
wScydjCiVYaBH+iVbHk4CKjnlNRQA97RjKQcFAByFdleOIxcls3jPOUwt1KckOlnCd8sEw8d+qoF
M7zgsS3JJw6nxiYB71i63I8J80lh1oiwTgAMvMxLaWjniUL4T95vgGUjm9TLtp5AbEzFuvYVB24H
5YgDJR3CbWp1w2idjAOQyrVF39OBnmt/3U+Bb2f4DzD/ioBLNmvAszUYCz9f5uFDYOVeLsnyKLOF
AMHCXAS654ZR947oYTfRfsT77RW0GK7vWOgQu+lBSP0brlfkJxAIr/U8GRHaZMTzAczlW4soastV
A+eQXQNAYQOKbgW95L9xfUVOH0Zh/Kb/RV24xyAodp5gM6Usmc4jPRo6bt0SIpp9BNpBKhjQPGwH
iqGcZhmX87epFFHBV6pZCx0skthDVHmyZ2YIh0RvLxD2XSg/UAPCLA1qDqhNRTYakA7PczX/wlF0
H4YLajs+CbincaEYtQ+JBquX9KdLonIeoFllQpPTjZjxu4gpGfTwV1+kdykB5wost45JWb909DxF
klmjsWozQ/UQ/PVEzA8XMqK7MROt1K1Mz3Ip3DxH3enNF2loWlNowdwbTaU5D7TPUP3lLgjxXKsE
2kyeOA8JTdf+ipfiPuK0gvAIM0KZGwRSZNXC3CQbWCfMfYb3TWCcFw4V9oftOZRKujUBzD19a+cX
JzesmRl32meYsjrjiLa/3aoebnLxuPjoz8S0iV+OqhBNvNE80HWC77akwJ9696hwZv5idsXXsIJd
+MXxByS786m4JNMMYlPW3Hx5LH3CeTktgKriyZ7GZn2M6pLzpzxUGwfjrXc1OQ3jQJAPPxxiPlmT
gR8R+MLXPDNYuLySGdzLSoI9YxpATKUxQhAnEAHETgPRsAYOixOp24mkID5JByUBjUNEO5dHSsgj
R8yEy5ptDK8PbctVaFqcASm3IjuVoPogNyKkKOqnhLJQeHXJrDdADP/hy1xKsE9cDd7mApeIPNt6
HOnFViJTXZCryK7KaxnffqLMJRclWtQ9wxw/Ys3usfuwPwxYjQUWV1vx6kh/M4WsyINfk+SnlMoQ
3marI8tm5Xx1xm2OQpPttwXaE5RcTS1+iVB/I9wIhVjnhAe2UlhVSUT6yKp0dLzTa+Uy/ZpaYU5m
ULZQuhsPW3apIUAPsjSZJbYzwtNrPKTTRhl3B7xxmO5ch/wi8UvJbUnXvDOQUfSD4njOTxXiXWr1
fe8K4vkZo0JXTJSjTs9RaX8mSwHFIUTW50Qn/w+6RV3GW3KYPoRQ6J1GAPc+C/bTZGmBstUV9YUH
wDq7uy38OTRR7eJoM/Dqsbf9zIBLKSTWLsQKGvaGCxTbE/uI3zjFKfrLgNN+dLdffeTPOgCgARnE
Jlw4D+Pbhm5L0Cvw4ffmKBMqGWISCNmSNu2VVu95fyFBH5lc+Hc3PnxJHEJhk/RhcMlIc3IRK7MD
VuFtnZVcAmBmjiJ+1gOLoRVerXV4VIUMjYyvLUALzN4B5vjPqJiP7Ikoa+D4d3Kavbi+Dv0amd0M
KBfiuONwxJoMXOOEimzDdVhfy5WD/51MaCKX7vKxEs+1hhPy5FBdr9oMaPu/jEomghk0Dn9tzQEs
wC7a7JxOn+B8TM3phlIO0256w487siNSoNjlVoT69/sKcVtlslVujez58rd87QqdIJ1wzXSuUced
q3gWh97Da4JceqnVcqzGcfWGvgkla9HnlSwwAaitoBvy3zRv+LObnhP1VrvtxRaWJdB0SltFsi9G
Hms4I0czbeu1gIqLGbp/DGiXBH538uID9wT1VCf6IcUTu709mm+6zQafeQWyhS+lMOtz6wJ1atTr
zgwBmneUPW5fWthLrm0X0lJ+kK9hh9N8uwcgHMjhglewbG3BcYDQD7+gCiU90wJtoGWBhXhVIYxn
RPA9wAmMX4tk/7hS2mp9T485cFQZB/EuhPEaL1BKsy7HkrSUv7Qs8wgnB5TPHzmCHfQTk+6u8Eyf
jNfGd6MKG558CwzszBmoopNnZWbTRd/mU7TOoLtvdERWHst7KgUBauKrf30IwYny45W+9zH/jGYF
MvHAVt9/sH8KI7jTPFjW6C1VvF+pvs8O6phyT+l28qy+/GltTCF3hC1N8KzyD9UCvn5d3ez0ajZX
0CF/oyv1t38xdCpbaHwtdY+jro/3UfC8tkTljAsZa6cZvRcm0XRW+LuEjCSLdVH78z8eNbTWgFGh
ilsLq/ozQj6viJXtPUFvf5CDnwOkzbNbx8KN9497t3nIRwHs7bjD6Y7hVnK5XXtbIXqdr0UzEQhV
1dBo5HaIOKgfqr+WDZYwZ+hAfwpZ5hBIEUA502c+v+XPPvIML1+lZ0uZSlBeieVe1rxZs/QewGkD
ZY1CDeQp/dus6hGmM/9CGnkGRJn5fLxRJv5LGeG62nY8yuiW/F0pQRklkFhXuQdds+QZww5Vyx5f
fNaTEpgjk6bgTtc6BcBHwFjj9Lzj9Jpjk+70WFWv9KDI/5zWxgRoGogIxptz/q0IB8M/A0plskJo
IlgBruxBnk2KFmdFN/ZptQhV3MGyulf1Lgn7HgL/H8ga8moaA1Li6ZmxnPANP6sAXoZr5/E6nNNZ
qgHrLhxdF3klv+DePnPsntzQH0wIRC0cKWua2e2GoVbADCtDesjREy6Q4iKX0EInWFBF156Qu7B7
N7zMMArL7OzPcSL8NzVU5JDegwgpSjKdjF0n2LH2RP0AgberIfHc/Uqb8yz0aC2W6A47e0KVTdyl
h0JcNJmxq7wJDVQFlbu4RY/p+SRX/GC55SLWdaRM6wKhH/w5bGC/Xxs9cuwgSjm98EpNUkPpMZC5
9z9CUSASagHvvJxlc1vAoQ1lkypFD7YzYohcU5zPY+OQsJdc/i3Jsy6HUqVLbjYdZ/7Qu0JB7DAg
CUzXDZKOUzkZCKpFHapqM2t7gXTN6J/L1AzJmi8GTWH2GASRgEAhCzs7DJ872JOp6RLlwdqZxtH3
+WVoc/JCSbNpicXDFDmOpzIDahh8qba2CtxqART13L+E8/+AonYGG7kACWdnif1JMQF72g/TO3vc
U61gbAwBopL6jrnCJJEduxWZacupXndORzS2zFk7yhoJd0lrM3doOgw2v1fifVQI4bbtqw8KffFu
LuROIzWqKfg4lsoy0P+y4RbKBfg/+goQ+ez0oG2+is3XnbZnPpXoQClpgv9+UfnlSeKnEezcxX2j
fa0Jxjnis1uUJWVGD/khKP13iM5500PfGHxGnNkBptCoNQI7sbN5pHYEL0HBH4qmPj1cU8/lWFJi
teaAgoeUbCSYFkCwMPOVDipwp2eDySEExVkbYBxbVRjDPN3CAiy8JWhJ0JeqdzmWaudsmlYvuK2z
4ZJEUMArzNkDyTK64CC5n3y9eixMAYn5hBhlDY/DoDoN9EUPo+0crOIIMhlwsQ6YWj8gpfRzjYP2
PXA8k84M07T5yl4j0iJuJ796BC7tlFw6U3PTPisN66N41/IHmGXNTMSGq/Nig6OKri9uGohvIeg2
+vADhvDeD2SWyOI7MVuuf262kim65cVM6D0Mu/VmcnFpu7F2lxbL7GhZk+kMchgzniS6N9ew2RlZ
VbatfvO70DCFtmxrgrhJFLTmwwIMoynYdGW/gf11I9HJQY0fNGJDWw7M7QjHTlIMdC7hgeSauoUY
EaJKnWNBqSvhKE57Y+tv9pD0vL4WGHwSAeU8xOBF2RwD1eE5DwFrHaSvNjQY8hXaYbxrV4JzGf1Y
jwzJqWixJW+Mm7VazV/kHy6PnnO3w1SJoFKWkzulwKh+kUixbpHOCXNuKfdxw3TgKRevHIyzPt2n
pSBdoPY+ZsOJIZfHwSFU7hv+sleNMp1Qw8Yr3F+DGoZIuGLwP7LneqMHp82xTwDmchul6qHfHD8Y
j3RcXpppLZOiVk1eGz66NA/V8hUb+C+5tG7qImUcYWhagbpcJ95G6fyFWWrQEhUUY4rs7ko2tpy0
HZSfiInxRKEdr5SEA/aCREzvzFAT+IsXSw2DDovIh8+T74KMLBBiCNf645EaQ2gYY+Y7fnuEwnRh
fb1Zum0iw4GcJVezcRAzhPLZ1YDtPWH1GiD1svoIe5WSygauTIsPhaQrvPaQGgPUIeJtIBSg+pcs
IkfUQNsMqa8QShB649HD144OP5ldq68hzmqujaCotIyU26RCAsTki57HgtEgQKTyF/hDeIJiVzt9
6PxMhwi6q2vMgataX5NEatpKLvoWwD7I6zz3nMHr+vEp447XCu2gGg65Kbsa9/bQgX/5+PtEiqU5
6W/KMrajl0qpMGxQnUnCM/OY3jUUx18phxvEujWB9YQ8y0562Z1RZhIpoy+QUPuMRH1OL4/zCH/T
cfEJaMRTSp2vTXtqKvAwrBvvHyVSkmsn4agsx9eQOv2XGDettZqSbjsgAvLMd+3cBZ15bs4PhgKm
VLgdgULDWpUluF2HTWP5tjxqMDHgDtFfPWxP2lBD4TKcjHLt/xZmumbJVYXxmOt2ba2ePSHjYxwo
wN4LECBuGCzqJlZz30t0SuUyYNnZDh8ARP6sW4ep1hghGPzms92FgfNJB0NVDIIWu2xYeNpM11Zh
H94tujNY2KTakPbLwrLK7P3SvVOJ3vYzSSx7NIgqbgVEwETxeggHtyMs9HTyTGcQa1gKziO/vVnG
aik4+dksamGas9B8TWACNv96JPoC4L89GRZE4lYazcgvH3JjDOLC3BtKQpzIKaijhmv4bwfoH1qj
t0ODVEvURzeV6Iy9+j/Yl2n87zmAAHwLysV+qqHgsImBzWuan47/Ga6+RMVW68PhBVHVMvOWnATU
0GkVjK/HCaig9586G6bWcdrf+l3+BIXf53sRc5GYDnfXc1Mw7br6nGqmeTWfNeFbpVryP8inVICm
+H/49fTz/fm3a/10TghSXwq2Ygl9/E5WzSyrDCokXbXIS4Ud7+b8jMTt2CTXUwfk5D6vRVv5N95g
ME9fcEpRfvwMH6V3p5oMPlz1dEjYlDSMq3Umdo1hpLnPyjPHqo9x1TQRPMDDu5T1bEYn9hfa5gYi
fjoNk42BW0OlqAOpGk0D+yDhYz7YR4BQz8nsjQxZvuwtaineXQ5OqVMA3C8GQtzAbNUsOJyw7V+P
tWj86aznTbECux1fVa9HVKXR/+g4aX9CrXIUzLgZj0Wde7UBNDeSvDM2HAHDRKMzd2vz9Mr5lP3c
m+r9TupPANiwWy9AE6IHF+3ZDBXgkN16zqHPZ3vG/d+RaxLPpxG5uwtdVS6wnmcOqesXvSmB8u1/
ygGK1U2zzYmPhmCt9RggDDEBbN9v2ysTalX0lDq8aLG3nxdkbZ1HdrfbRYWcrluyIh0xhZTaqFb4
2OjwZXZo7txmyU1CrCy2gZFfO8i5IogrGkeq3IB/ISC7z8QL6IpMTrcyEyYBlPNKPlKkP4o1+P3V
pHBXh22k85bM2vKdQoWwfO7PJZuAnGrBxK17x/LY+Z7eR9yY25InDwc8KHI+xDc5EcLgIskABEMM
+c+WidepYUzfYoJD7hkfCg/rk4V8V15uQ8xWjfBlX+iEy2939P8R0Fs3MF4vjTTtDm0+XQRzfvEM
mTQAFhYzB48EvE3qFrdU7O9q92S72kVl25g1UhC6N929CV6LrDUS1K/str9M6n6rxdvFuBekpTGd
vf8z9gSPJzfxCLf/CIl/vbbLct3s42Mnn6kcRb/oNX7TtYSZCJYG4+Bwx1DK+UVj3hcgED6dsgpo
kOTFjuX1hBnRQJA3jkk2UFmAGMqXFwxLKFfFXLWmDmA9Zo9haP73yWF/neYMmJmF4smMTux0m/VS
Tbnl20JXfzpOoGlxsgL0uZ3KPuTREMwFtDNG4waPfJQOdWnOUjkSGStzPeNZn9aRncwhvXI0T6rO
vckmWxrDEYyc61AdY2lTM4Ib0Gv5VZMJetRCCEXJfAS81xk//W96xtoTGHxFxM463bthzCOAATgs
rzG84UBT3Tp9Y50zuy6STVdXbm9niCloJ6dCddFsXFyXGOg30E93BlsY0JDuUJj8CsV9M0ENaECY
2FcSwuhwHDh+gz2/IJMhnb4mYQwQm9PG5xiUKOz3OXt2C3TJ9AIpM5FL3W8weBmR2fpqko0WIZAq
cS1b8WyGfjXFRXP+8TEHSw/1tDudWpCOnmtnkPjtz2/g+jD+0FEcD+5V5LS4q91xqCItweMV6d7L
B0Kmh7qVTMa+wiRuM8bsO51lMoH3ISRHEhagS2nJZMZm70Rwewa3AEFhCni0zJrPFBYBAJjQ3Rvp
7LmeScK4hJ+dqZj5grku5AcmOUm+qCum65pUpbV5kRDSpNd9Z6b1O19xSvTlr25gIKELkRjQBj4M
EzL1eqOjrzaVOYLLhEapWKaTgLl8WmqPI84Yd8u1EveVZ+lswtgq23/bTTvMgjppfkj33B0EnNhD
GLhSqNAkNW19IRFOZiNlfhufy1BanRiQzGSND84YuF8ys/IMSw0EonS8jMn30DBhbp8l+JdW20oJ
y1QumO5bDu560RTJeOoT63ysglTtphji6c/gEHikkR7tAK6P3ZDbWImYDzSj10efkBy6TG06btNm
9y7fNobTBXWpQDrEtBD5Gd7dZ7WVLGtFC/B1adkKgArB+b9b6wSz2Smq1YWDWA5FvEFVn8PyMlLP
FtXTWKJKswMS0CsmaqBQf7U5D0Y1T/eVbhVLL7pKGOygktNEaWZeSruN/koZSZXn/Vg3cRHoejk0
qThm3abTMFJENVYOaMo6tuGezcYAtwsMIq3L4ma/nbggOB/gTFxfw3E/esjxs4m6Yq6i/O/uXors
grTCSWW2YtNAtRdIaRqIhwniBfShxe9Ki/g26EFOqHRdfkNKw6pLWB42QAFlMZNVDMsB7qZvA83L
ZZlVYvOPEo6K7OVXkVhmhMicF3pmYlPM++yQj/qL4usV9qTLQN8/N6SGJj19W2UwL6cH5FhN7nqL
FniIBAxsURovaB2CgpkFIy/Ie1bbR7fiIlwvp29asq542rgBSwcPVDQlBANnXkYQp/CQH83BQFfV
tM2gO6fDnkl+3Vjx3Ps292G0KM4SVYeJ/pr8YerwnARVcsvtMOWzqNwMTnv4s6F4qr0WDtDo2t7Y
OYDAJOq6sep0XLy2lhqV8A/xCrnn+PMy0EWzlT5RIATQvn6iv1+WpC4nPcVZLpdk7r5+konK1aWy
Hjxcehs6taQFl/MPgQdFo5EviyyHOWoafCLzZYKO/Z9vZGFQrUgTzguO0dH/0s7eDFE0FHVPzu5N
xde/3sJ5brZ7X/qn0fBo6RLtzFvuPPrEuD+TrzCJ7LICqZSH21zd8U+SCodcNLx2KsPwa+LYMeCW
kqcL/Yry5XE+Oi3lDizMtC8seK3FpHsL6sxMSyn4DQuIZ5NKLeLIeRAlKcjVheSZzNWrT9EhxGij
pjX/Jf5ibuyfQk+0saipc7QAEI4q3Nw2BP9OL/3d3pwR0FKIHc/JjDq1Rhcg4PGdQbu/kiH2a0FA
N53nTeZINzYXVVsrJNbzxMVb2f2i9fTOOzfYDYea0LaPUqXkkH4XezjIQIBG6a2+P8ohtMt1tt7W
04TvWFjojdK2MCschr3BwAPRj5F5N66l3+DHe3BcVL4IboSu0McibsrgdrOFFIK/raBZQhQL93yC
19hzBwXUCGm44f5HiYHkOm8yOmsiKWzPV/soGSJcIbxeO9RZX8SloFVWomQchzzGzrxt/+KpC0Ml
cgBy25PIMvVA2XuK8G6Wa1/jkFyaMFoxP6Doo7fwrrSm5q2cs75H/vDXGC8pwQr1C0H0ljks0fUq
Y54YFkJaCt82/G7BfbReRi7MCT6j7D/5koj2P+YSuExxZJc6KQMa1W2bzgAkgoAZ0H/MgTZUXBgh
Xm5IxUgrU1WzUjGr8UpooVP1OpaGVhmLdPF9YPhsemVKjVks6c6GdYJfWyK8fQjh4+oeaafulK5F
rfM+AHioX18ldlM8oAHOOCk++oTAb8OkM0JEmEyC5Kj057/G4gXJhzBmMqMDaNf0u4jOgEWGl3E2
kkzOUj11Uoe+l/KgmDBvShQ0QdAenyLwd0z9yMoPvfGjJzjuN5053SLuIZviL762wjyvqX0pwiyb
X0YcHTCckY1JGrtrPyIKMVb406Cyc2OkyRuoEgrGJFo2qW1tsWUemhhnRdYOV9mBP/Skx8XivGKQ
XRDj3HJ1gJa7MF3CzTIE0UHKinmTQZff7096JUtC4qecU7GHVIIjjogmD1CkUgo1gBeSn9vNN+L0
NaDeYsBxvydVGLfZ5Gtgki4bW9bSqBtSu9UYO3yGdO6HZ25EBFSzhh+gr6uflSLefNa8/XV22rQ/
63Ag15VrQJaLR0+ZXPQzYtdNlADQb1T48l52DP1o/fQ3XGxsO+b0HqT2dmEENDa0CXZS1xIbnhI3
Kw0MVPZLzFZknrpNd5U3EgvJ9veOoAhYoyzYmY9AmlnC6GfhOufZmjbbz208EpWA29IvBgQIb4Yo
ji5tL5IiSORJWjnOQcqJ8ZEBZkArG9MV+KKBwnDI9Sxelw1IKUznovvLjxml8QVL18k7npD/oQ6f
ThkqI2IO65RZgLraiaxUXoNiy/q/cRjK8GTnX0n67FopWMvQoBNw708/kw0zJwTFH4SFzKpzI/Gm
tzlY0Ux00MXh/sPVl2t3E1RgGiNE1BEuIxT9vCekkXp6c0vwiQZjt016m89VV2uqQxn6tcgIDloX
Vn8i1s2+0hiM+EW1P6zuxQOxDhCobmfWeTvsu53w0ijjGmfCS4eoiuIkUpNx5MnJE274DgEQlC96
AbQuoTWo4GoJy5upxUSXBv+bI5Dh3ofFJW5zVjNRmMr1f2tHm8GP4JjKhpmKX+VDoy8vBjRAeeP8
pMfQV4Fd/ymFg1chcAgJCGjGFMEHdnVKZp8K/p3HssJwcTXFTwq0/tfU8I7xsTMut79ndvec8UpX
pYT3+NeJskjc3jxb357wSNohBGAm/1cnUG/zrTL3QmuCxO0F9zaweZgegBpGAQQIx6oGxNhBIgfQ
WQlHJJLfEndv3JrBQ4HAqbG8er7jpNxrzCc11hwxbNj86cap4hb6U015x7QGVnjwQu/xPXl7eQQg
CIQ/nGZR3Ys9+sukjyhd7JzysdzuC0j1J8PghIFud3yozsBTcSuofVWgMNmsocI9tY5CcQpWbpgx
A9re5hTHXAH+0AOlrU3NYLNcqym2ZprzcnnElStGD06bogdTV1yZW2xL5IYnwADzzzj69CWiL7qw
/vDUxQWNiQbCNYGV5WF8epfyjlsmxJQrqYAD1lx4gNVEjXx81cMocPG6Aa4W+qYBiurcmstxbLZV
RjSssI2rwO6zcJSyjXygEamxg0dshObAT++nKmmwQzV6/r8wkz159M/ScNIDnNmHDoZx1/pReMdf
nMjrBgyyAdA0WAHl0BnoZRClLXf+nSH+/3d03NQ9n9G6nrZm87yly+itXKMnqoO7pooULZbZbQrN
k5vNn49yrLr59lReo5Nt95u3H03C8UsiND6k6lJVvQwPZiqj1xZSdjeH+zLKYPyxHnXRK4EADzTc
1WevUcNBfxtqweqqBIK3YeV/b0iQ21R9EAdvk+nnMFYojVqBO9nIe9w9nOldocCogRAIoB3+k0Q8
DA/JRgtNTHndXP+GsX0HvcPx6L5a7eqCZ3j/eTW5kbXn6K9DzCZd2XJZvgfrpxcFaCrd+3PMhuSr
e3LGvz+sTKY3LU43Rvn5jyIj0HQO8UqqrSn0GT0s5GNTcjMK+P3Zp/ayoVKZY9NNFWMBCA8F0NqN
1qwaNG+ncTVv6kVUhWB3/UF0AEQ/3tD4FpAPeU0I+tbzGpFrX0ub6a6z9q5bZAjYiPqeVkAIVq/B
RDQKsFvDgmM9/XM5rVrDc6WFWzgKyl98cUqMJcu0Kw6Fa15cxoGATkX6srsip6gFka3MipGJMI/e
3B3N2Q1kqwxoFQAZh6o30e4ykCWdtYCI5PH52GW+YzoQ/cnsz06jU8Y614Onjndt8CNTdk5YZEhp
n/FTai6nrx5mBfWVD25Ky8t4nIUvpTwLW3qR4GP2xu39s2lHiKtVvMIEybqvuwsb3oQo9yQuF1rX
5RpUfWJ1bPC9+gTy0TMZ2Q7WRvHYq1/cgGFGzy8nG58minAsf0wRCKaL/+nwbOG4WRO2VhQBPA5Q
oFUD76crx4rjXQLsDNZXKKhn86EA/Set2m/XrplbSSm5Vb/ZMDNHvs0wK5vb0PWoS7alj0J+aTsD
kODrVK7s2BJk9knn7ws4bGXxMN/Bfu6BE2Fe9gK0/LHddAzxIrKNngIZT6icGSGiqAv2d3hWJ2Rv
5m8pITcDk217nPkF0530SIeFMZOGU6RYdcU1U5uMhRtq9jlKQiVTAU2NSnupUiVLRTcm+CNXOKCC
4vcwatwt77yKFU3aPC1G9hqhfhMAjy9y0/iC1jTM8Hsr9GnnUN8rhyhwKOyJCzZwfwnJrVO1OKa+
PjZS9/EwRN94w/XDBVqRcwz/4V6i/q8YFzPLB94EvgrhyRN+cRiIeRqsp0BeJz70EOlIRPYaD+2q
IC+WWQHV7r5IvTtutGe3BjNzRt555CcO5bX270zpSGrf0vxVGAcFBPDf3QMNEzYZ8GeB3QJEPSxm
B3INfMOxPx8i7XJADIo7wQzq+Ntw2/yEJbGIVyBxeC9z5jvXF+69k4KxrWPY7YHo4RBk9d6XR8mL
d2wYUX+UFLzGbSfyuG9yvGvlBh0pZUrmddfnuTxisjLvg40kkBf3XDLRMZ11gNsPeFvT+vHqedFm
k6Cx5I+EMeWYyOtwqUriGXkHPI59IQQp9Z265/AStl41yZYuI0zwBX5w8Y+54XnsCMPa/wLafUXf
5KCmChdp+33N61RGQXB70PTXuV1Q7qLX32Lz1CdV7ueU8aZRKpmotkFF1GrInjDYIBodTzyQW3Kr
1e2g7xjnTC0EDY+6zFaa8TKLSS3Cy+mmkvlZcUVq8DNariraBu5xozvzNXZeHodpIHKikopFtcSE
+cgCOErIcLDfBkb7q8e2ZgiKz0VEO4bugLkgTkjw4XyOijjp4biyw5/882YiYK5JJL8TPJebk//4
Hp4YN7SKtyaB+2a7J7KBpz759v+Vf+2jsE9IJxbaKXjbvUw9WkB3FJxrQu8POyP8Aq+qfZzKAt8K
eUVO0Ewz3SbfvZFX3Mafeu0B1fXA8hbLatqI/DcTwJimhW5QT0PtBThXyBhFJ23eDMfgYDwgw3uy
JkEcUb8hS69r2hMJUcle8egTYLdMSIfitcqLJCJ5dsuOwGSebuBJGdZ4gRDKmNVaFLvmfLQbB8dw
v3myuxDY5PqqtmlUlgi6H/3aazxS+mUMKk2RkD0JJ9NX/4l0tjRnxNk4Qo6Nq962ublSLKGrIH3Y
F0ZYM7rd6hsQBkwuAqRy+L34OSo4fQ9UrrrtPZipmY/EiKCJ4kYKvScOrFt62N34m24PIcdEyKyB
Z0lZtBPc6u+i5P04XEZwXWemVOP6+g8V0oMYL42dg2OMa7q5YYpWHvNyr4GVY9tdwH6DcbOFhvaJ
xg5z4rirUQnfal+RLbIHTb/oXX3zl3NQb2CxVeBALMUSVmfOANNusU7VDL9uR4ie/nuZqvc+IC8D
FClQiXzTFWtKnjO+rSqjRuPbD1tufz4cJcrcEYMmi6V1fh01SdMNuXcWxtTMXp5eSbzbC5joWZLt
siLPFMOVVsgOzwaJrEzvho2vgTX9UUtcYYqQ92gWznbllA52Xr4uiUtDhcu52wvHJG0VmtqFhKgO
NW0ATttRzS7REC6C5wDuG28JyY8d58NZ2KiY61VN2Ttnfsj0hL3/0g/q4VkpsXilctAODUntrB9m
ZHcojZS8omgSx9R05ddAkyJP71iMIuRuEqMxG8yRHYYS86UeipINQ3JGMvPn2mPK90VDMzTwok7J
3U1hRG1Tiv8yh/MvBeqP0Z/rRUbdWDi4FPgXOPWBo5r2P7qeC7oQOoaWCz1H+jGnqbBO/D966fpg
wLZNNmOVNpvJ0lC1lKF23rO9+24XgSqjHLvw0M2CX1njC1RebwY/t1mfDik0D0la87LgQRc25zfs
IlCjM6VZm1m4QSMvMoAm8UzrgRdohaKEpwGTafCXjwFyK5ckXSlgTUJsIH5u8afuLbvDmiguut/Q
hqVZEObQo/Nkl7uev7IxGYHniT0tChLM2OSmItuKHVYc7qxr7UellY1Uguz+3XkJGvvSgfQuBCWr
sDC1KLDVKLiafDfD3NUnFNmVBNQkJP/ee/zodQLY6AfgtHgK+y9by8VjuZ2DXkkN2zPMl2fcDj5I
pU2sBibHmCj9kVfWDg0OSL+wv//hpoC4iF9+31IhQWT+teXzkWT8Jtgo8SSircMxJGCN9t+f1lwZ
yCrGCf8cQifjEMT0/K0rYFUuRLP2Z0U7T9tdTAd04iisG7voqoJytS8Y+0te7o5/gjiDdOvRPHFP
TF7+Jom4y4P09/AYhyXgNzm9gClhdWa8/v3IzyiUcEkAyvXtMYIx8+aIvZswCscZ84pqaWI19+As
cQDcPM53+GZ/XzAeBQYFidTNVrz3IQrTl4P4WPkvfp5x2p67cpKIx5Ng+2d3Th7sd2+xrw/Q2BNg
Bz6+oAVKtVYVR5n6CNUih0avENa5E/ICdAj6BWGE8ZcEc7KEo8cKBQFqOxDzWoKL659nhTbl27o6
qi4qNQaD0ulQN96iHKnSaNYtjpfAgyPR6jUB08/Gzgf1YBfBsZ91BJm3yFTaqhOy82A7/k3wUnRT
pPJtdxKs49aGhNd3JUMVHbdzcO4fO9avMFUT8lFCY2kQULRG+7UujDwg7UBqvCVXDVxr73UHRO8g
gX+Aq/YSQV7uMrC3abdz2IIe8R0Uje3u+JTWJyT7L+yvagQcVZ7Nu8vdhJ1jQ0NukmowXGgF2nnn
zENweiumtt7jaNdUEIBLlEqFHM4/cjxnaV5Bc6iagbF6Jpnq6GUK1tufitCX9WnO7iXoNqJFgkNq
bdS/0ydADlcTmWStNXr/2AwkAXPAgMoamVVvTE8sBva7koUOQ8gGGN1d3aHmmHdezXYR108ZVUKz
kJCT/9WGk4SxMuRBsryS3GYtC7+LHX9VMtLvyitkmwfRoPJBr33c+5Y9bDG+m67Vi3Uf2K/WJS6j
0hBdX2XoQ3tj7D8sBB8cckJcP1qssL4joN14W44DlATOsNgKaTV2ZotAxsiK7mA/R3vdFJGrMO9/
px8Ji1zSgCvI3+4543qzq8LsFK+lomJqaN6L6YFYL6v/LhwCRwtzXxjWmbxT5c7hdizGZjeiPYdV
/Wq+frII/KCurQWSUU2lX2HfJupBWJNv+YakzCQ+CcjKr+k2hhRzwFNhnHNbGC+bbT/LyE+PyR2N
4SrgGywnlHgf8JsMW0FRCNWzD5g32Q3CW2MgFqGU4ulw9+EyYteIun+fVcdtwud4SfEdMkWas2Q6
Pgw/DUkNNYp9xxUqW9F3i8Dn2UQ5WI0jEL+x6ZZ9tDAL9Zd6lnt8Qx+GQEVxs090uKs0+GKcYp8R
cXLeeSe9ZoNDuAewWT1UJjLSJoil3tXwIWU+4otmQ3ctqZB7tMQrztqVJqIuRfdrpmCl8WhkSuAx
NfFjfP3ykvDgBpoMb35GMZexmCjQn/K1saLSlde8cftsXCGitRumphAXq2Zfqzwgbnirzc3ERisF
ir5TIxzmCxZe1oGdQQeQqN1UyoiF0cfixMEOvSFTeq2+vTCLZHzI5F8yuKEho7U9tXu9OToRRHtq
YsEdtYjR07Ry2bXlJF2aBlXctvMvin9lwXLicF2saZYHrFzwSgJTUoPI5GgiuR2zQBpNXIUqqfGa
lc/mF0fTP1QvdvOSf2zbFW2c6u5dP/51R5jkY62AWzvX1+xq7Uk0GyIAnRkyRT/4xbtTioBxNnZV
S6raIgIcbi11eHb5G1OKplwsI5eioSaA4B7lRIXpbgDoETZZLVxFxejs5PKyvu5Xpe/gFZR61zyK
cJnEGvEW8t2Wjg3Spxs3IAooqFA5mEY6XvPuZZI+FUGAT4f0KFI65HCF9bzJcpQ5gxE5+zD7yqBK
6zu2NnJUAjTOZ7IsFavKrxmhPctm7JXYk4kXtirF8/GST6Q9MOoGo3bYvxGJpZSqLlsfc/0nkZIO
uqdv4zMF+dlPc1nxgO9BWWLewlT25qnBt+OYqNztEdoRUwoX/FcPh1QgH7ff6ogUbWXVW2xtyW1w
CVUSX1e8BXtRSujZo6eGysdSBzYb+suW6rwJMM/qGAKdzblxGEiCZ4CeTgOf4HYF8HMn4AQtguZy
2v9fHQtmPjru8dwG4novIcl49Le9W0HUrI0P8T20q56jgEdllZtmjegjsgfOGg/kKV3ULyWfwMSR
cB6jOqvAE4Vy7M2gmTCj/vr3xqIfgpv77VfHJ2b+jtdXULAJJW8yW0AbZCVetlVj/SIPHzvmtw8C
2BNcRL3WsO91Wk+T3jXQhCOaDjSDGidP4CabmqDqRWfx+otiMdAhelt8TCKSEPumCCKm5QegprfR
8kpeEwL3TREHbbFF8B9uAfxke54diQ4WzQqRu8zPeMLOpj7bzAHfvW26wZGEHa+w3N859uYPQASH
6kzFLDAejQKXwtZFBjO12UITA8wsFKbNUesXwa7fhG8L4IFc+aAz39oP34bTY729hYaEFjV5AZZu
qiM+54PqJToknjbVyRxtCGpIbgbqY2eSik+ZqmRs7LmSS1wBjgNr3BwuaRbFQVvOu9iLnorZqggs
L8xynsNSywmZP7TvN/MW5AFVzQwUQ5xaoNVL6D/nBYBNeMAJ9jwEmk8/ybngjnZXqtlGfPncm34O
b6SHiziDpKsIJYLLfWeunodMOXOJsSg744J4rQ3fuUlkkmEF6YOxHQBygPaddLIZWRVl1HkF/1L5
pWwyspt3g6MIV9JOreCVRCVD5TOQhmlfe+1eS/yYdO+OXxlLnhpHIl36+5R1ceQRWOxfdzSOUL+E
xU1d3o3wg7XwfrzUUiM4pZ859/N4YmMxmJjco1QvRNwVKPuSSoxOPVijzusIrW97lB3G4WPpbra6
s3Dhk+Iv1SvU2H+yipWA9pF+ZCZuP30wKk00DV8tDE2ohXfgNY1EZ7cBwDBLWZLUE0oUwfmTGClw
vtpIOUQg8wMyMB4hxyLDSuh3Ew/HS0J0zw7uBjC98hagNRoSR2X8XSZXzg7QurgOgH2Tge4vo4s/
QfG2C+2B79fXlDS0Q2Mj945SL5u/K12aTmVRCLyUg6unJqGGUHlS4NTbPjbMSM0JgSEmmaCbjxmA
PX8UssobRHJgC+u/hhg9qXvqLbEjcbFzsh32zYVdZTfSN60KP3d4iBdV1JvAdlKecyzUhIFvCn8A
YulC0QJbWgOHdhHzXjX4cj65TtVwuJQdj1m88ymrH6CVosQDegQMYbGZRXL+JnehRCfo6Gkus0P+
O40Rf5dn30hNP3kt9ErSPxmG89e1w7TQaKiYwqQ3VF4VsJRsvyJRGFWd/og1g3L63KzdT/CAm//1
oO1LcEEdBOUINKZo5u63xQRdBvUf9TSltPtOqbJmJInFsb+SGxP+2Rs0gdK1BMI9EsnkHwWbOhCj
EpiXlgqj9H06iMB+cavQ5V3Ayzr55dAeotkO1uWCXmrTczXsWmb6MFZi5QIHnohjj4DCABNnO2Y/
VmwPans6OtnKvhH0JEnYOEiVp7wWpIaCcOeXpx1lKp+iR/kY5jeC98Z2ZOeRAfmKZP32ahGyMItg
Rxl/lpap6m59lqwEv2CEPMsGZqBcXUGxgeLlp+r2RlqdBcBSnZJUu7PfJXXtJW8VEOWctRdOyDgZ
o2CXM03tJ35bbOrzqhEzkSmaQzRxGg9/ULJEdqxz89MPhmLzYUSsg98yx8/Wk6Xe3r50SAz42XvO
cM0S/Z7ulRDkdw/Vq6g1A38lVi503bmICJrHYhMFLPwCPeYTC1b/fWLnAebfydEEUcwx6qXa8LFd
p1rQFZEJ9aB4eqUapLWZHOfiCBUyqabtw2JNxtervlarHQw6RjRDqxseuNDU9WcTrFOqmN/a6032
3SFcX034Kusg0U4JcTH0j7UwtL/pz803UXiWsqTmg2qIa5d6so8NmIHOE6JHi8In6MC6sgrg31nc
pENivZL7+5y+RRx0Wc9JlSORf5ztANOId4hxVFGEAzIa21FkjRb1WnPxdwrFFXQp2x/Nkvfb3bT8
z18DfUAfCBbNT3u+wC78zTVrD9OsshxgUC7yGFezPtPXLlsPiDIZqMhAKdNreeudNB2GKlnXzpKo
67+xKUkLPHKRplgOKHwWimVGc9NIjYfCDyifleswy5+U7iKr45ATpN3+4W4EGJfz9dlk5uBN6VsH
jV2l4bKPCOsRvG8z0mXL9v7+nrYZAKA9ax204G9u2FigN+gukkuNHfxBJziuRfisOIhzYrxyP+EJ
FUHmz6jFmozrG+cFZmcaSV818c4YDsEDb+g3AyiIL58S/mm7IisCo+0AJ3EJghBz2F+wMNcvh0kw
VqyBkwaBCnmBcCTMU6oITAKBbNTf6OrSUXBIf9xw1qfhtOnah6p7/fVJO9Pv2EoWoT9IQUl5arbI
2OJL8WhfNWUitegVlg1woPsm7tGtxqoCuF+q+nPS1XnlOIQ0lTGxkG7lF7NeTZvjm4Umq8E7nDWv
mvR3cWb2bE9uidButvjX3NYNRUq32n/geMJuhtfkTJBdFXLumYOOmiLYIe6RWlXWuGvN5c1knD3T
BuByzn48+e8h8lYeUoKfQo/8yyJAyNZj4sK8xv2leFWjZYeAUEEXEwpN9owwZySTfnXECYCVFe7i
7tX8/YH5Kz/K/f+QRdZ4FuZoYFe+w9XzgkAqswEUk1lIIYiGCzqiJZH43Onf7zYbXkTNivSM6VGd
cIM/gzAQ/No3BMPJxBw+EI3P4JQdysLrku5y3OL9qgWd9nbO5nEJJPF2/u+ZTuj/ANWmcwTLNqEM
u1+07lopCPtVzD/PhtAz+BIh1QvSoIVsqUBriwT8ot+Qy8j88LFMGsWwSBPHuikRD6qtz3A4Lz0v
zeWmaRW9sbciJJfrjgByFlGOYtyb8V6CwNlzjsHrOUVb1yeH9+vFTjI9fEZ7GIVsddp7KRN5YIen
N4E9rmlnKvryHOXCQsTM6gmYmmcCtS0Ak0a+5o9KmA14W7HiiWT5rEZnOWtVRTMvDgVJlD2sncIu
NCWa5F87bYar5B3LM+aQfHnBIRPd6syM1D2nuej9PoPjxoghy+iXQJfKCRM31t/o3WA04DGB3f3H
+7jPHBrNrWFa8LRI6hFzWc3wXaEkSYYPvsZQ+NJc/zl2voz41pdiysvzpPWlMbrCXUJflRYa3UZ7
tdY0OrN1bB+iOfriERF87b8UWJdjH8O9CxJtL5vtBnSmSO0/dsg5v4BPNL5UWG++zoHrS7K13WaG
OACggby3YJpPxCbVWjDbWMu8byvKieEw7nK6ctvQD/lRBC1ATWP2KXMa1HB8OtIlpW1cu+HNN1th
3fYHrofyrg/X6Lc/cMq5UPpjAGpagtXMqLnAFfqkBas+dNV6XzV2EzfUqmW/YEzEWATUBwzWnwtb
i42lzmpTJlW9o9YyhFhweyzK1lQSL/Q61hfCD43/sBxq//kXRzmJfkTZHnCi71E27ddIfgHJT49m
qSRKDY3Zfb6WVV/xaQhvJ7NonUrdNLJm5PG9mtL02rSeIIyx02rMppgjV9irwTcDXxm7dnW58h3T
79hqTMnSvOqAcOjxmkiWzUfwtvI1ku1CPk57h2OWI2f+mde8nsJHC2KlQI386Wnc+E9TWqgeQUCS
+R2E63WHfPQmv6O1ojuI4f7r1dFYyUqguWGzzjV36kz0pKGh6CgVGtKd3Zn1gb70JC0i18aixXz7
41FHVn9H1Eowmx8frPYyaDR5ym4WaqNQ3OAOYWuEDf/Tu7UwjfCGQJKiFYuxYlltlfktoA0uaBt7
kOn7kQy/ghB2x4szNp8PdDtUGGyJ222N4S6ciQmC8iQ68okDT91kv92pBTS8foCc9XirsWwbjMSP
6QgjbBxR+iS7U+mH0krBFCqLHuoOwSa35Dx3B8kM76MCFkndMqsxmDllRCbC+PPPOl1ZDKzcuhLR
G/8jz1uiSpRrFtu0ESgSaTUfgvvlGatOQyt/0Yq1zY92WCT/h9Vb6wIbcv9PgLlS6AHesSNz/80a
NUGU9MyKUGKdgjVYzhRFsFoNAV0HrdeoPd2ckkkCXHnXnysokC03xrEF4f5OWWaemq4PMvvof/cw
xFN+nF7esUkR3WCNU6DvVwDHZDhjzD6UjVAWI0YGrFzJtUWR7CvQgE6wu74JGiCtL/SZeW9hvjSb
M3CiFM4Vv8U5KyuSUKGEdxdeQmyJNuwIa/rAJ97I6y3B6GVzfmGdDUnFByntpd5tXTUwkYsPVOq/
iyjEsrpDhC8H7umzc6+kIcqPGLInyaXuhtOfONxVk5EgpIp73XQNg5rB9OJbe5ysUZ6lI0u1kk2M
DTdhvjl7Kez+FmR4g5tpCbbdHUKQDrOZ4BBTPM88WXBFR1rKTyNWTNzpHboZ4fmg1lTe0IW2fMi1
8le2fajAwwaGiqFqMHosL3tpIBAoX0ffSLYzaYicCnmflbaiWUVwd7NnzShzECwz9Nd1YR4mcKTR
ZYMfz+jY9LqvMTlzyUsUExBtmWENLfPWAwN2xIj7RUnjSTdlTMOSWlRMVjrfe5Gy5IT8V4yZD2jY
5skFNrh3rYZYu/gTO4zyreENrxaX2pqV15Zm6jBSpS++YP5xUgkqxihPl0Ka7S/Ed1eKIpMFMAzb
D9jPSOWf3eh/gyGgh6j2aJLi0/Db+9Bamn3IyoLIHGwmhgc8AvqsonbhIAiTGhNzlhGMnrSO2gAY
H8MOyErqz6WFGv7qQaljIyP+l7mLlLxDW119AqK1r6XWI5e/6ChalcgZx6hqdGkEC69DDIJYCBAQ
SrJIoUBSalMzbcLx+V7ll1/WPzxZmEe8qV8NhHBjPp8QK9+oQewB24INXzs/XGacx2wg5XyQwAM+
uPCHXm4oRK1VFSoPnZyYD4vPKP6C9qa2P94mLWa91HKwVVWb7BZAueD6AiGdD40m1TbGHcTHKetK
86bb1hgv/fnzo3yorsl4adH0NwmdhMLy/Rd7EQjgUsZ9vD8GdfVVrtBmDEqu4ud7W1fFUlyJD+xS
dxykWJ36uBcFpeCNtki0nliKFHQ2GQX5iD6+aK3ssl2wqkNznYYbbAlaIxpoHp0BrzVHzalA9GYC
hps/qMyTIcvYB04DFHaBeG9YAMtEdQKSz6JfEenL10OPha9+hO1j2wwMw/RVm3mayLvQurHe5XWY
GbcHir4TLW7mIm6LYEahZbk0ZzVSPBroumsWMKCVY4HE6ZeJA1jbpQG1B3FHqdjwd1wFQOo4RRHK
VpGpvxtb8XyfuCgqJDJo8uo/HiUsBbVALzkEWXZZl0hYhK6QJNga8kCjytxYL1lE72sKux0W2xEb
4neXz0RXc2d9p9rpDsdmbjV1bd6Ms3jTPdzF0YUTDry7q1JyKPnrWa/5IuQTN5Zhzi2oc0AVE1tZ
L8hk750Z0M5QZA0a75eHG0YSO6nQ5Zv7X8P8ZteLBpUjf29FtJWCXePX62RTY4VAkP9FTaqzKJYx
gROkniZ8drWBJAvngGXtrPs3DOQROK4y/yjXz9eWYah6txv/71nEBcK4MTDgGwulcJvMg5zemzQn
MbUIUJ/V1ZOxfWyMvRa7IFidAlZunk8muAnkMv6iOTKU8szQsRCfTmOzrDZB7dqvBVU/LmF0EnQ/
qhpXXyPbTeMUNFlM0fy/uPpum7Cyx8osMb8B1Akkl+eevR9qE46vnvuW8/mKaKJJMojjWaaKdlww
CS3opz07iD3306x0LmJ46Dzw+fqgbwydPY8mb04OOGgDCN7RlpJyvZtKFILvW7jQWSMN572KPqFs
wo1RUh4DIi8nTyCZhsgr+2D69eF2K7TgJKoF7ygyECuZYWkpnM5KyKeNsdm1HS0T1Gjekg+pQPmV
zbtbvwvjQXfiqqBHE3FrPcxC0ohq5eQp3UW9I6M5Av3EQfgKQ8eq7dEcsjQx1rvjZthmzpQ+01Lw
TO43ZYkhAtZD6Xf7t3sQELtJFI0eSDeKgfH2Ex8m7KAJXcNuRJtE9m0B+GCLk9+n2yw4Tal7RWIU
eaEi0pWj13jemvE8cFIJrsjGdOwDPv08QADL+v+dy5jSRH0Ch8fn9sbB4KJpZ+p7eK7+RMUgyoh0
kAbVL9qU6cBbqMXYV+FYYkZvECRqHl3c42UuNxA/TTKJTAO/0KdIJuldRoZQDKewwq7DP/J7OeP0
M2dnvuyr59DZScszJbe+/1R2IOgYfmCfIAEu9WeX+T0mCe3EmwpWn53Wo4e96NcsOxRYvPcdvm4H
v41F6L43g+UThwtS41aR+WTwnVO8gbvG2YyEK6XoYP4QQKTaQWN7xA+ZRX3XAbM5tIN70uFSCgGC
ET69eCAFtqVSm0PnDmmOOCh6NtxiNxHPCp/dwuNSxwddTjtivU8BkagiO3KtQC8+NL6o0BHAukWA
+gMeAW3tlWlTlnkKsaZsE76wJz9ksGcPQMoUeGujJ4kHguysjY7n74MFZkOvB0h/JC6SJSGF9Wo0
P8ErX5Y3UzUrG+6HzFOU8dMVz0bLITD8Lo+6t13mB4/qPUnTIUw/VnMOHgsoLB58b4POMy2QtB3e
ImC6TPa8xAN4W0FOWBS1bAUDqg3Cw+xAUdPgXKdzjZkkh7mQVFf1M/UaKhTMvI+JMlkbTy7S4Gjj
6JnXUVkMeYHVU2O/tR1WrLNE0XfgIHQpCbhdrSyXXeh+5x/xOsn4QgOvoXrIpc2z6TVFJQUYD+Vv
E/Jc2z5M3WhNgrLtDtiLQQDFWm6tnIY/nN7vvTpbH4liFg+oHemA9AJZXBP65wgdd59E+MgCoWWD
oIkJRuUS9cjUbA9koe4xp0s40ox7N72WQvL6u7ma9VSRw5EZoU2wJ7dJFbLXf5mu4sWsY+PXcjzE
uB9HPbQu6OryFyHeBu4YagoSZnwU27NhTIYD1amBNF74z1jGxD2ol48yD06bCY/bE4zrhJZOXk8E
urJLHhCCEo2ZRGZG6CjzKEAM2TyF2iSMKzzWRC4Nc3FYMWodYb7RwRrlkR27VGnzXXIA8hkqdwLx
jZMq2W9TMZEp7JQFoKzOMq4mQ8ExUZ1g0SdpSftyjPT7MW7rX18cuo4OtJVl/naa7GDcW1RlPg4C
M8kEiRQAXj4NCnq2g4LlqMNaPjFG1Rhf0Ya/fhyed8M1W+Xmgn55gjl9ymYCvfaSQYI+/J7AxKJd
ntk5tiVPgz/k82qY0kFbgVl/3l7T4Jg1t8kIM4NQcT4cfWSZq98ZfGfflnlBQ2CSFJSkfAqO2FlU
MeElRZOktsJ86oYpaiO3FdXB+VxMDMbh0DPveK1G+gXr2YkmutcTxwb3YCFY9jyPaJOW8UTvwyOt
s7DGUp1ZYSoPV6f8uPiUnaBx/OD7ts+XY8lqONP6EJp/eiUW6uL53MKU254C1uC+FUJmo8pzJoqg
FTB8PEqg9jNXN2mZK3pxAVy9UkeOVCZPp13ZJdAdGpKcZGvTvKSYAinsRoX5SVSuo7JwuBpxO5Ys
+cu2ST3y1J5wYejUZjM8rAo4ATcMscxZCsSu7aJDksj3GiykZut8WOWBxsiOodelPpNs7FHCLSrh
65BQEA6EFBY5SWzQoyL79on9wvuMQxOOi8l0wNTMnUPkE1povj8j4NTMwfFIIAYnaHfjST9a+ciQ
Nyuz/uR2MUAprTm4JX5OE1G+Ur2b9DAHGMy6Ke3o5UkhvGCyVWLRCbOAM8IriEBUfA9IHxdma6ti
/6WYW1VTDAUbs185nU/hKPId9Bo/dimbSqXhEzHLTf+I8p3lgxcncj9txIsKnLYYgzQGDBABaGPN
OzRmmis99uJ975cFc6q9pDEXHh6IkRKLczI8/g9xomO1jeRa7VmhtfyS5v/t36kMWvPPlYIbOpKG
w7y04H4CyQHwpIq/ujAOkcmw+cKC2GiZzB3O6MMxEizOEWD7Fwic5tL0dz6vCbqj/+7LB5yMcMZY
vlRSxZ9+ZuNxIAnT6q6jJ7DIkkDesgCax2bivEeU0Kkd72XaTeAGY0R18371BLxfNwgZCJT+tslj
3TC8jR5mdQCL4DYIvXDH7JqsIaY4vVfOag++ZtsjPywwFn9hGtDlOrW8TjqDDIVOzflCQ0Fq5zla
jNGPrgdgS/d2zFeykv2Nitubdt7fmTFIeyjeSM6Bz6VsKWLoyw4mjngxqN4RQpwjQDZK9iaHDBlF
VmV0xlj2l/CnBGWDZrPINN10cUlUnfvE3QhRhBOWEdjUGsmkdZLS5T+c4bbZW3n7nEAtaFFpaFB5
RRUjLlMDZC9M3RJSb4IDEZgHCBUQsjFbCSv+OvtcJRxBr2NOe//2A3OEZZelLeSydD2vLWTHt48S
mzkXWqmi34W7tddNJoNQe8jx62Ho3mMkuWPUVPLZkWopgz2jDEGh/L26zA2jQN1a5ok8S55zT2pP
6QoAy0O4LxblNSEKwEhsLl2jFtbUDBICUlOyAmhKymnbpcnPJBBPD8vf6iXxgXDO059Ztlkp4lYw
1F5hhLSW9An18vAEod34vEss/fMCybvfkXgHzn0jMS+bU+yjI6Eqp7pbn2DIsojDM63lnVh/jLJs
GCrkgntReKmNlITcauxOgKb+BbxKY2pXoD95+GhC45C49M7D4BobzT6QkrzyqwakSo2gZvdCe898
YqyslD6Yz86OglQNbg3fHSf4T6N2SB2x0zCfBX8ocoShSvrivJ0vrsG/z7EHoqg5qCBUMbhuGnOk
gkCOOEFTiQIu0Lt3akPMZIyrD40SeBl37zfNtctyomsheGPDyjJMV2SKToVMyTGn3U55OMd26D/K
dMooXWXXUYO60wJ7HnNE5H2iEwgc3/tcN10PvppCca2kZKQ8yfDgFDqM19h5LK9sQrauAjHSLy+s
OYrQC/UpIxgUM+KJm9klow9TV6O3SOMixyDV9j7M2iHKuYsIydOTWBerxxG7XbcYTNM0WPVtsJKc
HG5z40DpUI6xCXivzJ+arItS9cX85Di84zq5WDvyWWAqjdBqrX4FItttL83aG4Qe4E6pkfOFk2KA
1yPnqPTy55VwaWnbd+rmrhGcoVvcxYYe3A1rpP3w5cNk5b4OqnKpnubPzisEcBdHAT+FAN7LJv3T
0e4pQjo+nnvdT64x40dYNWIksYYV3FaeZBhN2UU2EKudaUnu4U/jrgoWDKIrqETiS+1TqIOb5Pyg
v4B21W7QvnnaBFs3fW+xryYSI+u5lsbEGSiAsVS4e4BN1PMwlKEBS7e/UFWWPjawwEpz7At8TkrV
nEgQWH++r2swgVygHblGOclg7nqV0ZvIftnv+XJLOlItmfTrmeJVhn+wtL/g5IgTNa7spV2zwE56
vxt22ToKvmJGQipmTZfAw9OBh+bcsFG2zCF93O8pv7rzDg0KmDH1TI7qi3DOlpYXHgH/jgUXH4E7
WwuH+I6MurY2dHGF57a5VPfvSHQL5TIEsCTiJPT71BLmUe/E/5KB9FdKWmFNiDCNvi2OvDWcN2s3
vB2+ZbiaGsrc0zSrInixfgbC5BXDCMrMCAMiO3ZwLQ22abCVr4SaD7M8AG46BY+SX1ZbmUnFk27t
zY1OHW2KN1lzsBdKsNaKcA/oXAxe3YXOtav/BuFMwlPL/kWRSqBvKFzQmkxFj0A2HynxsRlnwt6M
mbKR0iOEr0wJnqe/I1NNDvv4yP7C550y/Ho53whhsow40lniWFL5ARx+dgHGxV36BpoqtS6mSo73
0Vn9mDT01xHidNQgh+hMCBRmvdnf3Dr1Tz6K6P4Ivd5m3bl8DnWqGR2oW/cwkorfK9cH1EwQe69Q
YgSEwyojtu+ZrCERAqqRJVKtET3TewsKf2kqaI8k0yM4VJLLnsna20WNRS5w7eV8+AIJFvk+5HR9
wwKvQSLuw0xyUcu/AcbM1U+0WsBgEB5LLot2hbxOWZpxltAp4xIkRAS4jePb+iOkpO5wfxyd6U0T
QkzVSKhn8gx8IPbAbYdfwBF69s+MwTiFwJwCOjPknhD1WZjlF7EJuF7HmN6va0B9TRHGo5T9OGe2
1JIB3MswBIYnM0BoYKq8WKturxmqktJsNxEhV6jwPjd26XAns1d1o2pNl4Hxozp9J7X4/ogzqULS
4fee6Wr1tX9G5b6/mCcHHa9i+i3Qyz11KU6wPfh1DNl2OxTKsb0V5ViFBXNAVfLpu6iPTN+MQwAY
Lwe5bbv7lsx/C46RYsuw0j4+ZenISy3TwIaZVmlOGgl9af9ntmIHdNHrqwxa02M36wymDxMtr86d
xFY8ywBGBX7Abkd2Sa7LJNMPK8NKNTEd5NakmB7sOBedCbF+8TBbPadhwXKlG5CM8oJp/u3RED7v
in8UM/wWpzQj8sILxpK0SBvwvpk+qqNCt/cE5FwNe/eqzpC7C2OpdOUjImGS+qNHtQdohwTD4u7x
ZS6nr7OYPfyDzU9oUkysNASqh8AGJtgTaJPpQWcjlC2RJK6HlqFoNmj8DpKXtaIwhSS93/isXhIJ
kn9M7Zpbx155RGol7qjELGc93bf6pCplskYbifXkHknLIHIU7+ERYJrgEn59jSGcfBxRY2994Vc6
fj9NWB4ITzdPGNNoKMmVZPztY+zo4CpF7gQ7J/0C3OPWO5j8SSJP9KXrKWgTNZ6wN8ENz8UcLVWu
UFdIon/hbVRdiX3PUoc2m5LvI5G4MKUlvstui0pKqeLMChTN5+zY8xGfTLE3qduugZZQZxZ78WRV
W5/urosje+dtd36RBgBLgOtgMrNDE3fuYF1W1vLh9dUvcLSrtlTo+WHiBE3qJLNogA62RO60/f5p
/wJrazCR8w2OtcSZEXn03V49hsq7OfBvYqOX/QowhP1P53S/tqUI/8/T2UEnf8RjEQ5zjRqH8x+W
wMjs0bB6kdeQMIYwClyPq+G1b2gekcFPfnj7gFlLrZt7kRGsP3r0bbgk537Lxioslbr0KeD75XP7
Ur8J6dSxncN/z6fD5HC41toh1o4t2WVi3BfTJi141gZkd/s8YMG/8Mfk68smLJwASFgBv+JhVizH
oExlXEweFXxlrbmseg6QxdD49l1WTCTkOs4QzXPn91EzW7p5Tn/0wdIs1IVKfS8FVoVQ5gnw5CQE
Y9Admln5OBMc4eB0r4bbaRrlwnnJH/tYm2AsPS3eWklzNgKy0RgbrdwHFUCgKQaPswd4vpD/f0no
0imcW+RyBAfH2EhNdER9wrEDVMbvidtMrcrpV3p0VL9uYYNF8IMWQ7pofD/XixWFC/2mEOf/ugb6
JVBbmPa36PaA9nB/O0J4X590ChHjk4KRpjsPi/El2IZu7MTLoIHT/Z8VZJFZNj1PgQcfFBy8rAYw
WzK4ULgdGSlTlU7A2RwTRvIG2Z6C4bSflwWxTdCa9Mp0yq6KoUT1Z0XasuPcYyxpChihtOWBHujy
ebXrLuymme66wEMrIMn0wg7GvUfOAQVHAIdDpM1wSkLQ9EgodcO4FZOhpMOVoFMihNS96O/UrYef
Z7ieonj/Y6KSG/OfYIkcSQhA92ucBZKRp364JkWkr5W3aX8wTQo7QJUd8yLHwc5QQcB+afRJdzjN
xWJFpTo8eocf3XElgncuRpvjzoZdpSsEVYK+aM7rMZm5vt6usgu8c341aY93MmFDuZAuD8OBNpGE
5VqV1NM/uRdUwOER5AYwd1/w+hUvb+LhJmshwIVnrh5MGycC7L59ZBishOokpDJKaUfCWbwsl7Hn
G6ajmDFRJyRD/JIs85M0y5UjNk/jM9YNiKNqJ9sYrhpVBlDl9BIV10vNfyasRqFUVsjpVARy4epS
N1+kL1YRxX/CHCcUCw4/s2x+IlGXvsp+FoE/FSclSkZfLSY/aNm//CFyfoTiK9aZJzFZtjdZMdzF
0v4BU88vBFVmLnmAauQBf2pHKwETKY2JdfB9vuBLJsf03vBWj/sRJsFem8jRJ7nxjTIUXxdDrLL+
TAmBG+tgn/1eme0G6Owlt9oNN/Ksnllk4GxfbZwcJkyQL5A00dN28+CpxKZewZi7R3VkjE1pNksY
c0hCI1aqdnYUaQJUgNtCdFQsY5cTOfpnFn+gzak4ljkMIXQQB9PDVy3/Mz9lsAWVPpzsFQRkitpV
j9DbnltRg0hTpX4clIz5ULhgtfi0wkPtqpBKg3wg2BX5vFPy7lL/Ynr9EdMmVQIY8Nwqpl1a1MnP
T2mIZA0m7HGLRUQCrY8xFQvD/BfyGF/5bCDXGaopHKF02NJElQZqIP1Tp3dpmO3a9nMPfESYdlZm
clWHnLYwB4M/8OZYFPfv23DyRVj/tTWkHXdQxHaTmCPzm8yxGmU2QjSNviPn6gTx3VksjSJ3vXem
IRZVUkFwhIYqt+4mh3A1HtvYd1vIpLv3EXar18YRHWs8fSQ5BFo0NPz+l3nMSIWvk1qvB1rAa8s9
oitQ2nZlOw5h05qbuev1GJ1606QnuWpzZaWnRfGx0ZXg43k4Ffw9UQVwth2JTpujhsp3vz4/PiEb
DgFgRucd+bkAOjsFn/5c4RlJwFJCYYpTluxG3y3PLPO2VtBv8lwYf1vIxRBm3EJAVCBrb77E5zR1
JnoW/VZ56TYDodxY6r8FyAxLdBJFXUAyu0/0c7/PEqB858jSYQsKXQQNMQL6moZmiui5S4BV5eFq
Ns+jVdCBkLbb3uUQ7ESKvuHeNhXNE23wkueU0AgFJMrVU1xx6bCMh+BB3qwP4zH6Q2FP2MTgf+RV
uFM4ejB3+ctgsjNS/ZUAJqv/bEi1IPRha0tJARLMlPNLz8gHwrmFkHTrASTPPe3GSGo3W61tzER9
zkOuSQXww3jSGb77eOSklWq1EW09JVlS8ikZK/gd+HR54u0RFTx27U1FQuc7E9Ydcru2B4QmKbbm
R7kUKQbALiFljmZSgEwO5FVZ7ReYQ6kSFqtjHVAcQln61pLglXQYzhCML3FgkmBoYgnHRuaLVmeL
t9pp3QFJQRpo4kUW0A8LMlKkE7+OG0eR+/S/l4HaFQZOu2VTh2hIgixFfoEuOwdUGSTHH4lF6Gbc
oObe/NAAyUdvlMP1daP/Pkp+HGGhcDD0mM5ffntTzqi/mv6PdAUP9uTqpq930patCCq6HD57eO1a
BCaxdPQCgkKmZKZ+O8DXj7YNbKgvJkeuWLQHKxk1B9HjG5xmsTdtSz/F4bD7S7UllMnu47gkpr46
cKQzILReKE3h4YbPCewWMADF7iobQoFielJk0UodOTJn4EG6k0SAItsCmbfNd2uv7vw85v4qPTk0
Lh3E3Ga6ysZsyD8LktLFjCPZ+4MJFGdWQMpzATJ32mFRe6AgOQKOdXSVNCWn5wcbzwsLC/QXNuUe
Y6rqMVzfWq8TqRffWl4SUfLshuzqsvxFlRiDTa4q0Ln91VoOy+JoQciOMNLqvAmTVtRNpLcMtE3E
S59kZkYGSzKo2CIQpYrvySpRUL1oA2A/eUMcnlcKpB1w73vhoFtyOfym8Hmpy1fJuUvflpUv1xBT
OvaC9qLoaMN8o0uBsSEHIT36JtiueY5TfLQ4ssB0ON+dJv4fSj0+8Q8aM/kisBeDhMui1o3UvppU
2fGlTnFmDIJr7U1rEfOQEz7mIiWfVUMzsPSPiD6LB3HFtTro/KS1+KsiSnHe60szikP7ym8MbTnU
wStVTC4zpVzpQsrhpKAiyp9ZYGdzpFng83IPIeoZrNquDkdXAwhVQRSzKUlzMpGlySJy6+z+WaXF
wVkgKF3W96xERDUOXzkZHJH+CHpoi3Vb+G80LPwS9X7yi9FhR90aKJ+BylLQGAaFL4paz6x8cLWv
R+eWNPz3C/gEE3foUXU16hibClX0SZdx8KbFtgE8nxetmj8MZzW3Eg0f7YFKo3cr9iDsLFq98FU5
gEOF12EJHugYF2lxK8hxKfLSktYk1aKX4gT4zkNC/jVXA5KeVuNZTxAZPDJkvGQYh96AJG1M+vHg
OnwjCxV3p7Mja9LTzFPVVoKBAuByUOTeJrUdEbidpP92SJsvnkToBB+KmD3tfEwekrSv8kNOwhPg
O4gl6JYQXwyMcbGmZl4+1FxAUZ9r/dZBKdlAH7ywIJdj2epSbko999WNUyw9uRlJN0X9Ybx91nS/
DFi6l2gI4pq2JVCi1rndtgN+w2G9cMIB2bPWI3xVXQsrk8Obl137D2cHPtCLvqDrmNvLmGYICndN
xy/Hi9Z93yi+WZEvyDj4HAZaMtNlXA+qV+M2qNtiDMJWsTy4ZdphW0/gRk9L/zfvS7ilk8a3Kwz3
YVV8z9NcGmfoRNuxJ2Kt89zWyOHr+nrXyqSlCx0vG5kYg60Bk3apzXBviILFneiB4ylCGBpETjys
cFWjCakh3n8ClqwhwcH7f76Uun+euPgGV3cgtHpHlH7tKbCbi3JUi04Z4MA7Ij71mXT03lBbDNwz
V7aO6IhjvPq6wRh74UlNNhDdMQrLaLJIPvHeBdSXjunXxwzOUE+8Cb9wkvZX+pLANx6+CM1AiFeo
Ou8WAqF3dP+z26sBmns6sPcaBHAqMy8G0CsX0HIc/Jl+AmOSscsf0O847YhrS1r+yN+H6lTkmDAU
kuIQ1ILF7DPPOCQOVGaqEO3Vk6jEg21OEFul67ofdmgxPFpS7Sba9kBy1ZeuHl2Sx3PxT8nrmRp8
8PzyMKIFqmkDRR8xI2GI7ez5mj9OFJ2c7j82J9nLrX69jBsV8W0+6QWLsWbuHQDne5khDcCw7Sge
uJx1daXJ6IQ6PG+Yde6Q53HYPv9DMlyxcmBO/X39KKKdi2xz/pgOquqGRumEDjXz5W2j/S5vtH7V
tT+sc8y8j8ke3TKPL7UuMHHMnfGIgGbLkIqucT25siABAnvdfDKjhUzsIBcJo0QBnqIY3Z1Wvbg5
R9yk7m29BG+UL+E43mWD0qsWTdR2FoAIKJWMiT/rxSUDIeKMntZ0TgWkhM/NoU43HeQ4iOq6XNqZ
6U51WESwT5XNReJYpEIOVB65TbjX4Y9XeOsDE0yAuQBzAZLNRrNbDAPu1elfqabJqBKCfggVVsro
OHqPgst8s41PskEZ5t3WIx36JZF/8f5ojKe+8e+VhLzXi9V/urTYyif1elYxPCxqymWUMvn12oY2
crcfrhJmSCKsvIhN+O4DKqJNb6uWjXpCqL65qXcJOFtpEl68Wj56C3X5G17wXLOAtINi38BQ66BO
4IS6i7cVOb7ym4yinHqODyWyIsk9iaKb1wk2engN2ivyq1FiWOW18LwLtUZCZ/erOLwkJGT6rMjO
2xvHGW0aebXrqQu9JzWEHbMUBNo1U7J77yEXDrq3yO1gR3cM6HlhbooW5VLTNfao8db5RUnHHD7M
ZHZgiyL8DPP4hPoUHPbIaBSdk2yFUgHV1rLgSJtBIee8fizDF5cU+8Lc/vdRJ32e8VePHitaxIrE
tKih9BI4j8HNepCkX/mKrZhkbXII3lxmGOn7bLDaON3mA7ZNwRvhVYRRYym2LNo/2vLT3RIdg4Jy
3RtQlQ5iH7ECpNnqDP4zLT5wE721wGC1OUNib9j2TynB+w+D4ggY2IT+LmmyaJEVeLujG4x9mXxX
J7+/zVO7oVUSuvChuiXgerbNdBTlfncQkJpQiRrP17Bb5U/KlRVP1a6r5hpmkESUhenhwlx1GUOV
kb2kG0d0xG+cSnyd3Qmapr1M5cSKi+sSMFUZIGrf+M+umscvCcxMCdpbkGO/vSP/CwyTCvlLkCox
pCwdTqqFkf2xgfwlSGzpdE3MepJ/okqxTO+PYVaUHSYYSO7sjDa4BRhbDwBOelOsg9w5rxG3Y5tb
JT7ZmFUSG12AIxbaHtoTXtCCGSp/9SWLk9IdiUCzMnslIirEmElyaxEt5ao54i05u/AGCCI3YA5S
uNjS/lMrBAsKRfCOylmoRPurZYK92RQyuaKMAA50fzfEoUw07S+1qpuKbcY+dGGAqSrusLOZLkqY
S6IEcR/kYTXwLs+zoGHkzkcuZIzofnGIRQDaQkcygWDB/nr1iyEAUUZurupqBG9O24wwH+6JCSHH
5UKQAmnlNmLAv+kQplE9rDXHoqS88TPGYnKP982EA5/5JlE9dOYKt757PZn9M2dU4agA0djw4dXA
KOboPPeSGnntJGBoWckd5sJ/6463a/O0BEoYG5iD2rS2lEizI20aUTN5TBVtj2NL+1diZTslB/XJ
pg+8Mt6rfrH+d8SeFvH3amsUAsdC/o7Qi+hN+3XnGvyBlJV387uHoYBakdw/hTwmKWItXHqNEx2x
cfbSs9kFYvevtWMMlBn44bS+VK+Ivypz/tI230uZ8UbX6+BILD+g39CbcHg6NkNXe/fg5cbXazTQ
FilsUbMrCF8tXFa3CroIVG7sBLyIqUPPWC4cr/maMdWsAxz0fdzOYKDhY6i1+ODv7BWoWGSyxZZz
dyCt/OXlxnbNHn+riRxB7bUQVou7J2XMo65GYtGDBJ0M14+8t6xRfMHa5c2e7oqX7skjgkTDEONC
/9MQi5gEnf/L9lHx9ksUqqkG85gt+Hm7Wk5WM/WnE4zsomTsdi/zGwBOfyJiPfH6GhkHMPUnPVXY
IdPnnIfL85SRj8xybMeeizh+CVeebevSXfZoFWSNVl7sDieJIJPwQ3QmuhpBwq7Zx3NJu41s0Vyh
Y7HpJYqTG/ewliS29ir4B/Fkasv0EM34/ehyOeGr3plVyxhMV5tVPkOzVP3YLOhnDaoMfvvaWcl6
ffG1CyD49uHshXBS1hIydV6hasq9d7j01wwf7nbfPRm9jS25ndbmqMfXdpG+HB+yDz5Za5SA5YSv
Z+oPYNqvmXSseRi2PEJv6nWu+7psBQTjo9Y2WboZyaJLIoqJxp7jzHA6C9IMP+BIf7Xe/YYBQdk/
CTMOD8FoqHhKews9Qt2EuLyOLN0mhvqlWA/Os9Ff6jEL1pXt/FGKr/0iP7mZWokaM2hfb6/GsL0m
r+WL54DnHUgUM4ulrh4WeShZeUnJiM4mx3xZxEeUEuW4z+aZUcZtBnAdlYvjj7wZiAwUSBIzc5C4
3iDrvY8MEh7KHRdR/DyhoEZEiooA3ceI9TNLLvBBdSI02tWL3g4XGEp9E+SOS87Bcmp/a2WoBVZB
io6z+Pi2M9NarzaLCevPgne4GZbGdQHaAbKG3S083UuJTtSKRyrqKvnq68WaABIFu5I8ImQQQN/M
WaO0b7OnJ7HVdTI0/1gWe9zzJGUPmsqSrcuW87XbivMMJ6DTEZERfg/Fj2jbz+YfsFoRHFSuwF3o
R+VcalxZiJwoyDBfmR8X4OaxFrhpPMWTMPnzyu9O67wAWQmITxCrPphkmyYvTZUIZou2foW9nwT4
6dHppouvIxFsg5My1l7Jo5TUqqciHz91vKAh8eKroDZ3UFTSuDLPt7AoYR14hbpoEn+OWkkvVCjx
jQcuRBbXcsx+SHsVBQRlW6yZbb0bWVlg0h+IeDKun0mq+GSzBqsAykcLUBuUXjscC2dpmQHFYDDl
Ua0ji+CwYj4H7O8vliIC27eCuegTnsB7fDR0W0JiFnYzmj4dIA9P2BJFAOx+1p6LvW+s5ew6tNCJ
ES5Q+DnMy4RV3vSV0pKGJzehe79ONXlGN4A5hdMcYJ+uo87bN/BR1rQrv7yL0BKbXSUVfUPaNFA6
NJITpNJkVHkF7MeLWNV9qvbCAxIYZC5sXpE/6mES+XF9fwet8bAOlZPmayhltZO9+AfE/3gyjFbp
ScGhwllxY2G3jERa0qCPrgCu44vFO617aGxi80KohA0AtAedTg3rSPhv2Ssjv+9UrZ19YQbH0MmC
IW2HQafab4fsx7lQWJJbHsm/DkVlEh+b4kpoLuTYAM/zcbFfhFC9L3s6x+QfJBusT/BrF7hQStob
vm8WcOdOzw+pzifgUXisW/fyL6csfXaaRJqTOwGqfuz8rlR1pWx0xdftB4wPIJ+7AvufC6Iztxsb
Hq8F9Fa0yTsCNcBH3N/JczMQfHTSNOlEyZ96XwK2KgvgbUHYoyUq7Wf2Ev5uRz6fV+dVmUzzcwaH
CAgJrIiExbMzXhKzp9bzWR8zGLgYeKBJigPsn/QGgllsQ/MMayyAUWe3py6BVWTm9XAwaJkqC6mS
mqU3pv5ID4hMqVOtI1mvGRBDyAJP8ZT5bMHazMjeRmAxWLkwka5S/6sXEbYt6R8y1QtO6ABpMro0
sNWOxFerssv9rdXomEQtw1cpUZJHykpAnYX9Ina1NKGl1+iXDTC6+t7HBP10lWVKcHhnXQ1iZVMs
pJz7n37yB3pcp3BweP9hWWby+R0YJb8MEpfExYWICTxO4Imt8VOF/mF7ehpR6eKJ2l2Ohz00i9Be
uCSIJRz8SvtnDYR317YF7Ul44fsTUkjotSZTRPhg/MvagLZyF+q9Pr5b66Pq2rU5d3jtldGCcO46
Su25xQi8O1unUW8EXF5i+QSxn4SSkC9eqqUqByvtyCJX93ebyOmWkj+t4Cjo/Fq/37NPHw17B8MC
Rs7/UhSZAlqmZR195+W/r7d1eFhZpkTD8dvRTPnzi5z1laKuZddqvBvy9THL0++n+CX4A3y8kA86
Cil+YsE050k7fHbofwbyNYagTWKOKIG/lqAPiuDDINsFFmM/dy9R42ov1ss3U/yz6/JbwSppqv6z
RjIoS7LblRwgGn7SktZxcC75XZ4grpgm2Gc6egERgRRsEYIkzHQxM90QRsgaY6DM/So5pPRMqug3
iuAoDhLP1xUuwRY+aw1c+1fIKQnmp7613+24iAOKKsEs9/nNPT8Okj0mFjlAh54PAlaw+lH7PZ3F
hlvD1uhWeI0De7AXfuQ//TuYNpi9dAp4lqilqm9+fMEukwzxMPo6Q4+Y8u5S9g9YEOuKPrBRAFCi
EbnbLfhMoBHL03xILLd6uYR7Y8vwf5pqPlG+GDMZ3YYiSMhB9B0sezDYqtKYPseKd5tJ9UTkhGWB
8Ya51d2I6lwRtWRWdO/slOnbo/6THl17/tUtHkAyEK1XFjLI+dUJlTantdRzJPj4L/ehui95H6Z6
noTtJdHkoGKxBk7eadiH6RNkfGGETpnnHgr3DJKllKR8vILGRczfb2VmpZlfbS1lGPMtzY7xfyXe
V+M8DY76jumkQEkqAdBD7lMC+rO9P3W+g793dVNCt7ZhU0ORkzxZ3TOZNsr5xI3bKuMEGNdxdjUy
xJfBd76uzN80cC8whr/dZ4ExeMfdxZNkD3CwDZNCYjSrBkj2nhasIzWqvvDbHovgzvD89i3EHeV4
uIGvlXmDXeJOzqIeW/sF/WDQ1FXQyxwJo6wal7JqSG5H8XqvHLMsUXctjnBIAnTGpz2/HF1HZ3Y9
N0qoFYe6foujyK2Pj8f6928flKuoq7685xRKITsnYaIcqzHjGA62yErkyiK3Pu2ugKRwS1/s/EaA
clgX16jerQLmcA6nPZMqXjHMZemzGILDEVG9L1GHZqE/gP/TFWDpwut3eRBLEaa0BNipzXBdB9Gx
fkI15vgttj+ABwtuickjBBq7lc3r/xE7SaqJnAF9gAgYWEzUCPP/LyMK9sAMpfJ8caqmL9cVCCTQ
NBsvWfLVrXB2S3PBL6IbKp/tif+QIhkErvGodFtP8KPxtf3Aq4yLLJD6Yfola+/bpGowr923T9qm
o8HAUDaqcA+l2UYRcjKH3mVdutWMlOAZwNKUCwgIrzygjYdxcCVVk1mxaeuJjgTmXxH73w2aiTg/
aacUw0xjn8gcmQf2QnykJhW6BpRN/TUvIHx6hTYHwtYMo4GpsgzThdVvzAWZ4XNTjVtMQcbfNqFz
cNma6Ev+OufWu6gSiXYRPqW8o+8/DJPAWZgnBvtTTObX/OoAYsADYEmDMF9q+7p/DfoejQMJzxqX
WSQxe9OOXM35Xy17uSmogQnWBUKUjh0TSWrrLqXAtfFBYGVntw2upiOeMEUSf+VNPErnHQcHNPRI
ljrzc9IOpAnHtAIRm1HQUuDQuJWI41y+5AzqQcq/409qbK7jF6W12K0Wrb1WKM2H+3p9Y957Ojn+
P7Fy/tzYx/nXFKF06e8MsZ0pB0eXonD5eoHdqGzrRZemuCWgSglGY7rvX9/FyFBFjKLQx/GOT5dw
56hzeDEknql3oKXPVbJpgEStwsVs0iq8YUrWJRGlitMyfezKXtZgoP54DmxKpKHbisQT3gOJCP2P
LxAVDz/sLUooFMYJLJ/vrJMLrxl97g89ru6P2i/fUn4TRVyk6+kaGRapGOQElZi06GBsja6opW7X
ebFBjE3YESi4ACXrLdaFifD59Yu9j3MCqb4N0kDOHID69xs6W/QYloH730KPVTxcyK7VKjLbFUx7
zHNlYqPr0RmgPCQXXPtnJ6gaxzKsrA+iDuQ8eTmiKGThFYGWZrMT3ZxeUCpyY1tYM6SQoitnbgAh
MpVd19MqHPfDOdSzo0RjWEbghyIEzBa7n5C2CeuFiiCgyUuUsSAZXRtl+pYeNm723tsNn+TZMimv
QOM2NKJuS9hsT87Pfk9J/gMcgd+Edg5OpL0uWqvr2mLYZfZktVdTrskG+nRXOWB1L1l9svQ4ZrVK
aWw0D4XC8PfLYI+8uYMLSIZY+gMTOU48WbXvI7ljW0j7CnPyD1lKtclWp5+7suvp15BvlBB42qAj
0EI1KXbemTNpI01e7U03ESlnZvp3hZvMlug47FjdCuHisYjFHPn2KsZKwn3NMXuILhh0hkH8qqua
nzno54TXikMRH7zVl9NRErYIva6wvBeJZ1WsH/Kt0y8rEMpj4wZJDYTht9qFaaM6xEFchyp9pkPa
B0Ic6NT339FZ5XlF4mS/I3x8JwLslt5Kuk3W2xDB8xSKWsXT3XNSArPE+Vkh1bZjknkWFRkw8VZK
IyKUeSUe1ZEKgs8tgKxiG7ig203KZdLdra/MG2IZepBAX0pe3jk8CD8o4/FR8P+m8a8lKdgyAnYK
QkXuoiAhQvUeoKP5sG30iR6hFXeMNdENs7KH0bA81a/2U4SZSi+2EN9mwXnrIEdaiAXw8Fd8MayN
VAnxprlK8cEFQQvLiQnjoTAPT1FJVGX4+dT8rPxUAoLtpnT0hsBS3apUsteVhKBabMNMhqZW/B99
dEZaWdhkNT2Ak4qNv3fdWtugMXdzxNsq9Xtcwg2ieeWrrV9xzK9X1RVVI3FzzjMuitkovhVpBtnT
noIcgIQjbYZmsRN5oRoZI+8yYt5ipWtTYHDAFulN/2FO9B1CVPr74kOR1cv42rRfyO4qf852dnYb
EqomNtN8z98UvlNtQwP4v6XbFX/zn7JAF4DGmwtxb2mTTi9k6QU4U66IyjNa9DWTJpzvWnoLZOuI
ZoUT5fifkdRR4RHAd1cYJSxHy8G024/VKKQqnpsI/5Jiz1TF/X/9Q0k8AQtL27EhkkEnAEd5sGj7
UzXa3F8BaELPEsIMsKQYU/OjS+Mka1zWAqND8mmdIIzdL/cx9fUmc3XWRON7d82n/UTNqhBQGT77
YzfkEy3uK6p8Vg4sK08XACSXoGmXMgmTZFoL84tIJcDY2Pd1T8jlxMovjwN648FBtljerDHr98cu
4vkSIiNn2noVYOyYDm6lWPWIID+Zhrca5rbrj1/PbHGulaFqnacBjJMvamfJ35cKgbfQ2qfAanml
hMZGuai0JGQVo5AZM/voxA0mhOWtMTpUZLHUTBVhP9rpR0uzNCKrARqSDRS0Q4IXD8ubMpRc+eCP
UUpTg1/07BkHobGkzAcURsWfhWBkMCmQqRlUC/fBisSSeP5W7P2Ma7GjXLQkalnXLQboi4O/R70X
CZFLz0qCghttJSSxc3AL0nkEr1UCyfJ2c7K5BDSLg8j7qdTQtFxBg7yWnhsVmTAdV4w1zrhGclAf
f6u7/XLw4ASJmzZidjngAEIjdsxIoLWI3tG+TtcQICDjAS4q9Wt48a8Qd/FQ9M0r2XXmEhfPXOMg
hCNdLYQLuVswbVBz61r41XoRXVy4Q+oCrm/3fC6glxwKYRxfcJauK9LJTKW7t89dNOXk9TFlpg2j
clv70HfrXWV+Xhe35VjlYfA1rteJfMzn5zxe2UmrlZVJ7ZVypNW2cpwfvEEFYHy3ukPR9YjHX2ux
WFZ3Fcn9+Y2wkk5gEGTDBkGZCSrx1LBrFrzUay4NmRa55cA8I/YQhL/ER3vjCVNnZ8qe2Ez9cnAP
epaCSr3huxvDv2bYNbAechW18/pLJQyEORnrc2RMEDriT69aCfAaeDq1CovZBFO2srKTNYQ4sTrF
Ne+ZMgXDtj61wzthUHHETOajuHyzdycDRsfvwm9+whtJgpQxwumzoyW4b8B8iYb0O5us07mTkxFn
Jb3LzV+mdZa5uVR7FCwh1WyCknLNCOHK2KS2bI3i9TIlbEQRRj0QalcZ/8BvrLiTteSLXQ9Ye40Q
7dsTgwNhRo6Q0MSdmyTfFE7ifn7BIVNa8zmvQHTU96MObXhhwdPqKSM6VXPD8WlG41EIlrc6e3kW
X/VUMp66XNjOEVuL9ihJNJfARj2aJq0YQSmzRBTr/sMVXo4irl3G3UnlNtSFDr77INSt7LH3N33c
vCHHKx3+u8gljI56wrBGn0ByxsN4q2l9aY1PjRYwwSBX9Dce34zbB//niVvFudIaqnR6cKIpMAM1
E8So4DtpiS0FGj12MuGwp4mlCbdF2pfrjkip7voX+85yiWK2j3whLIht1E7wCSQ8FSfv5tEyEKCN
C2zR6cdZNohgjVwvNBiwiYRW4EPU0R8023YdMsP41Tz7ExgjG/t+Bpvr7h+kIs73HwijpYnEEav5
27PbBNhgL6zi40v5AoFMg29CAJgE2/J7OktK7jL/YnN4QX4jD9QH2hzjyDy+TBvl2CNMpeqIIGc1
W2RPVYddeJdyT6QCtL8MuDLtWlrdPFa6IYlQ0qXO+4/abQGvQUlPCyb3A7F978cIcQsx5X3g8ci4
pCwChC08TPJcp9uLBBYzUc7JhAaHwcU7p/IlUGiXufD8Od1AuTOcWL2FW1QQOm1/eGjoOjmJ2g07
+lRC4FcxgCbztwYZQEIxgHv6sw7BhuR5tv2rOxzgQbCpEhGo7NxQ/WhoxBomyQyuzso9LRMHW9JK
n77vrPeLzc19+YJzRLvo0IOL+omu6ZsnblSkUuZJo3VXJyvkF9H1zTTFnUzI7bLAp7H2JAlY5Ol+
lHecY3s0jE3y1YIrcTnDp+gIlIBFabmwyUw7T2dcHalKUfV+oPNw6OTNc4N7hZPg0T4EekB+r+/T
wo7lV4DsJ5t4B65WE3ObxBOD21iAqYHjIEjI5ZTD1f7ZO3gesVeMbYI8p1aSyyShB9mdDROOTU+V
N14EHFK2X5Is/vIyF7w3tcoIufOchQGDOgpapz3r/mBkK0cvDI3nWk8K8x6b0St/8C+K83QdliVk
sXisUxjptwb44Tv6LaQDFkwfixrK/ZJaAhgPRZKvDAZh0YvLqC6CDx2mMOSzfgah+hJX+fDR4knl
EuKQabvufQbV6TuvvE/QdWMWsKS+qKirtc4JfnTqwS9F7Ha3QX3WmUGIsbL5WIzsytCPVGin7QLa
hq7xXoKMFGonTx6KoP/KsdPnMJ3eXv4OpLnNJSTqP0W6lmBTjsO5pERqCmEJWDRVBLDQIBEX612/
jN1vsu5rHHl425Kuz4oNY/PTkne7yPlDc1rLGeypqEP0BMX+fyQwnDyrYTHjqYQ490dTE1HXS3vy
iPfVpvMSahbJwQqKYcXogiBx2rsGDijSZrvLou/sQ3fdCIjJSadnGqwiBDPfiHFRcF7trSluwVeI
rHdEUSnsX/dwg0uK/g9d1/tlZGXng6VP1F8Vc9IEJtL8+PRwy8ifpEAqUIMBIyubgzVoppLXPxWZ
9G3eLNqsb9MArO4B5p1ZENA6c2nE0HXZlPO4xxsWcogT9sDNOrqo4wximL8v65zFvHSZ8wPlqL2e
I5l/KtjZR/cP2FhgeXZErLj8BJIsu5vZpwBEvoMO80ZpoHC+4pmLuDy3c8aEm42zKnfcSQ1TOBDJ
ENK42SPwvV8uYFc09Xt1rUJA9cyyx1Tv8BXLhCbekNrUJd4OFsrF3vh734U/SLP/HogYZ5Ree9Vz
kPrhWjjQ2t19oorOJTLcS/H3NvpeeiZp3qaBwrbUG+7hDg0O3NhxfkW/QGkdVgweRMnwLv3gMGE8
+tOqx6XNHCBTESwz9bbk6B2Ov/BXRldQK71dHeih3QzA4LfT9Qwe2uCRfXNKuXdQtHV5E3VYe2jr
K9dxxCP68y+zDJba4TpuQRi4GX4OGHRxNby5TFiICkdbE1oc8x+ZaMXfSZUhCq+kaQ2efuw9n11s
7rJ+5u3/Qy66i86BdjEcLWK2LnUtTYxxHeBwe4x/NdABEltsbKYOrY60z4qQKHgeSF6+k8RT2YMV
saL3qraz7NDWI1B5f9aREJBH9vGEau5a/OQvSo+Xc/fsuSlDbI1ouzkXL6k4910i/HOAkM1nNq3o
Q4+MwUmOTvC0ekPoPo1qgRB/IDdVHfiPenwd0Ggag2lYEO1i9Wfn6stnYDopxluWjbzp1VFWrP0I
2ogtZGYKZI5ZTe6dp98CDS6g2kqYK4qQQUTvHnir1SLJ+VnUNRSCF0uQnssslZD8fTJhyQaDaVaa
1b5jxu+x+ejI4vJshCiEDmJU+yF/41b3zrsDdXSI00NDtjI7vP5EpAUL0vdA5CUyOtkCOCdOJBaZ
xKA51XJ59/Yd84qKsBtPNg5nLRJvDvcmbsYHBg213S5qbTAZ7JES1QhTYOWGmc9rKg0Xh7MJV+mg
bRUQxVXdB3HbT8eJbfnExFoQIR+vGnaRTAAoJ+Qdx/PP+tjSm2+DAp2IGb6oUWFoSmIsK44k8sCA
LQutvUuG5COXxP4Nh1jsHwE4KURTOX2ww4JBPzXlxO4EVoF22n779VPEtKclvlcJS0Yb0K4nVVTf
pO6I90lqliy9fJ0qcZ1IvGbxvREZOEzo4DNzT2LFWmI/zZyJ2IKFRj7ogRWoYzFEdtHriv/j1dyX
/sSJ6XgXWppERcm2MkYQY0MhxGZyVJ5Y7A32SkEjvWiihfORpLLdFwKx+B+r97Mw+mUuCFX+2dGJ
L3MSpmgAyE1JvUW+AoKPQq7bAjOQ2LGgbM5ANX61iDdO+3kdEOKeaYekQ20Re+62d5S2qwg3IvCk
7KXZhQc9MC/eRJKr7PYBnMyvsFjsFhwUuRkYcADoJJWlXJGmJ/X6BQ2xtEaTvuHIhw+lO69ZfFt3
Faw3LZhoGiQLK6LPKzk8VrY3JpEfW+iCNISJsOUOE0HTaV68u9VHGmAmjUb/Lwkjd/EyhPPMCst3
jTBBGl5BwrmAy301McP+ecJOlEBcvpHClsJMHC3sc48/YmYQ0rB4uDvNi2/CuphkenZD3i+KN7cq
B3YD+jCYOqFLlc45tnBFNcb2Y4Zux4LDNA/h4FECMICmbpvDtgTUdcNrTdNu5bgf4fgfUEnQaQgT
B8uR06qvNH1+SX+CQyJtjMqBtVUrXYjlzM51Nmo2VAMN2KjfwDbOHPCYhWkv8fUMPUco2ivee5G/
GPS25XnHdX1STqksP/GJZBly+RLaWWz6YD6xks9WpKLLW51XlDrEXsGgFdFI5/Rsa90//KOy7ACW
yFdFBRjxUf6DKsAmmSNGOgZA0HWUd7vqDDnyRsE/wb/t4nLOGVMpjlADh7R1jFfARLFoNY47bzwz
s97AgofcKE9RSvPqbowN2Cvwu6Zp1R/nW6lKFJ4ERSBAPh9Gu6xJkI3wSJUQuNB0ddxOj1LYSBk5
v7VLJU2ASSx7/QeWIx/j224+JWYZhRjiiJ6WRllFjM2hXCIoI1STCPHnWl/1lw49rs9R0n+LBTTC
15OVzAguINHyWZkVijJ+GemBkqDJdoGX3f6fmEyc4tofqrYqeSieE6XZ679mPYIa2ror1UhaUcj2
Ob0Bgld8/niKJklC2nLGfSUL84eLG9wimc5pJj6K8hN9Xix4z4neEHvhJvUXSGRLHwg2CELqiQSt
6woKAv0vKvNaYesQJaWK9hVx+EBAOFJALXgl1SYuKcYlUiTMPRfSBbGQUF5c6qrEVVyD8yMjLG0F
F/YM8VlxJb+LTP0D5Ivs8g9bHGbBfweS2Xlzq6qwBh3JEMsPJFgdwDm3Ox3J3rRwDlRUnHxfSIDG
Nbt+QnxHENQp2l0y232iS7xur1PEPK33dGnHY2JV/i5ag4aeoua7dMaH8MjO/yiBMa10pQzbicwm
4VbE0mVsoB4JvEp3RidT8Xc4lh2FO+RbcRXPiCkYwjeFmEByfpuhy4/tBrKSU9QGX3oS0W2NP53y
FoxZQbWf+tKGWRIqa/HkHCD/bKGpzWclUYW4xaGCC7zmLt+m9f8cp28JR5+4yz74QLkE7eWN6ZOM
rbQbZ3509ZP/hCPc0ynIBHPYVlwxZj7we7MS4ZHl+Tqq+TUI5LcTZRc7MmBchUpEzgxjqiNwQvbV
ZMNMHAAsuWH6pISxInrx6bpQtewga7UKA/vXm8kfUJp7PVjMZg90rwQmq9NVEHH0BlXUhV+vn5iX
IyR14/Ln6ooWkBgap5YiK7357ctswM0qIOkDt7oF4Fu59sJW1XGwxExMLdPI280tPKwtjFKW44K4
tULEh6Zkm4Dedod2mtVE8jaN/t+Ehnu1Pq/xR4LLHiCzGGQ/aYMUxYkGDDEfBxTiMD6nRkS+ZAcM
aEcNlOsq0HK6w+OQ0pmgPUKYJZz/1jM//OwyaUbk6asa0mSO9Ud41CEdqr9275EYGI3udYLLkzls
UqFcYH1ml2xfI8p4cZQgzSch1k+7AjSvaXZhqv8ZA8dL30Rj6J6Atqx0xloysyIFYAJsu0I88rAD
ICJ2zsKJbQ3ZbHaLEhpBnKIR6EJV8IC8lXqaZkCfFjMBwmqF+ZFUYNqZm6YQQqWvjkgYvJTCW9HK
SiaUEno7YaSDYBOSkWaAb1+0tLsTntU2iE0+2EZoC47r+/UJuNd4rL8hc6YxIEDYnCJX09jIK4OO
2cjWms+oAmRpAuDkuVnhe9AJs5HzdIMUyqO6TN1sbQF6L4m1d4a8YFjiXeR1BHuaL7xB/A/z5qmN
HmR44TIsJqJZOl7n8pk72xoBL0QzmRQ8fzGkcEMW2Xi/1q1Y00XgQMzEhsxKV5sRgoLBWEFevXJZ
dqSgMZfSEWqx/20Jl1uq63Uvkp++1wLXutF2xV62gYp8WrHqgMwBEyTs8Zacq6qvs757ysnyTk4c
aRCxfX9EXyQvxgi4P4dqQutkxL8SqXGUkvOXnpt/HZ1irvgNmTFE7dqtGqvUgYSYGfrO4Ejp6m5N
L96sGkpLakAfw+EjsQpzG1tY3TPc5uKC8qA8uNUZoKyNURP1AffNFmWq8uuP5CLSstOqOKi9ZKyw
6faxiGgse9EAkcYQ2qY9CuCDV6E/Qak5R2NTDuuq+Go0MSg6kCL5ImKDhjpsCy8Rq3bjcE30DJFT
4S9x+V/To4A4e0DF2putq8gIMz5HOQrahpE7bBEc0ASiFxtb3JB6Q0M7IlBC1bGfqJo2s2+ctYi/
fghGQi6ZVu5KMGFAwp9Xa4tWv+YAHQFZ5lkRY50H7wc+8jrJWOS7jy0QVjiCjR/nnPXac9yKct3b
NMtCw3pgt3wBUjN8p5lWxFj1CQ0aHF1O1j/gT7o6Ceer/vZvTnKQHHuvwTFa1ElsgLRU6ON8tTaF
3efen3Gk721byAc/NDz2YIwHcRRyG8fSUzunLRsQCkaguOPdpOEeHWGd2zpajfcSrfNyVSkENUaY
J+ocDQgpxZC0vHJHbQmKLpfqLGE537e0GsUB+ylRl8qYRTv6U8fKLJ98LDLGE7QEM3GxPF2q3aw/
QXfQmUI3YRK+0yJiJ+q6qAAaYKIfDA66q2uylksFrZyk1Qa1P7mY/VCVWlRXSWmckFvQiqUg3Hk7
qHCRplCgmUBhZuHKnmUCyDibQBpLO8GV2NtMec1by05tswHsBv5NKQp2qZns2qqJxqtxTQ9VjSMm
IBdFw1ip904W4DgDAfCFB7Vjl9bDVBiym/8HFbGm8+KvoS8VrwzaNWoNLjm9F+lc9UszP+gUnQQG
GnpQEhH5jwLG9saRQf32WpPgb8MeGaV2OReZ10ABYrjq+FHWQrKYUe4ne+7YLOz6M7YH4TGWotZc
gyNWoXsVg65lMcShc9e5DszxZcyWcKpp0oAPc2BBoBjKTcck+f7XHx/+LzvzeLnJs9nQv8wxYlnS
+a1BxUfyYHTwX3ZDlgRl+WQRnayNj/dMa2Ui3K/ad10TR1BBKsQOI9agd/sVHf78p8p8xe26l8HZ
yf7oVq48X1EFRGHnoFPIZ9INDiKTwjMpFTa5jw5lynrK88Gbpx6Epm6Xx2mPyaclivZKYiGFA6DC
vOlPNcC89TCUGLvF9qD92AUC6SGu6AywK/KmUKa484XIn+mLIHw2KBEpDMguJl5m7REh5dV1L6Qq
R6UQotoMfLG4mjYs0Q0UwHWtkgsU8OL+qxC3bvomUtYwAqGxXeR6T2ubn5Qs7WxkxehblFtKJkCD
FTMHKGOWr8KEmickfdtSFWUZxhm3IPJEVdmDRw82H26HWmVXaZQTPoBpUm9HgsFPHRGfisdt9Z8j
q4Bu/qR9M8M3L2gSGugKs/uXu+UFAK9jA8jVctdqCo/FW4o6jI0wGOG2GxU9Z5Q4K+qiXgfP2vyA
yEk3oi4SzNSf3rcG9B1gKPXdvMg9oFdhbz/6AQFdm4k54kKUO6+IaLPQEDkN01KOfBE+36QDT6gM
iiRaO857wI4mx1BdYuEleD+ZBX/paBKC2DdLWRfkiECzXQgQI15hKLWpHubhWaPZA8TRc2BjIId5
HXgaNo8bnHV7y/f24Dl3Vr6BR4Pxsx9rvTSiWP+DPhA+Eo6saAVChcgM+by+TJvRhSfxBZ13xWFv
FEnVu351CThKVbjkTUQXcwpyOrQWdLph+UJESMIP13LAQjJ7nWnMk5gyRflBGv0Ed8MyFzPNGnvk
2YCNrbNFjRevEqRffx0ZFt5BE7K/id6teU0/sWJGTHJXprk1a98gfiYT3WfWz2sbb9oPU+npXN/v
Id0lB9sL3siH93bpGmHuYF/Wcj+Q6iSRhRY3iAbeF9I0Ektl+KH+DntVG7xCGeLkwO8oTKWol8su
3L7C5sAXv4ZPPelE23qM7jjgHBSg3PL19DCOZiI3DrQGUfUGrVdK7QIUhEFrduUYqYd+FWDN113b
QgkdDGGPlmwuimX3kEvZLTwtRapIzdGGV+PbwlQih1pG0P6LYsnO2OlhWGtPbjB2kxkBysoxA5us
Q+h9vmVyjoOTlUxOeFWXk/CiOKXqg+j/ORYAiEjCWv8588EDRvZ+2HGssebPu/uFSbaXsjfKXr7s
STgjQa287rLAdSONLJ7NUF0T5NqRoHoWLsPDNK7uT3V7nkRvS8BjwbcXT9YsI3Wvi5Ad2md1j4r/
sn6hukZZlnKv5qwfVwaC/jpjsg9JwYGsa1NxZvaRYhdZwqwi5yhMx5+Nkcn8mfzcGqpeQmQIea03
++yPVC56VsPdqJ3m0akUAnpoh7Idfpw4t6NsNs9T0QFlSPzAbWzn37D6HyEoV9Jo+5P4kWCZOHou
8sCs6O9hMy3x7Rh29HotVa5+IDkqbwQ/twywn5EHsU46kbnNYEZikMar+0KEKa5rAagg6598EpDM
l83PeIZnsClWyCyf5hBeTF7FhY0g2l+HsuJDLV789B3c9l8xjvrrgdGxIXnNKsvmRz8Asx4XBaRF
mVs/m7gFHXtqxcgSoYOcFTmlJILqxnMcEzI503PnsE9QcpYjbFv5LD9TIGadmh8b/2D11kdKfAoF
ZQXzHZyewnf1i6R9SNELa+Nh2GgifMYjpng9pMsvVk08dQeItujRtwsjBugZeDpeXeVlCuH9uDkL
rN+rz/PfIhf384UPbOaFsKG+s8+eLOiA+ugmShn6Y9sO8+28aia84/Kh2RhOWgeAA8pJjenfGfEb
1MV8t8W9MaV5kUsl3YlxBOCroSp0XX3oNSBUA6qrHy4fYStf2SINBxjEXRuFPcfQTgxreaTRE5ut
499KMDr7tG9EwbFLp5X+Nq6xtQeoHtEgZnFbLeJKffTNirVf63iL5Ght3uGl5WpE4vPmSlgFTi10
pwoxWNFmqM9NZem/BJU5WVf/2J8CZV5iMa4RnuqKlhKyvQ8DoLHKhD3hflpj5gmIFU44V0MQCNGY
GAu5mfzMEvGfDL58EoGFYv5Ehi9mZ7RpopM+xTcCoQDCz56k+tpCu6fLKn6brYccrtJtZnO7ojY4
OMuE3vQkvz9903tNAXghrE+OEmMU6TagQQ6WSJzBPZDGNuLysQHlK0BPtjUaJQ+i9xp4g4Aw3/yk
Zf82gkf4N3mcNn5u1t27Lof4AFqXE77rupXwyQb45GhtSC9JHTPtJhDQbDaXZt+VAFDEPoVGen1J
tV/qDxxoQA52AgREazNH/r+bRzJTa6XPIRHaGLgNkKy0Jwdud9LaNdp3BV8KNkzI2lrtrthqxoZD
kq/msT654FuZ7uG7zOmRoYbp44bXJw6YAALkcZ/SbSNTpndgQg0VNj4khZHJ/yaNj1bbr8ehMYHL
Tp196hIBhQv2Sg5huWl8dKJTj18/95OwD5kjuNPQu3Wlox7IrHBaxnCpaEP4Su3Uzi/beOgh2QQh
/HT0Mx4LvsDyJcpsaxPCFHOFM1wDF0004M3zusZIYNHji1ym+HOQ2E5sW+//tudAPBwFW0/jGtaE
vz+TgMr8TAXEk0cAeVAKdpJXbdJ/uGMazAQaQfkQ5hPcyDxct3mxKwCvQEKnNESFVF36KR6g9CG9
NK6U47D6SzjjkRHwZXUMWtIFplmZ8Xd3D2JZ4wsisa/bOo1RkArYCebtWTQIaod0qRc0/nm3nEm1
D/6g0enHglSYHSLIhfRKSNQaRF+bk2Po7Wvu+gp4Q4mJis0OFvu6lePX1QJ1GNOFHN4bcMVJlVSR
ubfMh4ePCXEZHvEiqNZLGlFC7xCHLnyKeTcjZbwlYMgNmKHyg5bXcwc9zH3ijnYeX15BzRiW18HC
FLMbt7TM8LjOzMHp6436qBL14vnV8C7JprSs2c+BY6GlX39ipYa0QTf3kqcCM9nMZEimkxbIQ1Cb
C1j8tL3Y1Dqwf4vy/YhkFfYbAzsO4nuS+59nB4cHesAxp5czE6Vor8MUWmgI8rREqR14uWN3zkTx
UPSfjWd/xP7nT9ozBrAartAJNQb7nQhkHtWDG3oejCcU2z4ft+5x9V1FU6uGrP2bvI+/cN1bsL4P
gS5ZYaDY3pK0TUZq/wzkklSlkeRG8p9mKIUOooTOjo+7xU2Q9wJtakI/m0udRHM5FWUomzHgahZ2
gqTAP3nT9LNWR5hGQXfjq2Tm6lQ5ZqbWSUMZT0uAT8D0guE2NFTeJJHh+RaEbJ79wqcen3dfHUyn
XmhnI1hwjFcKXmGtt+MN8S/DqpE+BMbNiL5nJMn3aPJuG8Jhd2S5DxoMC0HKvz4cCNv6czH+WcrL
AR2ehhHPTzvqq6VXE2qNCgpoE5UrBa+M4srEI2ofMAOLU1d6eXjp10ylO6UJlGffJv3c0m8/zB5Q
WBbRD3BRwf3xLtJCrPdUJZdh0kLryOWFUTlTZpF42wb37M0nlsMjFhu/cFzIytPejDDBBCJSMdpW
QBzhCfw6SBeIP8QGZrEBJNvmHN7KThlpEobqkUQa1GbSxlGg8KUGV9dIqL+1vzk2YCgyrLKVQBZv
iE0B6Rw26BrJRY1cgpWyckQFB5mVnTySDE0lLGsn5cIHsbbY77aV6Teas1kG4+g2cl9owQj5YacL
CEGOSLm1SBE26O5noGpVg+jpU6E2JVrRfNs7B7OBdnGdsz9SzPTKJLSEyzYruHmtANLAKn7wTwyI
ggnyJ9rERrMUhvPAfl7nE+Pchhp4t5SOoJMt/i/ZKnfWKudnf39oTB15J5hj4ueh4/GUyfnz42fr
MH/BlgfStmAC7NqHain4SPGjC9ktfnkrZT+K0QGmIfcTN6sY4CbTaSBq7VNjim9sDk8RJmvXOIdW
jlEj+Nyfxg+FB7Mkvw6ZLAwV4Wv9uAboL/tpnwJh5SHp3q81TdjpPIP5fb5FSWuy3XGE5DOBmEnp
E/SDkrs14XDmz2zyt9tg9NGiMYy1hr163C94vPmIiWr59EHp4lU+2/ic1ufQ+gap4SZjC6H4Pu7S
N7f8xvHgb+94FID2O83ZVPjqWdG+1v6roSfx4cby8Sigqv6TqPVWTs/ppeNowew6efRsyIgUm9IJ
+mQBZ0n/AS6onRDj+kOWgNx3g1Nabtar8jIxM0BcTXhWzVRBlMxpQYzkk0udKakHRECDd32XJz/2
C71G3XJOl/JEmaWoYxEM2Qf2AdFbQ6F/G+W6u1l2N5kkQkR1dIoQbNkDEogTxa+g1EWsFnwSirR8
m6b0k//qpelf/2M8VrIXIMDnOyDmx8lXV4M+pidQsfUB3U+KLYxZI3OTzzORi3n0TPLwKufRHA15
jLpDNz/agT+f9gw21Gk+5GO3XKH5D1UoMXlQ+0TP+4dSM4hzc1zrVVc6z/PNCseZYWYAWSUIoSlN
jKp/FTAnqcPia9inZWVjsa0URtZILoztRLwuH9agmg7HGx/OZ/Yvws4U2oCFjP3Jdr467aRbkHqD
oNqcSaqGMsMq/ttgcSfNVZOQMaTBWuzxUHjS8Pm6IS5KAV9o5iIKV/pnIoqZHt6vVrN2syekKpvk
mp7c1gSHfmMSdwiwMPu191f3Z259mMxzukHhUObopdP5jJBFgezXEGn8OmYihnRGrz3BMjSPGU1m
gZA4kOKOpodTHSPqYmR2w3ksKr1XzCY0OAkMj6/OPKzwXVyNqrqL721e6L0Esmpc1WXZyccl9E+Z
3d2vxckcHl4Cww8rwKizRav2Wgl9pbhveL258zNJSN4c3AkpijG0PeW2P/eKY7Q1QyIRN2y277ia
9Q8sYjqbAtr9vJd2JiXTdxMQa9L32n+91TECuurkjR2g5Bddpa36OkgSupGS+yuXmCzU+mv7dWut
iSCd2LUg84D+uwNUL1jWxOsFRdSrsA8AvJxmbip8nlxz14B2QuMX/+Xav6/h8QyMPoZfBuw0UZes
G7LPz94qtHY+v6nHH1EnP5zb94wt3QOx2Q1qkl3gZxf4fjnYhUTtK1jd47HM4jXdIoCrAKC2pOc5
xaUqKfWZPidpby6N4hWVfO0qsopH8FEURSyf6Q0QeQGPk0Bzlph+8qTg/NtLZZmivMO9x2wrHPnP
PIDjQ19q0/7TOJbDtknmRyosGfECO5UQb9iPOV8uK9eCHzX6olVX/AmYAWfVtQ31cFW6ee9OOtfA
R2MMFR4wgwYbL+TGORXe+akjayXv5ZCfMB4vuFygYy9qiJo1zGgIW00WLeSDT8uNaE8i0a5lCiRn
ZfvesOmkFmoyUN0FTwfI3rwy7QHUwyaeY7i2HHZv9U4P3P0DdSZWKN4MW6YTak5N5tCFVcbFI1Eu
HKpXIxJ5tke33S2a92yiKRE288ZhjFPBzD3EbAI4OufRcpz+NsA5udr3Aeb4GTYNJntteHYhbKpN
WafPvc8KKingGn+JrpRpHqS+oWQP2zCDp8Df8UrD9cLMDRJOPeMlvtr0qwRlYX95n3FdlVE2/fiW
BU0MuFbfT+tNNyjYtUG1wcP/CwYKZkQKn4kDXPyyfut01tQAWDowvBQjaupIUY3JZJLCO+ylBblC
5bgaB5/c1jdMcfDxL5AAec5B0XjP0B7ecRqFZUkaGAvvgDKfx2ukMyEnNc+IxPcyd41odz8tsCjx
enlRnG0BWv0pe5vBclZbrE9LCym35cs+fcVynk/9wnm+5rxf/m9/qmQ9h1Q6soPINVbXbMYJKpsE
J9gDkma2GqUMBs0Pn9A1iYnWXhdi8+k9Pna505ov4KPuGw1LjKMZ//ttaJncqEYxyucElz1EITuL
z02BH7pTFGpXzrRXTN2WDP2DZkawRPvDVPZUnn9L+jNG2z5G8XAKmOJJm+C28jQfx8gQHzt78tbK
nDBAqk9hRblVZFOxyrjhVC6XnpP8/XwXLcnXbSHLpHJUCUBFpW2DeaXPhB8u5/wFoRfrVQTGMF4t
oXg+vDSOzWsIeO5IbSLEvbNxw4TqcyijNLGhsvk9eXQDSie8sx3BF5Y6S2pOSuRd9yhZWOtxpRPA
UAqsllzRvkkz00LE+lauAlkzSH0NxY7lkf3YLFgIBuqlPxva6dHHHfjkOs6h4FTVjpmleetneTEh
P/XEQiKX/O76j74vvNF/x2+tdASYgtyuhWGx7mMqnkAxk8+KCMnxLE/atekGi6i9xB4bj6VGjtSs
01Wfq4X0W5AG5PBl4Bu1ZYNZ4859MNb5ZFFmE4o9CyqQFJCfnGb6UPUmNdN7T43ptCutdCLVPIA7
hENnBc35wNgnlDckZvwUoKw38I15NJf/zWmYA1FImQgoPoP72jEkuF8ktAAlTbLVZbDKmGPvGkpH
N/wC0sizkEbndmjwT9eUnIPIt9pifbgOLLpar/kb9DD02AxvpDViW1jILQkrBH3hKtQlmb3Ap10r
C5MJIje8G/TzBj6WrVFngTuDRUsQpc6R8u5EUsU1OWwspqR6hJTxJQwrr5h0XwW6TdvQlThrgsFm
sQ2WyJs/a2yYLzXZ3vO3oKVe3+miiB/EaVG6MzbEW6a6XHUiVkHxTHyiSgKfvGNLqZLw7qlgybzK
Dy6HnmYzP6bnZaTQMZ6C9LBn5cD05b73Rxg3Dp6pbLoU1tJj9RmeByWlGDhYheSJePH1VgiRl89P
BvlHYtL7n3XApSwu6E4p1QDDlcB9H9jeAJuE0bmXpIh83XsHPC8tVpuJ4Vk1RYEWTKqGjVq55Un5
t+z1GIXyKdWQC6lPkWPNPb5sjVTc9t05en1QAKYITfqLcxVggtvG9/ppA9q3Tj6tEyOnwc5beTwS
oxymUgH+YBTSahGczoE0LInB3u9pzvP9am7PrUW+fKkcNyoW6EbKD5kb0G8SPaZxOBQmHX01R22h
U6HRB5Cuuj+6aHdXVNFBmiFrzEU6g8/gOCXzWBpiw0A2Lh9sCY8J1EengM6+jQcXigDwoMYHkU0/
l6eRYePMtE1nZrgjKJFE0MJ0iv2edZZNye40sDkMR8MKj+86JNSHsHKi/gMlku2WA0BIzJOnQx4x
eoeHikZUcHeJ7hQm3bj/uwyCpJCcMORwQ6UPLENI3b0eO8QugYA8CMo0QnrRk48y1jsEoXCuMRe/
RqJ3+oUbK24bT3TYXF5WLXmlbuPrb7UFZ6EycG/wUNNMBsYdlJ9qGF516eFqHQMvKO07hsUZTO37
eX5Is02SaEXXY7ZCFIcQRadLRCW0J2a3JCL1Rkn/MQ6PB9mVdhb/uCw04HCA3iUXGW00st57VgTC
sgJ8EIzBWP115FzqDYmE7rCgyVC2/PEVM7uN+QwpU6G2mLPD+luCxuLPvpIH/UX2UsGtOeup3qYB
xkgMSwgvk0LX1vMDxj1Bh4+U7i9MqrJotTVBNY6EOjiUQE8S8kVHYAfwIvQGNCsu7v0OUoUGARSx
8nv7SjoxEosnKbje0upIxIU9M0DA3OUchj7S2Grrnd2JG90tz6/2B1mmjMSoxipgOebOTmnnTOLc
wXJkJzb+NNUkMnu6zKxu17cV6OSKu4t0v0GcXmB7fLX10MftJFYxyG4mVG1fTTS2FLQFGM9xYX9r
slY8hdBKPuBIEj7NJ1K/fChCPnSLi+IsESo5QeFgklT+324jWSlR14eweTw9bErpeKLwO6etwrEC
etU6XK4cCiNmH5tFSLG14+n0q9lhbYfWH8dt2rzhK/WJfOoRoDXdAXs0gKWa3DsHLhuAuYpzpOLX
zQGriYCmPc3cEf44sa99vp4MfNi3XNI+k5nKov2509jKWAMl5RpvuxEoDnmzm0ifXkAesnLDls+q
ABom6ZJbpnGqHVQNkSxnihHaz5vQyTs6vZbzlhv/JxjUyJ3cZKGZ1OYKJaCrvz9ViUeOq8Fmlnf7
0NnrDUyyK2d4lJCsRckbKq2vl3MSstsQCZtQPnQ9Is7D+iEHqDxHvonDov7LG9T9IR9liWhq2xlf
fGzSMMB6dlqcNHcIHG1pKE+q7/c9xEV8MrBKqJyx7zX6qFuxvMt/xPSRtYKxFIPoMtoMPywNR3MI
i6VgMymEbSELT/jEVsy7mRYvRek6zaLtnRVZYCKfjfeey8MvgdaCdd9/Cl9MBq1kjTOIP47I2cTx
jSuuDXYoq3Vav9jEwIR571YNlpA4Uvemehusjjw3tOaXrFdBpZcQy8Kjzoby/Dzm6yBRlD4Sdnil
gqHwUGM43SO3ngps9kxOOiFR3a4MkRs2Iy64RGmjUgagVSkKgwpnyufc8LLskqL7adnQCdWiC17g
H7JaNYKTuhbAdzh7InliyFY22lQh/pFV06c4LHMMLaej9yxGF17dmok66sG3719cy0zZ3uaxTwQF
oGHDZ+uA6RcaoY2YK0yZHtGj6pQYROeyFTyHMHB3O8EC8BV+PS+UNcrNA0pYvyxQhROCGq4SKQOU
5i/e+P5PhQd6lBmbYjoPmaJstTjD6347CPBv0jWLheuDNdy43LCjYyFwPj/8JB035b6fOh8TAZ8y
+s4B3WzyvEpYFYif7nh8DG966MMnv5UChdjrPe7m142Y3QtS+xsRidGComUd9PxCSCznsJzRpYIc
b5z+T6/yhnJrksoHx8ibyUOo74vENtFAQO/6+YLln9j4Nl4+rTMltGxXb7p7bDIYfGriYkmbKBNo
DEJKL/Xz8oCosIXX2SK4+gK2KYphmytCrIy9Ks1q94G5kpRryAUdQazboMm+ulabiX2wus405eJW
glVuF4wLXd9+jJL8b6aDubYhg/mWXIRC0GSVjutxxS1HYpKjc/g4CNcpLf4Y9LBFq5TeR3eqRE/J
/zODclWv9OTqGfVYS33IJO1QUFzqEuh1K1rXQOIMw6M/yDvHvqiyuDx64EFA2BBOBzUVajQuNwEs
59C6n5DlHN1Imfgg4GFPu25xtY/XmJIlWpyFqmGxbqwaNGH8c2XcmwJ9y4ocYX8w1EIumBlDOgao
b2beSKdopKthl+L85J3p66Fia9TK2a7t6yb8lEn49YKBAfgZ+ksXNEZqhagzaLZ51dJ6rDd1X4Zd
BvjA78vvBzpiylm46JWRui6KZZ4B5I+OXquGopd5TzkSvGqaenoQ+9sMEy75qvrco73uszsFJsB5
7RBANyB5d1+ndlXf7OLAz7wpxqhSGmMM1p/z+kovlQZBrKC4WnxnTynI1at0FTeh5sAVNuovAsXb
3H9GeE2tR+M5FP3jn6USs2nTwiCutW1Mu2OF08KS5FWKAbOZ+mkZ8cycCOVU2/LkV+8XQlKDkFMO
K98yf6jBa0PqGnIaiyDbp8lL/8kz8fNQgFaSWorNwMj6vYqQJAx2MGzgTDQg3ylckoES06FMs9na
mKQdBp1FRtLvcscX7AulueMkW19UNDA6X4suzZu4/J4eI5hDsgCQkpb3EpL2s7Zr8x95VpU9saLm
Ohyqv5ootjezRCJEZAVCZIeD8KLnHsU/QQCK60YwJR0OqsK0brWSEcq1WnfoBARj/xBHZSm04p0Q
ST67M+InBQvu+aGk56bvHX9M/4cI0wiG0RJzn44mszUOonmIBrKTlD9A44eZFLdBTRezdgWqh5dv
jwP/1z3rehzch92eub2WBP0osqOn6i08ewPG0YFSpjacVzjMZvi8R0zpjegyBSDvzMWDWmaFfo0q
rnxlXAPpmBGZjqzCswK3+vT9uwsNMPVwhbTkfqcWXe+MbImcjd8/UfIpKC9a8AVohrW2sDKIKF38
U4vVkDEdbcebG7Ov70PskCozkZw9bFN4r0asM7CUOicy5ztLgzLMtF46iBR/a22NgMrzoJlY9Ej8
wQeYpaRvPPeGVieydddlFWXuhL/bwp26uMp/REO4R/PwvpsfiBro+zh+KrvxkLC38GK2GFnt3RgT
nFKrSXeUvd8uAlrNi8+SVbQZ7LysPrTyInF3C+iy3xaBWQC05FaI8ze04oEt3QX7tGe9/oyQUm5l
fscuTYPXrOb+vyHJbz8onELod1roATV9brQ18YPxa967/kAIneBvGcEPEkR6hoRpbvvb9lBOceLj
AF+hekheksER+fajv1BItja4KOJ3LnjPcivpM4i2cKdSvvWjFtXwtjEuFAoJT9LuPcrMnGGLAced
iLiIaVtc8KDSr64CLQ3tVqCzzFB4rpopKVW/bex+MWC0YbiKnxxUdmeSWuLdp4prexaMiIUFMBDZ
WgaypbTLnCA9J256G2BRvLrNYTdJqDQqCryfVmPm8i9XRQE7/+fnL3fVS/mbCeKhz2SjuLpECQsX
sHiuFmytyMg25+8kkXtTGLgM2O578X4usMTG5T2gzJzWupIz8t+CdbAbB62NwIPkkgw7zRP7ZVij
jds+R95frVxZ39suwG2SXKPsZftfy4pJdDIM0vkqdP7kIW+JyJ5dyaeUOIBmoKs7v6O6g8hA7d2s
2tdpifSbmFPT9v8hNwShF3U8s1TWqW3yOvBga4eN6eKbBUJ5IWi6C6D8tDQYCgMegZdRqDyU41Sp
kxeFqbAW7o9RV+OpFWgo01P7Zb68x9EjnzT5W4Y83fgzCoFNBPX3LMXfBBo461I014xkSIF1C83N
lylJYKI18vDz7zbRwvPGtBl9Y2y+prLQTcLCBmWwLWlBHSmStP5AHYvhpoRGFCRVCBvHy7TaRZsq
mmVc/Bb0KrRQAzODxeuynwp5WalpSWIehA6kjOxYmo0Kd3FfPIUDIgiC3csd2CrTsgQBkQveNwEf
/19VDeZFRaoGYU2CJo7gXYkf3M8jz0gKkCHFHu8BkunmBhAxWDv0S6b8w7hMSe8EtOQSuqw39S3B
XVl1eKwsrXkhHH2eAhfM1CT35R2xTS7lM249tHEZWqZdYslVWKCegMYf3iK9bg1gr4qReOjMkYOS
HLm9cO3o+2AwU+B9x7riXpClYy0blpXagfhAFjsalvQsn0cc8WAc2PdMGdLIEuMr4toKDoTLOIhK
VLTR2bf4YObp5Eeo5cYv3cY17teW6BuVI2L3Ov/HTGRNv5aDCVz24Va8Xw6q5NcY25g0DTFA+r45
5QU7ionpFa8gugOBfoxnsS23wWycOEe0Ln2ySVwkOG62hy5nu8P3a2aEokYuyjcxRtz/AM9Fni+M
IX6bTcJPMOR01Mz7yjIZCeQCgooNEqrZxFxuPfzwP+WkyI1GBYPACtbRhAyFp/YZiEZGXZ3WURyO
afQANBKaN0JHTxvVgLt4pdYm3f966L2OI1IakFEdOLOxZYSsj5nn/4zN+lZk30vhyrtHS0p5T4BK
/79+ycym9vlIfQGAi20QR4fOmZ7LMPyiZqlRtp7HfrZlPpOTXvmeQb2aC4tYmsJWyMGFlf0vrFQv
jUjgwVh0UUu3LVCHiSb4CCccV55QzHbujEyR1vBQhF64CRT24DGMqnoSCe+IL6tQKQuCAIIJPUpM
Wj4Ab8YEG/CxHZKfPok3vH7Zcj25ptPK9h1F3Wmq3Yng1OOL5SlrZLGVYisYPYC/zAM38+yWWqAL
V4r7zOBtZB2swI+6HrgOK0huqe1GaZ5nIhi4orOC36+J2XKuOZL9pd07hoLq8hpGJQXlCth0Dumi
Nd10qsb2lDt9m7J8y+l8ZWDUiCQPS6NKiYVHXSjw6LUkWMvIjf2Ee8MjifIN9YcT4zPMPNcr+QzD
lV7pHOaDW/3nEu5LBCO77/2S2GHRT4fvzd82wcTOAEWvXgNK0OrsALBKJ7BVzIpZeL7q6ZNbNib/
4iL6nhrwBmOt82b1+hUbCs5O5ZnTKVcWzecvgmbrzmN3Rr/8dohJZRO8kVIMx6QmF1L4YEF/OCYC
fIvfn8jiZ4URHpTOA0LcSkCFt6ksIG8X5ys9hdwsZHEFVjWoo7OwS75M/9o6mfco0I2++m4YONrF
yWXriENvgV+03FHN1Nncho7upxXobOIX3FXnyARpiV/JMt1DDq5Wak19JASfG5GOxN8EjkH6j7qY
IIeG3hPoIsJn+JMdtU/qXfZd0v6IOPUfPgMDJSCoGYfH3dWHic+R49VWVh3fxVuj4QMEy9mi+gHc
W2Kzum3j3lssh2mO5wLvlOgv8R2b3rIddpeUAJ9UcJj9IPpk9VmTHsnlWz++xp11seaRB1tdIuow
DCJe0tj2UoGgWyfO8z/kfPrWCBEyyMFToMf1ksx+VtdxtPry7NwwDK8xkKak+DBOx/mVCBS2evJf
HbtVw1bbL3kYDxczF7i1INbsHKTthY0SSuHtjpRkBj6X21OZAfgvAt5hDqKJP714ciP/RosNTmWg
V/yQy9KE0pxAiHPL05GWg5frEn5hSIOZjKjxPePO4o1lfRlq7cUXB2iN/2Dp7mtNgqnd/mwvNQYD
UqLsudpR4IsW61lm3GQ1zL3nrnQm9/4hDw2vkIOIFLB3eCEGtUzxvvafTjjLviIozOCExPrnYng0
NVJHeWk5fhWEs9j9U+e2ZAhdl4iqPL/xS6QqnZeY6DEXXzE1elSsyJ/U5A1eMz0gsg2/Y75v17cF
EdqEkNgHtVKY1jl8pUCcNlXlhpfjYdYyL6uE5V7Z4SwRGxwTx3ujlsInMcbdO5yPRZNj2+EVOtDb
TtTq8XqA5gZV7lxuAIH0OChJXQYkLrp8jBTLRjGNzpUV/f1y7aQ5xVdqJ6OPBx6+4x7Md3R75bDL
TUwBrIJ03JbmijZMomL2Ahm2tGwuOoO04Pv6kbGtp/U4mhwvzGC+4nPuF/5D4j60Q4XttUiLurtH
zLtG2ynGzW2/O7aNCvQ9KeHPL6+FO7uQv/CFOP6W7j09QspaPihnvHnUsWBt6ndHzGLd0MG7BJcd
xZ6ceuS8CoGE7nObaIiLA9XZVhxMUBXz2oWm1AXRc8nhrs0J6fKWwQ4ODXRWdybV6Jve6KNisX1Z
qBlg0vBD1PPrhYxfVxg8y1gfyfUOiIS2tTEZ02HsPD/hJBAcsH06SdAQD/aU1ElKdLvPABrHvPHa
8qvw+A6dS6mvbKD1E0TsARlEpaR4ONRuxHVlcZ9sMhq21EjddArOqoxwiIR13XZyhW56/KwBfHtA
qe8x6EoHQFtgkwuC63sXBwjaXNPq3xiRvpMvQRBVSW0mlBl7qD984irwhiDzIryRjB3otaEEXmKq
fVgbLVnY73akn+9arPSCBPbjdhG2DQs1X4hOrY4qNR0U0Y5wrA7QzQFnVoQkrIbRk3psChNW2PcS
ftFE0DnKfHX5oyvctCRKr36Z1yp0WljrWv2zoti+zcMNp++KbOMnN9sZHv2rGilfjaREMENJEjwV
szkAx8Ua5mlfMU1j9HIZrHT/d1RKZc/EBO4tlemYiM/GfopcgV3DZvZmWMsh/KB3ixx4+rOUAgNp
pgs6fw71IRLY6zuqzoi2XUgcF6eacQfVmZw/PpkH2pOT2m/wtqBvQAHf4sQtfDhfrOxeC5bsskTs
P6WLg4kFawuoqDGVEXHPKU9AGVVahm5Ie531KhyB4yd4hqt8iMkjZ4trNUU14TunsG4+UjyHgFav
5/nP+UiR1juxXJ3fWgzIazEL5FYIGeFTs7BWzZzhrgT7+es0gQEKQaLbWTtXjbIAf24nGqYFzZtY
khkoym64Dp0YLpjTf7fOGxZsR/1f8t5YNPSIMmyukLDNUFiVZGudBiZEZvogkv2W7g5IfXh6Z85E
y3j7XwWUuIfxd/ivcqswfvB2vvIghfA/1i77UPFsiWehIRv0bH3U5Hfmt/8Isl2z36wDFCBH7iPn
92OjHr+fUDDvQjkL7BnV8fJgjMhYRVB2gPz2/yJ2/Wbyg82eOw8I9z3LdwTmSeiTZ8hqh70joT0g
FlvcrPLaiZaTi0Qujm4BIA+NmCOnlqgkAKwTBMa6HAdEuNmbTWa4L/30fylSEPq4M+JlDKUW5RH/
YMPHEbKXSAdr5UziK5E2hYP7TpFhprEFxwIC05PUmSW3zUKFRThbONW3rwP2lXSE8N+VrAdrRWye
6UlrPzC8ixvIlj50KDo8ZQpyz6DKujXAV3qPQ8aynRgq0ic6aKFHbnoFqBz69HicJCt+vHEsqEQe
7q58ybHzu73kgy0wxNGrZEqxDwPAUEA5ovGZqqr33xEm3g5OqUosvu/ba3O3OS+Iij/veEW8N6Il
jSE9dFisMGodLc9iWJf0WfuogEUIe2l+mnpGTz4Bj6pRDrUzYK9OMXZAg0CLRpEzDHz0hEFwTQwW
r36+uKU+kkCbZ8phnPz8zgBC5VNFQJgZns3NGuIDyGBk+Q4+lPgHRzpuMUZtIQe1HUe7rgCCveWJ
o2VHNYqJAVH5cH0WB1FdkAb9dv2rlTAsT+XccQKivP2l/a2AQ0bzExeYzImC7XuK+yk9+eSwoVgR
jjEjWEh1Dlrog2p+BrMVN+ggZU8JxrQJkRNBH5nWUBnpX8IFAW/P5OhZ/B8K1PpkASJMgKmi1PRv
2iy06FcDI/MFEZOCxfsxQpSggsYvu1vjY8+3FSHxXftyBgQZqbNFsbZJAR1fkklq+dNTHwxcR7Vc
ILy76XC7mrAwRHo4qOQkk5n9VDr6gsoj8hDTjH+6wofele97oqXQY58TGNwg5uV3s1MzqWmK3zaC
puD4mNIAnwq8wTX7PuayqwHBt+TytTUOzjhZEDfOcN0mV5bPJ8FOlSeR6MYSOwNtToecBJc4onGL
AhymEBeevRnskQdB6SNa+c2cOTXJxAY4lCodbxWX4YD/dv8Aats243ttOKA+TcmbYqyrIzvumcJD
65+5nJUTU7oEgh3oBfmQwmmbIwlC10k7e+wrtwP80Fwx2qrvMfJIitdblS6odxF3QZ3dGvadDdSe
siPMFIAeiCa0eTO5sowxBBlQ3mcLkfVrlV4vX0RieQhLu7ZbSpJ/7slVSBeiRmFhnDDKODhSR+Yc
v1845qFuz/ouISLx2fKvAiPecFjpOaKcOFO+eZA3W0pmEmDf+UUQaohkmzSh9p9GQRVPQJEb4L47
m6SDc1dkpqQyrVyd0olr5jnvdE1GtXnabrzi5XRKFuOEHmAQWIqw3qbDayM0ZRZ0JdR+L80wPLE1
VW71vYpWrozZanmnw+WTLGQ71Pdq1op2tKB+RMj8CMYP2TvOmwHp30jtRdaSEEjpM+mGv96JWgxL
mTjsV4ig8Rmcx9A+9s0mT/WhwBS3u39KxbWv9dI+qikjFiSOTGCDr2+uLQlc0Q12EHcKJ43GiaDC
Oq0uVN3Y7IvabUU/blgQdAWzdM/p9/fKhyRvrt0mU1IVk7oYiJeByFSZxcksNmEgnFWOBpLh2ubA
W8Ba0TWSICFEpwIdn1kBggzsklB7rarNC2erONGBuDNQfUxt+5LzcdAgYPOpc4pOXdLe7Ur/8Dmz
zSqMj8j4QEtvf+iu+MD78RV8k+YrFKDQrvg5RgMnnakFum2K5TElqnU0csTowrDc9Z/0rby9C7nt
kAJXon5hNptoVZXBMqJ/8c4p2BzF3DYlGQEhaNkB3LQjjvXWkp91GHStZOLOJMKYEAPq7lVMAgfg
A+4JhPWqKNrJ8G5Nn9c/klQH+m7Tdo/HWXSviVK1yZAGVk/VUN4/yAvWxl5jS/+GRjouf/5huoMr
g1xOKt51XIcmPnPyUSr+RY4QzPAlF8V1+fwb9gJMdng8a5xONyawn1JYt4x1o/Ljy/toebkyPPjt
4lIVbpPo7AMsitp7yihZk7BBQqQ/ZTY79G7TmykIGPnNLfqLlLZ3lKaZuI/8sNePofVpus/0k625
UuHX5fzmL8slxjQMUIR80IqPxIz/oqxNkak9d5zO6TXtfLqMkNYgIaCQh3JZ5KwTFHaZ8H2DDn+Z
MtmFWCJZ3EH83HR4SjpcIe10RyVWMLVSwZ2We9MxOVDE618mu50nQoYRhvfbVaesiy8PYxc+VXEy
NmRHja9Mz/PYVPUVudWGIaP6Bp/0xJrIEXodr9i7q/XoEUuCj8LgkZJ5o9TF61r9Ad0d96i66pGt
oNDtCcmW15YCs/naJ6pA1vazD9qGMdANzotF9vbVBbNkCPfRiJF/D/q/ATcSVimkc26pGiTcijWJ
fGtKsCGzzT3sM2t9MeBylOdCzblU8on5r2cYM6wPAk0VEtxqi9JzmFc0HbJZ6H5e28naR+jMSLXm
rCgVs16PL/R8oQsehOtAM25RJDcZVWkQ6+X/bSKPKWN0NwJK02pcMNIHTwJRYjaZT1fkxZJP5LRj
ItVv2lM1It+b2BS0iYil51TUcSXUKMD4Eua+KXxOCa9mAcisfgqnK+m3u82sXLAc1ariTOfF5FpK
oxK0lYCqCEiLW0YPvltzVbXiNrUAhhgiTWP/T/4kALJF3pv+a+mg5hToEK+Lz8gs41PHktHGarur
JK5iEMJkPHlUBQCMWAhhyhsAjvasMwEUgA4Jp51yNNC41FcjSKJt61a2TRuaORA/ihSKipABM4ZR
8VKRtAvh0CPdh8Y41nokTKOmVq04AWHHbbeME+HJjf9OQ+Zctdpb0lZlzB93RlxuesD91fq90Y2e
LO/sCYRayLEouR62Fu8v1PcglzJiLE+actVbK65AIgc/MzKF3H0e5+iivcVd26RAxUPQYv3vVpa/
UgxeqokTitHWwpmM6KFkDp9KjYKegICA8L0Qy3rDZfVDyo0Km6ku7Mz0h56opHShaFpfrk/40iJe
txgvif0kP4I1bm5Lgpz8fo06GA5HaA2J/qqAC+ZR60zYONuGkcVQ2erJD8Wbb4jb3vVM+duBz2Iq
DozkE62nJdeIYC1/vVkdtgvka/+3LzcoZLzVEeBcMc2DH9FeExVYyn9znyBDJR/N4y9itu2pbdiN
2jcUyFSgCxkys1oRSlCwG2naBmQVJBsDkrT2MxmQJR461JSpPO72SR0kwLFvbC9vQQY5+6esnMQ2
vCkTzARGhpPSpoBq9dQxfG+VRlR2MEybxPdebMgWWnnFC14FADBcnhd3CK1itkm03YRc5LMqgyKb
RjXCfK4cMNHS5GOzUGoTAl//fNpKeoZeIFKbjzIKAbP/9SV6lcy1Buyi3fIBraryxG1+9HMOBIq/
qY3xiele3QGq+D0Pz9eHhzatWnqX6ZFB5poIKMrfRvKcunaibayw2wyT/yF4nb2WNKuaRBQ/I8ak
paJTEIqcCGOll+9JaTteZ7EkxZAJe9048NH3CrGjKoiLj11Afl7QrC4s7W55KC3LCu9JYxUBKGNH
Me2tYhSzdUr/rkIYYs+EqlV/cLDUMC6NHXeam5ezHGFouN8O11I+CFLzzGhb39OPr6L0TPdzC5yS
ls4+di236vu3ZRC1gxl4l0DK5PqVNGoAij6PXfn4BDtjS5jn+TyJ2fOsuWj8j7ISfW6M16sHqBe3
h+skCaIQ5y+pj7hh6+XQeXwUQXVyhLjtiNx2YmyY7FkVZebvd0UhhUC1EpHaJ/gCiWJCBrjFYHO+
ccCiX8Ieo6HkGTXNsPo6ZQb1vmKsqQI+P8aLOfbqDmiPD1y1G9dWcc7eJQHRu0MHCIVeCubK+3vm
s6K4Y5Lz2GB5dENZVmdHO69yLklcGyboHBlcJAeuC2bwjk1Nxl0xGdO2ukXX5unJBmZquaNQCb0E
tHVgF3nP04WWlyn1sumNQCChOdL4N17lbMK2m3Tho3qj6gLoQFyx2fq+a9xpln51hwlLVLUBDpe8
MrpZqEN4cn40qks66npFI12yxWmSOfRcUq7Y/YjppjKlnXbzbaA2CK9f60z6jb3Jv5uXnvu9K5d6
UWI/kyL72bNXKbmpyofaUtWbM+naNrSY1Do1xeiV730hUQ+J23juZ0SO1AUjc28nUe5v9VZVsQEE
FOVC+C6HtrFmxjVYtW0AJxdTTEQMDkVoAWm2fiijB8FySL2qJskjNCQbiyMj+l4sPBUGyIl/Zlp7
oLYvpAgEQlCUMDK0VzbjDTDMqNN9
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
