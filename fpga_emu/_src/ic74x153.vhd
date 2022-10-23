-- 2 * 4 to 1 mux https://www.ti.com/lit/ds/symlink/sn74ls153.pdf
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ic74x153 is
  port(
    port1  : in  std_ulogic;
    port2  : in  std_ulogic;
    port3  : in  std_ulogic;
    port4  : in  std_ulogic;
    port5  : in  std_ulogic;
    port6  : in  std_ulogic;
    port7  : out std_ulogic;
    port8  : in  std_ulogic;
    port9  : out std_ulogic;
    port10 : in  std_ulogic;
    port11 : in  std_ulogic;
    port12 : in  std_ulogic;
    port13 : in  std_ulogic;
    port14 : in  std_ulogic;
    port15 : in  std_ulogic;
    port16 : in  std_ulogic
    );
end entity;

architecture rtl of ic74x153 is

  signal address : unsigned(1 downto 0);
  signal data1   : std_ulogic_vector(3 downto 0);
  signal data2   : std_ulogic_vector(3 downto 0);
begin
  address <= (port2, port14);
  data1   <= (port3, port4, port5, port6);
  data2   <= (port13, port12, port11, port10);

  p_comb : process(all)
  begin
    port7 <= data1(to_integer(address));
    port9 <= data2(to_integer(address));
    if port1 then
      port7 <= '0';
    end if;
    if port15 then
      port9 <= '0';
    end if;
  end process;
end architecture;
