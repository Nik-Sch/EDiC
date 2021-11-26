module uart_rx(
  input wire i_clk,
  input wire i_resetn,

  input wire i_serialIn,
  output reg o_valid,
  output reg[7:0] o_data
);
localparam integer CLK_DIVIDE = 868; // baud 115200

`define s_IDLE  2'b00
`define s_START 2'b01
`define s_DATA  2'b10
`define s_STOP  2'b11

reg[1:0] state;
reg[15:0] r_clkCount;
reg[2:0] r_dataCount;

always @(posedge i_clk, negedge i_resetn) begin

  r_clkCount <= r_clkCount + 1;

  case (state)
    `s_IDLE: begin
      o_valid <= 0;
      if (~i_serialIn) begin
        r_clkCount <= 0;
        state <= `s_START;
      end
    end
    `s_START: begin
      if (r_clkCount == (CLK_DIVIDE >> 1)) begin
        r_clkCount <= 0;
        r_dataCount <= 0;
        state <= `s_DATA;
      end
      if (i_serialIn) begin // if i_serialIn gets high too early, it probably was a glitch
        state <= `s_IDLE;
      end
    end
    `s_DATA: begin
      if (r_clkCount == CLK_DIVIDE) begin
        o_data[r_dataCount] <= i_serialIn;
        r_clkCount <= 0;
        if (r_dataCount == 7) begin
          state <= `s_STOP;
        end else begin
          r_dataCount <= r_dataCount + 1;
        end
      end
    end
    `s_STOP: begin
      if (r_clkCount == CLK_DIVIDE) begin
        if (i_serialIn) begin
          o_valid <= 1;
        end
        state <= `s_IDLE;
      end
    end
  endcase

  if (~i_resetn) begin
    state <= `s_IDLE;
    o_valid <= 0;
    r_clkCount <= 0;
  end
end

endmodule
