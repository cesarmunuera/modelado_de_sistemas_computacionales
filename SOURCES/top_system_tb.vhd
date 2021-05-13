-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-------------------------------------------------------------------------------

entity top_system_tb is

end top_system_tb;

-------------------------------------------------------------------------------

architecture sim of top_system_tb is


  signal RST_i    : std_logic                    := '1';
  signal CLK_i    : std_logic                    := '0';
  signal ROW_i    : std_logic_vector(3 downto 0) := (others => '1');
  signal COL_i    : std_logic_vector(3 downto 0);
  signal DP_i     : std_logic;
  signal SEG_AG_i : std_logic_vector(6 downto 0);
  signal AND_30_i : std_logic_vector(3 downto 0);
  signal BUSY_i   : std_logic;
  signal RES_i    : std_logic;
  signal VBAT_i   : std_logic;
  signal VDD_i    : std_logic;
  signal D_C_i    : std_logic;
  signal CS_i     : std_logic;
  signal SDIN_i   : std_logic;
  signal SCLK_i   : std_logic;

  constant REBTIME  : time    := 700 ns;
  constant M        : integer := 4;
  constant PUSHTIME : time    := 29400 ns;       -- Duración de una pulsación
  signal   TECLA_i  : std_logic_vector(3 downto 0);
begin  -- sim

  DUT : entity work.top_system
    port map (
      RST    => RST_i,
      CLK    => CLK_i,
      ROW    => ROW_i,
      COL    => COL_i,
      DP     => DP_i,
      SEG_AG => SEG_AG_i,
      AND_30 => AND_30_i,
      BUSY   => BUSY_i,
      RES    => RES_i,
      VBAT   => VBAT_i,
      VDD    => VDD_i,
      D_C    => D_C_i,
      CS     => CS_i,
      SDIN   => SDIN_i,
      SCLK   => SCLK_i);


  SPI_DEV : entity work.spi_device
    port map (
      D_C  => D_C_i,
      CS   => CS_i,
      SDIN => SDIN_i,
      SCLK => SCLK_i);


  clk_i <= not clk_i after 5 ns;
  rst_i <= '0'       after 137 ns;

  KEYPD : entity work.teclado
    generic map (
      REBTIME => REBTIME,
      M       => M)
    port map (
      TECLA   => TECLA_i,
      COL     => COL_i,
      ROW     => ROW_i);

  process
  begin  -- process
    TECLA_i   <= "ZZZZ";
    wait for 2.3 ms;
    for j in 0 to 15 loop
      TECLA_i <= std_logic_vector(to_unsigned(j, 4));
      wait for PUSHTIME;
      TECLA_i <= "ZZZZ";
      wait for PUSHTIME/2;
    end loop;  -- j
    report "FIN CONTROLADO DE LA SIMULACION" severity failure;
  end process;



end sim;

-------------------------------------------------------------------------------
