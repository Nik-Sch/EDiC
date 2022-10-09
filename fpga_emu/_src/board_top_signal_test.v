module board_top_signal_test(
  input wire i_clk100,

  // fpga buttons/switches
  input wire i_btnStep,
  input wire i_swInstrNCycle,
  input wire i_swStepNRun,
  input wire i_swEnableBreakpoint,
  input wire i_btnReset, // active low

  // included IO at 0xfe00
  output wire [7:0] o_cathodes, // dot + gfedcba
  output wire [7:0] o_anodes,
  input wire [7:0] i_switches,

  // expansion connector
  output reg [7:0] o_ramAddress,
  inout wire [7:0] io_bus,
  output reg o_ioNCE,
  output reg o_ctrlMemRamNOE,
  output reg o_nreset,
  output reg o_ctrlMemRamNWE,
  output reg o_clk,

  // tri-color led
  output reg o_ld17_r,
  output reg o_ld17_g,
  output reg o_ld17_b,

  // fpga debug
  output wire [7:0] o_r0,
  output wire [7:0] o_r1,

  // for included uart
  input wire i_serialIn,
  output wire o_serialOut
);

reg s_led;
reg [2:0] r_pwmCounter;
reg [7:0] o_bus;

// switches [6:5] connector select:
//   00: JXADC (address)
//   01: JA (bus)
//   02: JB (control)
// switches[4:2] pin select
//   bus & address: index
//   JB:
//     000: NCE
//     001: NOE
//     010: NRES
//     011: NWE
//     100: clk
// switches[1] in/output for bus
//   0: output
//   1: input
// switches[0] data

genvar i;
generate
  for (i = 0; i < 8; i = i + 1) begin
    assign io_bus[i] = (i_switches[1] === 0 && i_switches[6:5] === 2'b01 && i_switches[4:2] == i) ? o_bus[i] : 1'bz;
  end
endgenerate

always @* begin
  o_ramAddress <= 0;
  o_bus <= 8'hff;
  o_ioNCE <= 0;
  o_ctrlMemRamNOE <= 0;
  o_nreset <= 0;
  o_ctrlMemRamNWE <= 0;
  o_clk <= 0;

  s_led <= 0;

  if (i_switches[1] === 0) begin
    // output
    if (i_switches[6:5] === 2'b00) begin
      // address
      o_ramAddress[i_switches[4:2]] <= i_switches[0];
    end
    if (i_switches[6:5] === 2'b01) begin
      // bus
      o_bus[i_switches[4:2]] <= i_switches[0];
    end
    if (i_switches[6:5] === 2'b10) begin
      // control
      case (i_switches[4:2])
        3'b000: o_ioNCE <= i_switches[0];
        3'b001: o_ctrlMemRamNOE <= i_switches[0];
        3'b010: o_nreset <= i_switches[0];
        3'b011: o_ctrlMemRamNWE <= i_switches[0];
        3'b100: o_clk <= i_switches[0];
      endcase
    end
  end

  // input && bus
  if (i_switches[1] === 1 && i_switches[6:5] === 2'b01) begin
    s_led <= io_bus[i_switches[4:2]];
  end
end

always @(posedge i_clk100) begin
  o_ld17_g <= 0;
  o_ld17_b <= 0;
  r_pwmCounter <= r_pwmCounter + 1;
  // 50% duty cycle
  o_ld17_r <= r_pwmCounter[1] ? s_led : 0;
end

endmodule