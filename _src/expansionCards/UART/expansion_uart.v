module expansion_uart (
  input wire i_clk100,
  input wire i_clkDesign,
  input wire i_resetn,

  input wire [7:0] i_bus,
  output reg [7:0] o_bus,
  output reg o_busNOE,

  input wire i_ioSelect,
  input wire [7:0] i_ioAddress,
  input wire i_ioNOE,
  input wire i_ioNWE,

  input wire i_serialIn,
  output wire o_serialOut
);

wire [7:0] s_dataRx;
wire s_validRx;
reg s_rxRdEn;
wire [7:0] s_fifoRxData;
wire s_fifoRxEmpty;

wire s_txReady;
reg [7:0] r_fifoTxData;
wire [7:0] s_dataTx;
reg r_fifoTxWrEn;
wire s_fifoTxFull;

always @(posedge i_clkDesign, negedge i_resetn) begin
  r_fifoTxWrEn <= 0;

  if (i_ioSelect && ~i_ioNWE) begin
    case (i_ioAddress)
      8'h03: begin // write txFifo data
        r_fifoTxWrEn <= 1;
        r_fifoTxData <= i_bus;
      end
      default: begin
        $display("uart: writing unknown address %x. @%01t", i_ioAddress, $time);
      end
    endcase
  end
  if (~i_resetn) begin
    r_fifoTxWrEn <= 0;
  end
end

always @* begin
  o_busNOE <= 1;
  s_rxRdEn <= 0;
  o_bus <= 0;

  if (i_ioSelect && ~i_ioNOE) begin
    case (i_ioAddress)
      // 00 is built in io
      8'h01: begin // read rxFifo empty
        o_busNOE <= 0;
        o_bus <= {7'h0, s_fifoRxEmpty};
      end
      8'h02: begin // read txFifo full
        o_busNOE <= 0;
        o_bus <= {7'h0, s_fifoTxFull};
      end
      8'h03: begin // read rxFifo data
        o_busNOE <= 0;
        s_rxRdEn <= 1;
        o_bus <= s_fifoRxData;
      end
      default: begin
        $display("uart: reading unknown address %x. @%01t", i_ioAddress, $time);
      end
    endcase
  end
end

uart_fifo_rx inst_fifo_rx (
  .rst(~i_resetn),
  .wr_clk(i_clk100),
  .din(s_dataRx),
  .wr_en(s_validRx),
  .full(),

  .rd_clk(i_clkDesign),
  .rd_en(s_rxRdEn),
  .dout(s_fifoRxData),
  .empty(s_fifoRxEmpty)
);

uart_rx inst_rx(
  .i_clk(i_clk100),
  .i_resetn(i_resetn),
  .i_serialIn(i_serialIn),
  .o_valid(s_validRx),
  .o_data(s_dataRx)
);


uart_fifo_tx inst_fifo_tx (
  .rst(~i_resetn),
  .wr_clk(i_clkDesign),
  .din(r_fifoTxData),
  .wr_en(r_fifoTxWrEn),
  .full(s_fifoTxFull),

  .rd_clk(i_clk100),
  .rd_en(s_txValid),
  .dout(s_dataTx),
  .empty(s_txEmpty)
);

assign s_txValid = s_txReady & ~s_txEmpty;

uart_tx inst_tx(
  .i_clk(i_clk100),
  .i_resetn(i_resetn),
  .o_serialOut(o_serialOut),
  .i_valid(s_txValid),
  .i_data(s_dataTx),

  .o_ready(s_txReady)
);
  
endmodule