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
  signal DATA_SPI_REG    :      std_logic_vector (7 downto 0);  -- Bloque 1, tiene los 8 primeros bits de data_spi.
  signal COUNTER_REG     :      unsigned(3 downto 0);           -- Bloque 2, vector para elegir que bits salen a SDIN.
  signal CONT            :      unsigned (6 downto 0);          -- Bloque 3, ontador para bloque 3 obtener FC.
  signal FC              :      std_logic;                      -- Bloque 3, clock enable para obtener SCLK.  
  signal SCLK_AUX        :      std_logic;                      -- Bloque 3, señal auxiliar de SCLK.
  signal CE              :      std_logic;                      -- Bloque 3, señal ClockEnable generada en el Bloque 3.
  signal BUSY            :      std_logic;                      -- Bloque 3, señal que nos indica que se esta enviando un dato.
  signal Q               :      std_logic;                      -- Bloque 3, señal "q" salida del primer biestable del que obtenemos la señal END_SPI.
  
begin


-------------------------------------------  BLOQUE 1 ----------------------------------------------

-- Obtenemos D_C a partir del bit mas significativo de DATA_SPI mediante biestable D.
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

-- Pasamos la señal DATA_SPI desde el bit 0 al bit 7 con un biestable D. DATA_SPI_OK funciona como CLOCK ENABLE.
process (CLK, RST) 
begin
    if (RST = '1') then
        DATA_SPI_REG <= (others => '0') ;
    elsif (CLK'event and CLK = '1') then
        if (DATA_SPI_OK = '1') then
            DATA_SPI_REG <= DATA_SPI (7 downto 0);
        end if;
    end if;
end process;

-------------------------------------------  BLOQUE 2 ----------------------------------------------

--CLOCK ENABLE SE GENERA MEDIANTE EL BLOQUE 3 
-- En este bloque generamos un contador ascendente de 0 a 8. Con ello, obtenemos los bits de control para el multiplexor. 
-- La señal COUNTER_REG es unsigned para poder trabajar con balores en base 10.
process (CLK, RST) 
begin
    if (RST='1') then
        COUNTER_REG <= (others => '0');
    elsif (CLK='1' and CLK'event) then
        if (CE ='1') then
            if(BUSY = '1') then
                if (COUNTER_REG) = 8 then
                    COUNTER_REG <= (others => '0');
                else
                    COUNTER_REG <= COUNTER_REG + 1;
                end if;
            end if;
        end if;
    end if;
end process;

-- En este proceso, creamos un biestable D junto con un miltiplexor. Gracias al contador anterior, podemos elegir la posicion 
-- del array correspondiente para serializarlo.
process (CLK, RST)
begin
    if (RST = '1') then
        SDIN <= '0';
    elsif (CLK'event and CLK = '1') then
        case COUNTER_REG is
            when "1000"  => SDIN <= DATA_SPI_REG(0); -- Cuando COUNTER_REG vale 8 ...
            when "0111"  => SDIN <= DATA_SPI_REG(1);
            when "0110"  => SDIN <= DATA_SPI_REG(2);
            when "0101"  => SDIN <= DATA_SPI_REG(3);
            when "0100"  => SDIN <= DATA_SPI_REG(4); -- Cuando COUNTER_REG vale 4 ...
            when "0011"  => SDIN <= DATA_SPI_REG(5);
            when "0010"  => SDIN <= DATA_SPI_REG(6);
            when "0001"  => SDIN <= DATA_SPI_REG(7); -- Cuando COUNTER_REG vale 1 ...
            when others => null;
        end case;
    end if;
end process;


-------------------------------------------  BLOQUE 3 ----------------------------------------------
--Genera CE, SCLK y END_SPI, con la entrada DATA_SPI_OK. 

-- Generamos FC con PRESCALER; cada N ciclos de CLK se genera un pulso de FC de 10 ns
-- El factor de división es 6 (del 0 al 5), por que el periodo minimo de SCLK establecido por el protocolo SPI es mayor de 
-- 100 ns. El periodo de CLK es 20 ns. Por tanto, 6 x 20 = 120, siendo 6 el factor de division minimo para
-- cumplir estos requisitos.
process (CLK, RST)
constant N1 : integer := 6;     
begin
    if (RST = '1') then
        FC <= '0';
        CONT <= (others => '0');
    elsif (CLK'event and CLK = '1') then
        if(BUSY = '1') then
            if (CONT = N1-1) then   --Cuando N es 5 , cambia el valor de FC a 1.
                CONT <= (others => '0');
                FC <= '1';
            else
                CONT <= CONT+1;     --Mientras que N es distinto de 5, mantiene FC a 0.
                FC <= '0';
            end if;
        end if;
    end if;
end process;

-- Generamos SCLK gracias a la señal FC creada en el proceso anterior. Mediante un "biestable T", que siempre esta
-- activo, conseguimos alternar el valor de SCLK entre 1 y 0 por cada pulso de reloj en el que FC está activo.
-- Por tanto FC actuara como un CLOCK ENABLE. Por otro lado, necesitamos la señal auxiliar de SCLK ya que esta es solo
-- de salida.
-- No es un biestable T real, ya que cuando BUSY esta inactiva, la señal de SCLK_AUX siempre estara activa.
process (CLK, RST)
begin
    if (RST = '1') then
        SCLK_AUX <= '0';
    elsif (CLK'event and CLK = '1') then
        if(BUSY='1') then
            if (FC = '1') then
                SCLK_AUX <= NOT SCLK_AUX;
            end if;
        else
            SCLK_AUX <= '1';
        end if;   
    end if;
end process;

SCLK <= SCLK_AUX;       -- Asignamos a la señal SCLK, la señal SCLK_AUX, de forma concurrente.

-- En esta sentencia concurrente, generamos la señal de CE que se usa anteriormente. Esta señal estara activa cuando 
-- SCLK y FC esten activos.
CE <= FC AND SCLK_AUX;

-- Generamos la señal BUSY, poniendola a 1 cuando DATA_SPI_OK = 1, y poniendola a 0 cuando el contador llega a 8 y las señales
-- FC y SCLK_AUX esten a 1. BUSY se incorpora a el contador, el prescaler  y al biestable que genera SCLK.
process (CLK, RST)
begin
    if (RST = '1') then
        BUSY <= '0';
    elsif (CLK'event and CLK = '1') then
        if (DATA_SPI_OK = '1') then
            BUSY <= '1';
        else
            if(COUNTER_REG = 8) then
                if((FC and SCLK_AUX) = '1') then
                    BUSY <= '0';
                end if;
            end if;
        end if;      
    end if;
end process;

-- Generamos la señal END_SPI, negando primero la señal BUSY y almacenandola en Q, finalmente obtenemos END_SPI con una puerta NOR,
-- cuyas entradas son Q y BUSY. Procede de un circuito proporcionado en las diapositivas.
process(CLK, RST)
begin
    if (RST = '1') then
        END_SPI <= '0';
        Q <= '0';
    elsif (CLK'event and CLK = '1') then
       Q <= not BUSY;
       END_SPI <= Q NOR BUSY;
    end if;
end process;

-- Finalmente generamos CS negando BUSY, para obtener la señal complementaria.
CS <= NOT BUSY;
        
end rtl;