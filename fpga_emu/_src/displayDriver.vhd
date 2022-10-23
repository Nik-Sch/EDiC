library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity displayDriver is
  generic (
    COUNTER_MAX : integer := 4000       -- 500ns * 4000 = 2ms
    );
  port(
    i_clk    : in std_ulogic;           -- 5MHz
    i_resetn : in std_ulogic;

    data        : in  std_ulogic_vector(8 * 4 - 1 downto 0);
    enableDigit : in  std_ulogic_vector(7 downto 0);
    dots        : in  std_ulogic_vector(7 downto 0);
    cathodes    : out std_ulogic_vector(7 downto 0);  -- dot + gfedcba
    anodes      : out std_ulogic_vector(7 downto 0)
    );
end entity;

--  a
-- f b
--  g
-- e c
--  d  dot
architecture rtl of displayDriver is
  signal r_currentDigit : unsigned(2 downto 0)           := (others => '0');
  signal r_counter      : integer range 0 to COUNTER_MAX := 0;
  signal cathodesAH     : std_ulogic_vector(7 downto 0);
  signal anodesAH       : std_ulogic_vector(7 downto 0);

  signal s_bits : std_ulogic_vector(3 downto 0);
begin


  s_bits   <= data(4*(to_integer(r_currentDigit)+1)-1 downto 4*to_integer(r_currentDigit));
  anodes   <= not anodesAH;
  cathodes <= not cathodesAH;

  p_reg : process(i_clk, i_resetn)
  begin
    if rising_edge(i_clk) then
      r_counter <= r_counter + 1;
      if r_counter = COUNTER_MAX then
        r_counter      <= 0;
        r_currentDigit <= r_currentDigit + 1;
      end if;

      anodesAH                             <= (others => '0');
      anodesAH(to_integer(r_currentDigit)) <= '1';

      cathodesAH(7) <= dots(to_integer(r_currentDigit));
      cathodesAH(6) <= '1' when s_bits = 4x"2"  -- g
                       or s_bits = 4x"3"
                       or s_bits = 4x"4"
                       or s_bits = 4x"5"
                       or s_bits = 4x"6"
                       or s_bits = 4x"8"
                       or s_bits = 4x"9"
                       or s_bits = 4x"a"
                       or s_bits = 4x"b"
                       or s_bits = 4x"d"
                       or s_bits = 4x"e"
                       or s_bits = 4x"f" else '0';
      cathodesAH(5) <= '1' when s_bits = 4x"0"  -- f
                       or s_bits = 4x"4"
                       or s_bits = 4x"5"
                       or s_bits = 4x"6"
                       or s_bits = 4x"8"
                       or s_bits = 4x"9"
                       or s_bits = 4x"a"
                       or s_bits = 4x"b"
                       or s_bits = 4x"c"
                       or s_bits = 4x"e"
                       or s_bits = 4x"f" else '0';
      cathodesAH(4) <= '1' when s_bits = 4x"0"  -- e
                       or s_bits = 4x"2"
                       or s_bits = 4x"6"
                       or s_bits = 4x"8"
                       or s_bits = 4x"a"
                       or s_bits = 4x"b"
                       or s_bits = 4x"c"
                       or s_bits = 4x"d"
                       or s_bits = 4x"e"
                       or s_bits = 4x"f" else '0';
      cathodesAH(3) <= '1' when s_bits = 4x"0"  -- d
                       or s_bits = 4x"2"
                       or s_bits = 4x"3"
                       or s_bits = 4x"5"
                       or s_bits = 4x"6"
                       or s_bits = 4x"8"
                       or s_bits = 4x"9"
                       or s_bits = 4x"b"
                       or s_bits = 4x"c"
                       or s_bits = 4x"d"
                       or s_bits = 4x"e" else '0';
      cathodesAH(2) <= '1' when s_bits = 4x"0"  -- c
                       or s_bits = 4x"1"
                       or s_bits = 4x"3"
                       or s_bits = 4x"4"
                       or s_bits = 4x"5"
                       or s_bits = 4x"6"
                       or s_bits = 4x"7"
                       or s_bits = 4x"8"
                       or s_bits = 4x"9"
                       or s_bits = 4x"a"
                       or s_bits = 4x"b"
                       or s_bits = 4x"d" else '0';
      cathodesAH(1) <= '1' when s_bits = 4x"0"  -- b
                       or s_bits = 4x"1"
                       or s_bits = 4x"2"
                       or s_bits = 4x"3"
                       or s_bits = 4x"4"
                       or s_bits = 4x"7"
                       or s_bits = 4x"8"
                       or s_bits = 4x"9"
                       or s_bits = 4x"a"
                       or s_bits = 4x"d" else '0';
      cathodesAH(0) <= '1' when s_bits = 4x"0"  -- a
                       or s_bits = 4x"2"
                       or s_bits = 4x"3"
                       or s_bits = 4x"5"
                       or s_bits = 4x"6"
                       or s_bits = 4x"7"
                       or s_bits = 4x"8"
                       or s_bits = 4x"9"
                       or s_bits = 4x"a"
                       or s_bits = 4x"c"
                       or s_bits = 4x"e"
                       or s_bits = 4x"f" else '0';

      if not enableDigit(to_integer(r_currentDigit)) then
        cathodesAH(6 downto 0) <= (others => '0');
      end if;
    end if;

    if not i_resetn then
      r_currentDigit <= (others => '0');
      r_counter      <= 0;
    end if;
  end process;
end architecture;
