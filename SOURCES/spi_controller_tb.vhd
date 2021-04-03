-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

-------------------------------------------------------------------------------

entity spi_controller_tb is

end spi_controller_tb;

-------------------------------------------------------------------------------

architecture sim of spi_controller_tb is


  signal CLK_i         : std_logic                     := '0';
  signal RST_i         : std_logic                     := '1';
  signal DATA_SPI_OK_i : std_logic                     := '0';
  signal DATA_SPI_i    : std_logic_vector (8 downto 0) := (others => '0');

  signal D_C_i     : std_logic;
  signal CS_i      : std_logic;
  signal SDIN_i    : std_logic;
  signal SCLK_i    : std_logic;
  signal END_SPI_i : std_logic;
  signal FC_i      : std_logic;
  signal CE_i      : std_logic;
  signal DATA_SPI_REG_i: std_logic_vector (7 downto 0);
  signal COUNTER_REG_i : unsigned(2 downto 0);
  

begin  -- sim

  DUT : entity work.spi_controller
    port map (
      CLK         => CLK_i,
      RST         => RST_i,
      DATA_SPI_OK => DATA_SPI_OK_i,
      DATA_SPI    => DATA_SPI_i,
      D_C         => D_C_i,
      CS          => CS_i,
      SDIN        => SDIN_i,
      SCLK        => SCLK_i,
      END_SPI     => END_SPI_i,
      FC          => FC_i,
      CE          => CE_i,
      DATA_SPI_REG => DATA_SPI_REG_i,
      COUNTER_REG => COUNTER_REG_i);


  SPI_DEV : entity work.spi_device
    port map (
      D_C  => D_C_i,
      CS   => CS_i,
      SDIN => SDIN_i,
      SCLK => SCLK_i);


  rst_i <= '0'       after 123 ns;
  clk_i <= not clk_i after 5 ns;

  process
    procedure gen_dato(dato : std_logic_vector(8 downto 0)) is
    begin
      wait until CLK_i = '0';
      DATA_SPI_i    <= dato;
      DATA_SPI_OK_i <= '1';
      wait until CLK_i = '0';
      DATA_SPI_OK_i <= '0';
      --wait until END_SPI_i = '1';
      wait for 23 ns;
    end gen_dato;

  begin  -- process

    wait for 100 ns;
    gen_dato('0'&x"65");
    gen_dato('1'&x"80");
    gen_dato('0'&x"ff");
    gen_dato('0'&x"8f");
    gen_dato('1'&x"8f");
    gen_dato('0'&x"11");
    gen_dato('1'&x"11");
    report "fin de la simulacion" severity failure;
  end process;



end sim;

-------------------------------------------------------------------------------
