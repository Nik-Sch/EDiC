library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IC74867_tb is
end IC74867_tb;

architecture behavior of IC74867_tb is

  -- Component Declaration for the Unit Under Test (UUT)

  component IC74867
    port(
      Q_in  : in  std_logic_vector(7 downto 0);
      Q_out : out std_logic_vector(7 downto 0);
      S     : in  std_logic_vector(1 downto 0);
      clk   : in  std_logic;
      nENT  : in  std_logic;
      nENP  : in  std_logic;
      nRCO  : out std_logic
      );
  end component;


  --Inputs
  signal Q_in : std_logic_vector(7 downto 0) := (others => '0');
  signal S    : std_logic_vector(1 downto 0) := (others => '0');
  signal clk  : std_logic                    := '0';
  signal nENT : std_logic                    := '0';
  signal nENP : std_logic                    := '0';

  --Outputs
  signal Q_out : std_logic_vector(7 downto 0);
  signal nRCO  : std_logic;

  -- Clock period definitions
  constant clk_period : time := 10 ns;

begin

  -- Instantiate the Unit Under Test (UUT)
  uut : IC74867 port map (
    Q_in  => Q_in,
    Q_out => Q_out,
    S     => S,
    clk   => clk,
    nENT  => nENT,
    nENP  => nENP,
    nRCO  => nRCO
    );

  -- Clock process definitions
  clk_process : process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process;


  -- Stimulus process
  stim_proc : process
  begin
    -- hold reset state for 100 ns.
    wait for 100 ns;

    wait for clk_period*10;

    --countup
    S <= "11";
    wait for clk_period*300;

    --reset
    S <= "00";
    wait for clk_period*2;

    --countdown
    S <= "01";
    wait for clk_period*300;

    --load
    S    <= "10";
    Q_in <= "00001111";
    wait for clk_period*10;

    assert false report "end of simulation" severity failure;
    wait;
  end process;

end;
