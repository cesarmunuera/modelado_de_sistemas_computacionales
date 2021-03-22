library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


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
  signal DATA_SPI_REG    :      std_logic_vector (7 downto 0); --bloque 1, de data_spi sacar los 8 primeros bits
  signal COUNTER_REG     :      unsigned(2 downto 0);--bloque 2, vector para elegir que bits salen a sdin
  signal CONT            :      unsigned (6 downto 0); --contador para bloque 3 obtener fc
  signal FC              :      std_logic;                   
  
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

process (CLK, RST)
begin
    if (RST='1') then
        COUNTER_REG <= (others => '1');
    elsif (CLK='1' and CLK')event then
        if (<clock_enable>='1') then
            if COUNTER_REG = 0 then
                COUNTER_REG <= (others => '1'); --revisar circuito combinacional
            else
                COUNTER_REG <= COUNTER_REG - 1;
            end if;
        end if;
    end if;
end process;

process (CLK, RST)
begin
    if RST = '1' then
        SDIN <= '0';
    elsif (CLK'event and CLK = '1') then
        case COUNTER_REG is
            when 0  => SDIN <= DATA_SPI_REG(0);
            when 1  => SDIN <= DATA_SPI_REG(1);
            when 2  => SDIN <= DATA_SPI_REG(2);
            when 3  => SDIN <= DATA_SPI_REG(3);
            when 4  => SDIN <= DATA_SPI_REG(4);
            when 5  => SDIN <= DATA_SPI_REG(5);
            when 6  => SDIN <= DATA_SPI_REG(6);
            when 7  => SDIN <= DATA_SPI_REG(7);
    end if;
end process

--bloque 3 genera CE, SCLK y END_SPI, ENTRADA: DATA_SPI_OK 
-- 1º GENERAR FC CON PRESCALER, cada N ciclos de CLK se genera un pulso de FC de 10 ns
process (CLK)
constant N1 : integer := 5;
begin
    if CLK'event and CLK = '1' then
        if CONT = N1-1 then
            CONT <= 0;
            FC <= '1';
        else
            CONT <= CONT+1;
            FC <= '0';
        end if;
    end if;
end process;

process (CLK)
begin
    if (CLK'event and CLK = '1') and FC = '1' then
        SCLK <= NOT SCLK;
    end if;
end process;

end rtl;

