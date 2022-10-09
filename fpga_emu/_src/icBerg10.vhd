library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity icBerg10 is
  port(
    port1  : in  std_ulogic;
    port2  : in  std_ulogic;
    port3  : in  std_ulogic;
    port4  : out std_ulogic;
    port5  : in  std_ulogic;
    port6  : out std_ulogic;
    port7  : in  std_ulogic;
    port8  : out std_ulogic;
    port9  : in  std_ulogic;
    port10 : in  std_ulogic
    );
end entity;

architecture rtl of icBerg10 is
begin
  port4 <= port3;
  port6 <= port5;
  port8 <= port7;
end architecture;
