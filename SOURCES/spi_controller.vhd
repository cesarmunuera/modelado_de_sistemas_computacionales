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
  signal DATA_SPI_REG    :      std_logic_vector (7 downto 0);  --bloque 1, tiene los 8 primeros bits de data_spi 
  signal COUNTER_REG     :      unsigned(2 downto 0);           --bloque 2, vector para elegir que bits salen a sdin
  signal CONT            :      unsigned (6 downto 0);          --contador para bloque 3 obtener fc
  signal FC              :      std_logic;                      --clock enable para obtener SCLK          
  
begin


-------------------------------------------  BLOQUE 1 ----------------------------------------------

--BLOQUE 1 obtenemos D_C a partir del bit mas significativo de DATA_SPI mediante biestable D
process (CLK, RST) 
    begin
        if (RST = '1') then
            D_C <= '0';
        elsif (CLK'event and CLK = '1') then 
            if (DATA_SPI_OK = '1') then --DATA_SPI_OK funciona como CLOCK ENABLE
                D_C <= DATA_SPI(8);
            end if;
        end if;
end process;

--BLOQUE 1 pasamos la señal DATA_SPI desde el bit 0 al bit 7 con un biestable D
process (CLK, RST) 
    begin
        if (RST = '1') then
            DATA_SPI_REG <= (others => '0') ;
        elsif (CLK'event and CLK = '1')
            if (DATA_SPI_OK = '1') then --DATA_SPI_OK funciona como CLOCK ENABLE
                DATA_SPI_REG <= DATA_SPI (7 downto 0);
            end if;
        end if;
end process;


-------------------------------------------  BLOQUE 2 ----------------------------------------------

--CLOCK ENABLE SE GENERA MEDIANTE UN BLOQUE 3 
--BLOQUE 2: En este bloque generamos un contador descendente de 7 a 0. Con ello, obtenemos los bits de control para
--          el multiplexor. La señal COUNTER_REG es unsigned para poder trabajar con balores en base 10.
process (CLK, RST) 
begin
    if (RST='1') then
        COUNTER_REG <= (others => '1');
    elsif (CLK='1' and CLK')event then
        if (<clock_enable>='1') then
            if (COUNTER_REG) = 0 then
                COUNTER_REG <= (others => '1'); 
            else
                COUNTER_REG <= COUNTER_REG - 1;
            end if;
        end if;
    end if;
end process;

--BLOQUE 2: En este proceso, creamos un biestable D junto con un miltiplexor. Gracias al contador anterior, podemos
--          elegir la posicion del array correspondiente para serializarlo.
process (CLK, RST)
begin
    if (RST = '1') then
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


-------------------------------------------  BLOQUE 3 ----------------------------------------------


--BLOQUE 3: Genera CE, SCLK y END_SPI, con la entrada DATA_SPI_OK. 

--Generamos FC con PRESCALER; cada N ciclos de CLK se genera un pulso de FC de 10 ns
-- El factor de división es 5 (del 0 al 4), por que el periodo minimo de SCLK establecido por el protocolo SPI es de 
-- 100 ns. El periodo de CLK es 20 ns. Por tanto, 5 x 20 = 100, siendo 5 el factor de division minimo para
-- cumplir estos requisitos.
process (CLK)
constant N1 : integer := 5;     
begin
    if (CLK'event and CLK = '1') then
        if (CONT = N1-1) then   --Cuando N es 4 , cambia el valor de FC a 1.
            CONT <= 0;
            FC <= '1';
        else
            CONT <= CONT+1;     --Mientras que N es distinto de 4, mantiene FC a 0.
            FC <= '0';
        end if;
    end if;
end process;

-- Generamos SCLK gracias a la señal FC creada en el proceso anterior. Mediante un biestable T, que siempre esta
-- activo, conseguimos alternar el valor de SCLK entre 1 y 0 por cada pulso de reloj en el que FC está activo.
-- Por tanto FC actuara como un CLOCK ENABLE.
process (CLK)
begin
    if (CLK'event and CLK = '1') then
        if (FC = '1') then
            SCLK <= NOT SCLK;
        end if;      
    end if;
end process;








end rtl;

