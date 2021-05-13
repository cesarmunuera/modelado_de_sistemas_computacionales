library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity top_system is
  port(RST    : in  std_logic;
       CLK    : in  std_logic;
       --KYPD
       ROW    : in  std_logic_vector(3 downto 0);
       COL    : out std_logic_vector(3 downto 0);
       --DISPLAY
       DP     : out std_logic;
       SEG_AG : out std_logic_vector(6 downto 0);
       AND_30 : out std_logic_vector(3 downto 0);
       --OLED
       BUSY   : out std_logic;
       RES    : out std_logic;
       VBAT   : out std_logic;
       VDD    : out std_logic;
       D_C    : out std_logic;
       CS     : out std_logic;
       SDIN   : out std_logic;
       SCLK   : out std_logic);
end top_system;

architecture rtl of top_system is

  signal KEY_CODE_OK : std_logic;
  signal KEY_CODE    : std_logic_vector(3 downto 0);
  signal DATA_OK : std_logic;
  signal DATA    : std_logic_vector(7 downto 0);
  signal DATA_SPI    : std_logic_vector (8 downto 0);
  signal END_SPI     : std_logic;
  signal DATA_SPI_OK : std_logic;
begin  -- 

  U_KYPD : entity work.KYPD_controller
    port map (
      RST         => RST,
      CLK         => CLK,
      ROW         => ROW,
      COL         => COL,
      KEY_CODE_OK => KEY_CODE_OK,
      KEY_CODE    => KEY_CODE);

  U_MANGM : entity work.mangm_KYPD
    port map (
      RST         => RST,
      CLK         => CLK,
      KEY_CODE_OK => KEY_CODE_OK,
      KEY_CODE    => KEY_CODE,
      DATA_OK     => DATA_OK,
      DATA        => DATA,
      DP          => DP,
      SEG_AG      => SEG_AG,
      AND_30      => AND_30);

  U_OLED : entity work.oled_controller
    port map (
      CLK         => CLK,
      RST         => RST,
      DATA_OK     => DATA_OK,
      DATA        => DATA,
      DATA_SPI_OK => DATA_SPI_OK,
      DATA_SPI    => DATA_SPI,
      END_SPI     => END_SPI,
      BUSY        => BUSY,
      RES         => RES,
      VBAT        => VBAT,
      VDD         => VDD);

  U_SPI : entity work.spi_controller
    port map (
      CLK         => CLK,
      RST         => RST,
      DATA_SPI_OK => DATA_SPI_OK,
      DATA_SPI    => DATA_SPI,
      D_C         => D_C,
      CS          => CS,
      SDIN        => SDIN,
      SCLK        => SCLK,
      END_SPI     => END_SPI);

end;
