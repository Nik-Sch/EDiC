library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity countcell is
  generic (bitpos : integer := 0);
  port (                                --enp_and is CLA(0)
    CLA     : in  std_logic_vector (8 downto 0);
    CLA_o   : out std_logic;
    S       : in  std_logic_vector (1 downto 0);
    clk     : in  std_logic;
    nres    : in  std_logic;
    --enp_and : in  STD_LOGIC;
    bitload : in  std_logic;
    bitout  : out std_logic);
end countcell;

architecture Behavioral of countcell is

  signal anding_vec : std_logic_vector(8 downto 0);

  signal csa_anded : std_logic;         -- after CLA AND

  signal Q_int : std_logic;             -- d-ff data in
  signal Q_reg : std_logic;             -- registered

begin

  -- CLA AND
  anding_vec <= "111111111";
  csa_anded  <= '1' when (CLA(bitpos downto 0) = anding_vec(bitpos downto 0)) else '0';

  -- glue logic
  CLA_o  <= not(((S(1)) and not(Q_reg)) or (not(S(1)) and Q_reg));  -- not Q and Q are shuffled in bitpos 0 (problems?)
  Q_int  <= ((bitload and (not(S(0)) and S(1))) or ((csa_anded) xor (S(0) and Q_reg)));  --load is S(1) = 1 and S(0) = L
  bitout <= Q_reg;

  reg_d : process(clk, nres)
  begin
    if nres = '0' then
      Q_reg <= '0';
    elsif clk'event and clk = '1' then
      Q_reg <= Q_int;
    end if;
  end process;

end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity IC74867 is
  port (Q_in  : in  std_logic_vector (7 downto 0);
        Q_out : out std_logic_vector (7 downto 0);
        S     : in  std_logic_vector (1 downto 0);
        clk   : in  std_logic;
        nENT  : in  std_logic;
        nENP  : in  std_logic;
        nRCO  : out std_logic);
end IC74867;

architecture Behavioral of IC74867 is

  component countcell is
    generic (bitpos : integer := 0);
    port (                              --enp_and is CLA(0)
      CLA     : inout std_logic_vector (8 downto 0);
      CLA_o   : out   std_logic;
      S       : in    std_logic_vector (1 downto 0);
      clk     : in    std_logic;
      nres    : in    std_logic;
      --enp_and : in  STD_LOGIC;
      bitload : in    std_logic;
      bitout  : out   std_logic);
  end component;

  signal CLA  : std_logic_vector (8 downto 0);
  signal nres : std_logic;

  signal Q_int   : std_logic_vector(7 downto 0);
  signal rco_int : std_logic_vector(1 downto 0);

begin

  nres <= not(not(S(1)) and not(S(0)) and (not(S(1)) and not(S(0))));

  CLA(0) <= ((S(0)) and not(nENP) and not(nENT));

  GEN_CNT : for i in 0 to 7 generate
    CNT : countcell
      generic map (
        bitpos => i
        )
      port map (
        CLA     => CLA,
        CLA_o   => CLA(i+1),
        S       => S,
        clk     => clk,
        nres    => nres,
        bitload => Q_in(i),
        bitout  => Q_int(i)
        );
  end generate GEN_CNT;

  Q_out <= Q_int;

  rco_int(0) <= '1' when (CLA(8 downto 1)&not(nENT)&not(S(1))&(S(0))&not(Q_int(0)) = "111111111111") else '0';
  rco_int(1) <= '1' when (CLA(8 downto 1)&not(nENT)&(S(1))&(S(0))&(Q_int(0)) = "111111111111")       else '0';
  nRCO       <= not(rco_int(0) or rco_int(1));

end Behavioral;

