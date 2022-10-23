library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity icBerg10 is
  port(
    port1  : in  std_ulogic := '0';
    port2  : in  std_ulogic := '0';
    port3  : in  std_ulogic := '0';
    port4  : out std_ulogic;
    port5  : in  std_ulogic := '0';
    port6  : out std_ulogic;
    port7  : in  std_ulogic := '0';
    port8  : out std_ulogic;
    port9  : in  std_ulogic := '0';
    port10 : in  std_ulogic := '0'
    );
end entity;

architecture rtl of icBerg10 is
begin
  port4 <= port3;
  port6 <= port5;
  port8 <= port7;
end architecture;
