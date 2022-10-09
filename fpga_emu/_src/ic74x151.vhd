-- 8 to 1 mux https://www.ti.com/lit/ds/symlink/sn74ls151.pdf
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ic74x151 is
  port(
    port1  : in  std_ulogic;
    port2  : in  std_ulogic;
    port3  : in  std_ulogic;
    port4  : in  std_ulogic;
    port5  : out std_ulogic;
    port6  : out std_ulogic;
    port7  : in  std_ulogic;
    port8  : in  std_ulogic;
    port9  : in  std_ulogic;
    port10 : in  std_ulogic;
    port11 : in  std_ulogic;
    port12 : in  std_ulogic;
    port13 : in  std_ulogic;
    port14 : in  std_ulogic;
    port15 : in  std_ulogic;
    port16 : in  std_ulogic
    );
end entity;

architecture rtl of ic74x151 is

  signal address : unsigned(2 downto 0);
  signal data    : std_ulogic_vector(7 downto 0);
begin
  address <= (port9, port10, port11);
  data    <= (port12, port13, port14, port15, port1, port2, port3, port4);

  port6 <= not port5;
  p_comb : process(all)
  begin
    port5 <= data(to_integer(address));
    if port7 then
      port5 <= '1';
    end if;
  end process;
end architecture;
