library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench is
end entity;

architecture rtl of testbench is
  signal s_clk100  : std_ulogic := '0';
  signal clkRam    : std_ulogic;
  signal clkEEPROM : std_ulogic;

  signal oszClk       : std_ulogic           := '0';
  signal oszClkDiv    : unsigned(1 downto 0) := "00";
  signal clkRamDiv    : unsigned(1 downto 0) := "10";
  signal clkEEPROMDiv : unsigned(1 downto 0) := "11";

  -- 1 is closed, 0 is open
  signal btnStep            : std_ulogic := '0';
  signal swInstrNCycle      : std_ulogic := '0';
  signal swStepNRun         : std_ulogic := '0';
  signal swEnableBreakpoint : std_ulogic := '1';
  signal btnReset           : std_ulogic := '0';

  signal cathodes : std_ulogic_vector(7 downto 0);
  signal anodes   : std_ulogic_vector(7 downto 0);
  signal switches : unsigned(7 downto 0) := x"06";

  signal i_bus       : std_ulogic_vector(7 downto 0);
  signal o_bus       : std_ulogic_vector(7 downto 0);
  signal i_busNOE    : std_ulogic;
  signal o_ioNCE     : std_ulogic;
  signal o_ioAddress : std_ulogic_vector(7 downto 0);
  signal o_output    : std_ulogic_vector(7 downto 0);
  signal o_ioNOE     : std_ulogic;
  signal o_ioNWE     : std_ulogic;
  signal resetn      : std_ulogic;

  signal i_serialIn  : std_ulogic;
  signal o_serialOut : std_ulogic;
begin

  s_clk100 <= not s_clk100 after 100 ns;  -- 5MHz


  inst_clk5Mhz : entity work.clk_wiz_5Mhz
    port map(
      clk_in1   => s_clk100,
      clk5      => oszClk,
      clkRam    => clkRam,
      clkEEPROM => clkEEPROM
      );

  p_oszClk : process(oszClk)
  begin
    if rising_edge(oszClk) then
      oszClkDiv <= oszClkDiv + 1;
    end if;
  end process;

  p_clkRam : process(clkRam)
  begin
    if rising_edge(clkRam) then
      clkRamDiv <= clkRamDiv + 1;
    end if;
  end process;

  p_clkEEPROM : process(clkEEPROM)
  begin
    if rising_edge(clkEEPROM) then
      clkEEPROMDiv <= clkEEPROMDiv + 1;
    end if;
  end process;


  inst_generated : entity work.generated
    port map(
      i_clk100                  => s_clk100,
      i_oszClk                  => oszClkDiv(1),
      i_asyncRamSpecialClock    => clkRamDiv(1),
      i_asyncEEPROMSpecialClock => clkEEPROMDiv(1),
      i_resetn                  => resetn,

      -- 1 is closed, 0 is open
      i_btnStep            => btnStep,
      i_swInstrNCycle      => swInstrNCycle,
      i_swStepNRun         => swStepNRun,
      i_swEnableBreakpoint => swEnableBreakpoint,
      i_btnReset           => btnReset,
      i_breakpointAddress  => x"0028",


      i_bus    => i_bus,
      o_bus    => o_bus,
      i_busNOE => i_busNOE,

      o_output => o_output,

      o_ioNCE     => o_ioNCE,
      o_ioAddress => o_ioAddress,
      o_ioNOE     => o_ioNOE,
      o_ioNWE     => o_ioNWE,

      o_cathodes => cathodes,
      o_anodes   => anodes,
      i_switches => std_ulogic_vector(switches)
      );

  uart : entity work.expansion_uart
    port map(
      i_clk100    => s_clk100,
      i_clkDesign => clkRamDiv(1),
      i_resetn    => resetn,

      i_bus    => o_bus,
      o_bus    => i_bus,
      o_busNOE => i_busNOE,

      i_ioNCE     => o_ioNCE,
      i_ioAddress => o_ioAddress,
      i_ioNOE     => o_ioNOE,
      i_ioNWE     => o_ioNWE,

      i_serialIn  => i_serialIn,
      o_serialOut => o_serialOut
      );

  p_switches : process
  begin
    for i in 0 to 299 loop
      wait until rising_edge(oszClk);
    end loop;
    switches <= switches + 1;
  end process;

  p_btnStep : process
  begin
    for i in 0 to 14 loop
      wait until rising_edge(oszClk);
    end loop;
    btnStep <= not btnStep;
  end process;

  p_reset : process
  begin
    resetn <= '0';
    for i in 0 to 9 loop
      wait until rising_edge(oszClk);
    end loop;
    resetn <= '1';
    wait;
  end process;

-- `define ass(val) if (o_output !== val) begin \
--   $display("output expected %d but is %d", val, o_output); \
--   @(posedge oszClk); \
--   @(posedge oszClk); \
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
