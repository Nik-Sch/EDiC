module uart_tx(
  input wire i_clk,
  input wire i_resetn,

  input wire i_valid,
  input wire [7:0] i_data,
  output wire o_ready,
  output reg o_serialOut
);
localparam integer CLK_DIVIDE = 868; // baud 115200

`define s_UART_TX_IDLE 2'b00
`define s_UART_TX_DATA 2'b01
`define s_UART_TX_DATA_LAST 2'b10
`define s_UART_TX_STOP 2'b11

reg[1:0] r_state;
reg[7:0] r_data;
reg[$clog2(CLK_DIVIDE):0] r_clkCount;
reg[2:0] r_dataCount;
reg[2:0] r_stopCount;


assign o_ready = r_state == `s_UART_TX_IDLE;

always @(posedge i_clk, negedge i_resetn) begin

  r_clkCount <= r_clkCount + 1;

  case (r_state)
    `s_UART_TX_IDLE: begin
      o_serialOut <= 1; // idle in high (stop)
      if (i_valid) begin
        r_clkCount <= 0;
        r_data <= i_data;
        o_serialOut <= 0; // start bit is low
        r_dataCount <= 0;
        r_state <= `s_UART_TX_DATA;
      end
    end
    `s_UART_TX_DATA: begin
      if (r_clkCount == CLK_DIVIDE) begin
        o_serialOut <= r_data[r_dataCount];
        r_clkCount <= 0;
        if (r_dataCount == 7) begin
          r_state <= `s_UART_TX_DATA_LAST;
        end else begin
          r_dataCount <= r_dataCount + 1;
        end
      end
    end
    `s_UART_TX_DATA_LAST: begin
      if (r_clkCount == CLK_DIVIDE) begin
        r_clkCount <= 0;
        o_serialOut <= 1;
        r_stopCount <= 0;
        r_state <= `s_UART_TX_STOP;
      end
    end
    `s_UART_TX_STOP: begin
      if (r_clkCount == CLK_DIVIDE) begin
        r_stopCount <= r_stopCount + 1;
        if (r_stopCount == 1) begin // 2 stop bit
          r_state <= `s_UART_TX_IDLE;
        end
      end
    end
  endcase

  if (~i_resetn) begin
    r_state <= `s_UART_TX_IDLE;
    o_serialOut <= 1;
    r_stopCount <= 0;
    r_clkCount <= 0;
  end
end

endmodule
