module expansion_uart (
  input wire i_clk100,
  input wire i_clkDesign,
  input wire i_resetn,

  input wire [7:0] i_bus,
  output reg [7:0] o_bus,
  output wire o_busNOE,

  input wire i_ioNCE,
  input wire [7:0] i_ioAddress,
  input wire i_ioNOE,
  input wire i_ioNWE,

  input wire i_serialIn,
  output wire o_serialOut
);
wire s_selUartN;

wire [7:0] s_dataRx;
wire s_validRx;
reg r_rxRdEn;
wire [7:0] s_fifoRxData;
wire s_fifoRxEmpty;

wire s_txReady;
reg [7:0] r_fifoTxData;
wire [7:0] s_dataTx;
reg r_fifoTxWrEn;
wire s_fifoTxFull;

assign s_selUartN = i_ioNCE | (i_ioAddress[7:3] != 1);
assign o_busNOE = i_ioNOE | s_selUartN;

always @(posedge i_clkDesign, negedge i_resetn) begin
  r_fifoTxWrEn <= 0;
  r_rxRdEn <= 0;

  if (~s_selUartN) begin
    // write
    if (~i_ioNWE) begin
      case (i_ioAddress[2:0])
        3'h3: begin // write txFifo data
          r_fifoTxWrEn <= 1;
          r_fifoTxData <= i_bus;
        end
        default: begin
          $display("uart: writing unknown address %x. @%01t", i_ioAddress, $time);
        end
      endcase
    end
    // read
    if (~i_ioNOE) begin
      case (i_ioAddress[2:0])
        3'h1: begin // read rxFifo empty
          o_bus <= {7'h0, s_fifoRxEmpty};
        end
        3'h2: begin // read txFifo full
          o_bus <= {7'h0, s_fifoTxFull};
        end
        3'h3: begin // read rxFifo data
          r_rxRdEn <= 1;
          o_bus <= s_fifoRxData;
        end
        default: begin
          $display("uart: reading unknown address %x. @%01t", i_ioAddress, $time);
        end
      endcase
    end
  end
  if (~i_resetn) begin
    r_fifoTxWrEn <= 0;
    r_rxRdEn <= 0;
  end
end

uart_fifo_rx inst_fifo_rx (
  .rst(~i_resetn),
  .wr_clk(i_clk100),
  .din(s_dataRx),
  .wr_en(s_validRx),
  .full(),

  .rd_clk(i_clkDesign),
  .rd_en(r_rxRdEn),
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