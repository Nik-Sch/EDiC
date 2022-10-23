-- octal register with clear https://www.ti.com/lit/ds/symlink/sn74ls273.pdf
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ic74x273 is
  port(
    port1   : in  std_ulogic;
    port2   : out std_ulogic;
    port3   : in  std_ulogic;
    port4   : in  std_ulogic;
    port5   : out std_ulogic;
    port6   : out std_ulogic;
    port7   : in  std_ulogic;
    port8   : in  std_ulogic;
    port9   : out std_ulogic;
    port10  : in  std_ulogic;
    port11  : in  std_ulogic;
    port12  : out std_ulogic;
    port13  : in  std_ulogic;
    port14  : in  std_ulogic;
    port15  : out std_ulogic;
    port16  : out std_ulogic;
    port17  : in  std_ulogic;
    port18  : in  std_ulogic;
    port19  : out std_ulogic;
    port20  : in  std_ulogic;
    port111 : in  std_ulogic
    );
end entity;

architecture rtl of ic74x273 is
begin
  p_reg : process(port11, port1)
  begin
    if rising_edge(port11) then
      if not port111 then
        port2  <= port3;
        port5  <= port4;
        port6  <= port7;
        port9  <= port8;
        port12 <= port13;
        port15 <= port14;
        port16 <= port17;
        port19 <= port18;
      end if;
    end if;

    if not port1 then
      port2  <= '0';
      port5  <= '0';
      port6  <= '0';
      port9  <= '0';
      port12 <= '0';
      port15 <= '0';
      port16 <= '0';
      port19 <= '0';
    end if;
  end process;

end architecture;
