-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-------------------------------------------------------------------------------

entity mangm_KYPD_tb is

end mangm_KYPD_tb;

-------------------------------------------------------------------------------

architecture sim of mangm_KYPD_tb is


  signal RST_i         : std_logic                    := '1';
  signal CLK_i         : std_logic                    := '0';
  signal KEY_CODE_OK_i : std_logic                    := '0';
  signal KEY_CODE_i    : std_logic_vector(3 downto 0) := (others => '1');
  signal DATA_OK_i     : std_logic;
  signal DATA_i        : std_logic_vector (7 downto 0);
  signal DP_i          : std_logic;
  signal SEG_AG_i      : std_logic_vector(6 downto 0);
  signal AND_30_i      : std_logic_vector(3 downto 0);
  constant T_KEY_CODE  : time    :=  8000ns;  -- para simulacion (escalado x10^-3)
  --constant T_KEY_CODE  : time    := 8ms;  -- para implementacion
begin  -- sim

  DUT : entity work.mangm_KYPD
    port map (
      RST         => RST_i,
      CLK         => CLK_i,
      KEY_CODE_OK => KEY_CODE_OK_i,
      KEY_CODE    => KEY_CODE_i,
      DATA_OK     => DATA_OK_i,
      DATA        => DATA_i,
      DP          => DP_i,
      SEG_AG      => SEG_AG_i,
      AND_30      => AND_30_i);

  clk_i <= not clk_i after 5 ns;
  rst_i <= '0'       after 137 ns;

  process
  begin  -- process
    wait for 212 ns;
    for j in 0 to 15 loop
      wait until CLK_i = '0';
      KEY_CODE_OK_i <= '1';
      KEY_CODE_i    <= std_logic_vector(to_unsigned(j, 4));
      wait until CLK_i = '0';
      KEY_CODE_OK_i <= '0';
      wait for T_KEY_CODE;
    end loop;  -- j
    report "FIN CONTROLADO DE LA SIMULACION" severity failure;

  end process;


end sim;

-------------------------------------------------------------------------------
