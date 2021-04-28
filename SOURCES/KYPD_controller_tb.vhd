-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-------------------------------------------------------------------------------

entity KYPD_controller_tb is

end KYPD_controller_tb;

-------------------------------------------------------------------------------

architecture sim of KYPD_controller_tb is

  signal RST_i         : std_logic                    := '1';
  signal CLK_i         : std_logic                    := '0';
  signal ROW_i         : std_logic_vector(3 downto 0) := (others => '1');  
  signal COL_i         : std_logic_vector(3 downto 0);
  signal KEY_CODE_OK_i : std_logic;
  signal KEY_CODE_i    : std_logic_vector(3 downto 0);
  
  constant REBTIME  : time    := ;--Duración de un rebote
  constant M        : integer := ;-- Nº de rebotes
  constant PUSHTIME : time    := ;-- Duración de una pulsación
  signal   TECLA_i  : std_logic_vector(3 downto 0);
begin  --  sim

  DUT:entity work.KYPD_controller
    port map (
        RST         => RST_i,
        CLK         => CLK_i,
        ROW         => ROW_i,
        COL         => COL_i,
        KEY_CODE_OK => KEY_CODE_OK_i,
        KEY_CODE    => KEY_CODE_i);

  
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
    wait for PUSHTIME/2;
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
