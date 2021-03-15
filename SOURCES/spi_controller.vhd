library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity spi_controller is
  port ( CLK         : in  std_logic;
         RST         : in  std_logic;
         DATA_SPI_OK : in  std_logic;
         DATA_SPI    : in  std_logic_vector (8 downto 0);
         D_C         : out std_logic;
         CS          : out std_logic;
         SDIN        : out std_logic;
         SCLK        : out std_logic;
         END_SPI     : out std_logic);
end spi_controller;

architecture rtl of spi_controller is
  signal DATA_SPI_REG    :      std_logic_vector (7 downto 0);
begin

process (CLK, RST) --BLOQUE 1 obtenemos D_C a partir del bit mas significativo de DATA_SPI mediante biestable D
  begin
      if RST = '1' then
          D_C <= '0';
      elsif (CLK'event and CLK = '1')and (DATA_SPI_OK='1') then --DATA_SPI_OK --> CLOCK ENABLE
          D_C <= DATA_SPI(8);
      end if;
end process;

process (CLK, RST) --BLOQUE 1 pasamos la señal DATA_SPI desde el bit 0 al bit 7 con un biestable D
  begin
      if RST = '1' then
          DATA_SPI_REG <= (others => '0') ;
      elsif (CLK'event and CLK = '1')and (DATA_SPI_OK='1') then --DATA_SPI_OK --> CLOCK ENABLE
          DATA_SPI_REG <= DATA_SPI (7 downto 0);
      end if;
end process;

--PERIODO CLOCK ENABLE BLOQUE 2 = PERIODO SCLK, TIEMPO A NIVEL ALTO = PERIODO CLK
--CLOCK ENABLE SE GENERA MEDIANTE UN BLOQUE 3 

end rtl;

