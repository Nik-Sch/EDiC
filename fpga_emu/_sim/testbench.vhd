library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench is
end entity;

architecture rtl of testbench is
  signal s_clk100 : std_ulogic := '0';

  -- 1 is closed, 0 is open
  signal btnStep            : std_ulogic := '0';
  signal swInstrNCycle      : std_ulogic := '0';
  signal swStepNRun         : std_ulogic := '0';
  signal swEnableBreakpoint : std_ulogic := '1';

  signal cathodes : std_ulogic_vector(7 downto 0);
  signal anodes   : std_ulogic_vector(7 downto 0);
  signal switches : unsigned(9 downto 0) := 10x"06";

  signal io_bus      : std_ulogic_vector(7 downto 0);
  signal o_ioNCE     : std_ulogic;
  signal o_ioAddress : std_ulogic_vector(7 downto 0);
  signal o_output    : std_ulogic_vector(7 downto 0);
  signal resetn      : std_ulogic;

  signal i_serialIn  : std_ulogic;
  signal o_serialOut : std_ulogic;
  signal s_clk       : std_ulogic;
  signal r_txValid : std_ulogic;
  signal s_txReady : std_ulogic;
  signal r_txData : std_ulogic_vector(8 - 1 downto 0);
begin

  s_clk100 <= not s_clk100 after 100 ns;  -- 5MHz


  p_uart : process
    type t_byte_array is array (natural range <>) of std_ulogic_vector(7 downto 0);
    constant data: t_byte_array := (
      8x"69", -- 'i'
      -- send 15 instructions
      8x"00",
      8x"0f",
      -- instructions for the prng program
      8x"a0", 8x"00", 8x"0a",
      8x"f0", 8x"00", 8x"00",
      8x"91", 8x"00", 8x"00",
      8x"a1", 8x"00", 8x"07",
      8x"87", 8x"00", 8x"01",
      8x"a1", 8x"00", 8x"08",
      8x"a4", 8x"00", 8x"08",
      8x"84", 8x"00", 8x"1d",
      8x"f2", 8x"00", 8x"00",
      8x"b1", 8x"00", 8x"00",
      8x"f8", 8x"00", 8x"00",
      8x"f2", 8x"00", 8x"00",
      8x"b0", 8x"00", 8x"01",
      8x"f2", 8x"fe", 8x"00",
      8x"a0", 8x"00", 8x"0c"
    );
  begin
    resetn <= '0';
    r_txValid <= '0';
    for i in 0 to 100 loop
      wait until rising_edge(s_clk100);
    end loop;
    resetn <= '1';
    for i in 0 to 50 loop
      wait until rising_edge(s_clk100);
    end loop;
    report "Start sending uart";
    for i in data'range loop
      r_txValid <= '0';
      while s_txReady = '0' loop
        wait until rising_edge(s_clk100);
      end loop;
      r_txValid <= '1';
      r_txData <= data(i);
      wait until rising_edge(s_clk100);
      r_txValid <= '0';
      wait until rising_edge(s_clk100);
    end loop;
    report "New program sent.";

    for i in 0 to 1000 loop
      wait until rising_edge(s_clk100);
    end loop;
    resetn <= '0';
    for i in 0 to 100 loop
      wait until rising_edge(s_clk100);
    end loop;
    resetn <= '1';
    report "CPU resetted";
    wait;
  end process;
  inst_uart_tx : entity work.uart_tx
    generic map (
      g_CLK_DIVIDE => integer(100_000_000 / 2_000_000)
      )
    port map (
      i_clk       => s_clk100,
      i_resetn    => resetn,
      i_valid     => r_txValid,
      o_ready     => s_txReady,
      i_data      => r_txData,
      o_serialOut => i_serialIn
      );

  inst_board_top : entity work.board_top
    port map (
      i_clk100             => s_clk100,
      i_btnStep            => btnStep,
      i_swInstrNCycle      => swInstrNCycle,
      i_swStepNRun         => swStepNRun,
      i_swEnableBreakpoint => swEnableBreakpoint,
      i_btnReset           => resetn,
      o_cathodes           => cathodes,
      o_anodes             => anodes,
      i_switches           => std_ulogic_vector(switches),
      -- expansion
      o_ramAddress         => o_ioAddress,
      io_bus               => io_bus,
      o_ioNCE              => o_ioNCE,
      o_ctrlMemRamNOE      => open,
      o_nreset             => open,
      o_ctrlMemRamNWE      => open,
      o_clk                => s_clk,

      o_r0        => open,
      o_r1        => open,
      i_serialIn  => i_serialIn,
      o_serialOut => o_serialOut
      );


  p_switches : process
  begin
    for i in 0 to 299 loop
      wait until rising_edge(s_clk);
    end loop;
    switches <= switches + 1;
  end process;

  p_btnStep : process
  begin
    for i in 0 to 14 loop
      wait until rising_edge(s_clk);
    end loop;
    btnStep <= not btnStep;
  end process;

-- `define ass(val) if (o_output !== val) begin \
--   $display("output expected %d but is %d", val, o_output); \
--   @(posedge s_clk); \
--   @(posedge s_clk); \
--   $finish; \
-- end

-- verify test code
  p_verify : process
  begin
    -- @(posedge resetn);
    -- @(edge o_output); `ass(6);
    -- @(edge o_output); `ass(7);
    -- @(edge o_output); `ass(8);
    -- @(edge o_output); `ass(1);
    -- @(edge o_output); `ass(7);
    -- @(edge o_output); `ass(1);
    -- @(edge o_output); `ass(6);
    -- @(edge o_output); `ass(254);
    -- @(edge o_output); `ass(6);
    -- @(edge o_output); `ass(3);
    -- @(edge o_output); `ass(192);
    -- @(edge o_output); `ass(193);

    -- @(edge o_output); `ass(199);
    -- @(edge o_output); `ass(130);
    -- @(edge o_output); `ass(193);
    -- @(edge o_output); `ass(194);

    -- @(edge o_output); `ass(10);
    -- @(edge o_output); `ass(5);

    -- @(edge o_output); `ass(2);
    -- @(edge o_output); `ass(3);
    -- @(edge o_output); `ass(4);
    -- @(edge o_output); `ass(6);

    -- @(edge o_output); `ass(8);
    -- @(edge o_output); `ass(9);
    -- @(edge o_output); `ass(8);
    -- @(edge o_output); `ass(2);

    -- -- eq
    -- @(edge o_output); `ass(1);
    -- @(edge o_output); `ass(2);
    -- @(edge o_output); `ass(3);
    -- @(edge o_output); `ass(1);
    -- @(edge o_output); `ass(2);
    -- @(edge o_output); `ass(3);
    -- @(edge o_output); `ass(1);

    -- -- neq
    -- @(edge o_output); `ass(10);
    -- @(edge o_output); `ass(2);
    -- @(edge o_output); `ass(3);

    -- -- hs
    -- @(edge o_output); `ass(10);
    -- @(edge o_output); `ass(2);
    -- @(edge o_output); `ass(3);

    -- -- lo
    -- @(edge o_output); `ass(10);
    -- @(edge o_output); `ass(2);
    -- @(edge o_output); `ass(3);

    -- -- mi
    -- @(edge o_output); `ass(10);
    -- @(edge o_output); `ass(2);
    -- @(edge o_output); `ass(3);

    -- -- pl
    -- @(edge o_output); `ass(10);
    -- @(edge o_output); `ass(2);
    -- @(edge o_output); `ass(3);

    -- -- overflow
    -- @(edge o_output); `ass(10);
    -- @(edge o_output); `ass(2);
    -- @(edge o_output); `ass(3);
    -- @(edge o_output); `ass(10);
    -- @(edge o_output); `ass(2);
    -- @(edge o_output); `ass(3);

    -- -- no overflow
    -- @(edge o_output); `ass(10);
    -- @(edge o_output); `ass(2);
    -- @(edge o_output); `ass(3);

    -- -- higher
    -- @(edge o_output); `ass(10);
    -- @(edge o_output); `ass(2);
    -- @(edge o_output); `ass(3);

    -- -- lower or same
    -- @(edge o_output); `ass(10);
    -- @(edge o_output); `ass(2);
    -- @(edge o_output); `ass(3);

    -- -- greater equals
    -- @(edge o_output); `ass(10);
    -- @(edge o_output); `ass(2);
    -- @(edge o_output); `ass(3);

    -- -- greater than
    -- @(edge o_output); `ass(10);
    -- @(edge o_output); `ass(2);
    -- @(edge o_output); `ass(3);

    -- -- less equal
    -- @(edge o_output); `ass(10);
    -- @(edge o_output); `ass(2);
    -- @(edge o_output); `ass(3);

  -- -- less than
  -- @(edge o_output); `ass(10);
  -- @(edge o_output); `ass(2);
  -- @(edge o_output); `ass(3);
  -- @(posedge oszClk);
  -- $display("All tests successful.");
  -- $finish;
  end process;




end architecture;
