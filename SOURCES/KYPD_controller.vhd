library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity KYPD_controller is
  port(RST         : in  std_logic;
       CLK         : in  std_logic;
       ROW         : in  std_logic_vector(3 downto 0);
       COL         : out std_logic_vector(3 downto 0);
       KEY_CODE_OK : out std_logic;
       KEY_CODE    : out std_logic_vector(3 downto 0));
end KYPD_controller;

architecture behavior of KYPD_controller is
  signal    Q_ROW        : std_logic_vector(3 downto 0);
  signal    CE_COL       : std_logic;                    --Bloque 1: Salida del primer prescaler. Clock enable de las columnas
  signal    CONT         : unsigned (6 downto 0);        --Bloque 1: Contador  obtener CE_COL.
  signal    CE_ROW       : std_logic;                    --Bloque 1: Salida del primer prescaler. Clock enable de las filas.
  signal    CONT2        : unsigned (6 downto 0);        --Bloque 1: Contador  obtener CE_ROW.
  signal    COL_AUX      : std_logic_vector(3 downto 0); --Bloque 1: Es la misma señal que COL.
  signal    ROW_OK       : std_logic;                    --Bloque 2: Un "CE" para Colum Control.
  signal    COL_CNT      : unsigned (1 downto 0);        --Bloque 2: Señal de la columna, salida del contador.
  signal    KEY_CODE_AUX : std_logic_vector (3 downto 0);--Bloque 3: Señal que lleva el valor de la tecla pulsada.
  signal    COL_ROW      : std_logic_vector (7 downto 0);--Bloque 3: Señal que concatena Q_ROW y COL.
  signal    DF           : std_logic;                    --Bloque 4: Detector de flanco.
  signal    Q            : std_logic;                    --Bloque 4: Salida del biestable D del detector de flanco.
  

begin
 
 db   : for j in 0 to 3 generate
    U2 : entity work.debounce_module
      port map (
        rst   => rst,
        clk   => clk,
        row_i => ROW(j),
        ce    => CE_ROW,
        q_i   => Q_ROW(j));
  end generate db;
  
  
------------------------------------------------------------------------------------------------------------------------  
-- Bloque 1. En este bloque se realizan 2 prescaler.

-- En este proceso se modela el prescaler 1, para generar el clock enable del contador (CE_COL).
process (CLK, RST)
constant N1 : integer := 3500000;     -- 35
begin
    if (RST = '1') then
        CE_COL <= '0';
        CONT <= (others => '0');
    elsif (CLK'event and CLK = '1') then
        if(CE_ROW = '1') then
            if (CONT = N1-1) then   --Cuando N es 2499999 , cambia el valor de CE_COL a 1.
                CONT <= (others => '0');
                CE_COL <= '1';
            else
                CONT <= CONT+1;     --Mientras que N es distinto 2499999, mantiene CE_COL a 0.
                CE_COL <= '0';
            end if;
        end if;
    end if;
end process;

-- En este proceso se modela el prescaler 2, para generar el clock enable de las filas (CE_ROW).
process (CLK, RST)
constant N2 : integer := 700000;     -- 7ms
begin
    if (RST = '1') then
        CE_ROW <= '0';
        CONT2 <= (others => '0');
    elsif (CLK'event and CLK = '1') then
        if (CONT2 = N2-1) then   --Cuando N es 699999 , cambia el valor de CE_ROW a 1.
            CONT2 <= (others => '0');
            CE_ROW <= '1';
        else
            CONT2 <= CONT2+1;     --Mientras que N es distinto de 699999, mantiene CE_ROW a 0.
            CE_ROW <= '0';
        end if;
    end if;
end process;
   
   
------------------------------------------------------------------------------------------------------------------------  
-- Bloque 2. En este bloque se realiza un contador y un decoficador, para generar COLUM_CODE. Recibe la señal CE_COL.   
   
ROW_OK  <= '1' when Q_ROW = "1111" else '0';   --Se activa cuando no hay ninguna tecla a nivel bajo, por tanto, pulsada.

--Creamos un contador, que será el que elija la posición del 0 en el decodificador. Por eso es del 0 al 3.
process (CLK, RST) 
begin
    if (RST='1') then
        COL_CNT <= (others => '0');
    elsif (CLK='1' and CLK'event) then
        if (ROW_OK ='1') then
            if(CE_COL = '1') then
                if (COL_CNT) = 3 then
                    COL_CNT <= (others => '0');
                else
                    COL_CNT <= COL_CNT + 1;
                end if;
            end if;
        end if;
    end if;
end process;
 
-- Creamos el decodificador, a partir de la señal del contador COL_CNT.  
process (CLK, RST)
begin
    if (RST = '1') then
        COL_AUX <= (others => '0');
    elsif (CLK'event and CLK = '1') then
        case COL_CNT is
            when "00"  => COL_AUX <= "1110";
            when "01"  => COL_AUX <= "1101";
            when "10"  => COL_AUX <= "1011";
            when "11"  => COL_AUX <= "0111";
            when others => null;
        end case;
    end if;
end process;
COL <= COL_AUX;             -- Asignamos el valor de forma concurrente.


------------------------------------------------------------------------------------------------------------------------  
-- Bloque 3. En este bloque creamos el codificador a partir de las señales Q_ROW y COL. La salida será el KY_CODE. 

COL_ROW <= (Q_ROW & COL_AUX);

process (CLK, RST)
begin
    if (RST = '1') then
        --KEY_CODE_AUX <= (others => '0');
    elsif (CLK'event and CLK = '1') then
        case COL_ROW is
            when "11100111"  => KEY_CODE_AUX <= "0000"; -- 0
            when "11101110"  => KEY_CODE_AUX <= "0001"; -- 1
            when "10111110"  => KEY_CODE_AUX <= "0010"; -- 2
            when "11011110"  => KEY_CODE_AUX <= "0011"; -- 3
            when "11101101"  => KEY_CODE_AUX <= "0100"; -- 4
            when "11011101"  => KEY_CODE_AUX <= "0101"; -- 5
            when "10111101"  => KEY_CODE_AUX <= "0110"; -- 6
            when "11101011"  => KEY_CODE_AUX <= "0111"; -- 7
            when "11011011"  => KEY_CODE_AUX <= "1000"; -- 8
            when "10111011"  => KEY_CODE_AUX <= "1001"; -- 9
            when "01111110"  => KEY_CODE_AUX <= "1010"; -- A
            when "01111101"  => KEY_CODE_AUX <= "1011"; -- B
            when "01111011"  => KEY_CODE_AUX <= "1100"; -- C
            when "01110111"  => KEY_CODE_AUX <= "1101"; -- D
            when "10110111"  => KEY_CODE_AUX <= "1110"; -- E
            when "11010111"  => KEY_CODE_AUX <= "1111"; -- F
            when others => null;
        end case;
    end if;
end process;

-- Asignamos a la señal final (KEY_CODE) el valor de la señal auxiliar.
process(CLK, RST)
begin
    if (RST = '1') then
        --KEY_CODE <= (others => '0');
    elsif (CLK'event and CLK = '1') then
        if (DF = '1') then
            KEY_CODE <= KEY_CODE_AUX;
        end if;
    end if;
end process;


------------------------------------------------------------------------------------------------------------------------  
-- Bloque 4. En este bloque creamos el detector de flanco DF

-- Detector de flanco.
process(CLK, RST)
begin
    if (RST = '1') then
        DF <= '0';
        Q <= '0';
    elsif (CLK'event and CLK = '1') then
       Q <= not ROW_OK;
       DF <= Q NOR ROW_OK;
    end if;
end process;

-- Generamos la salida KEY_CODE_OK a partir del detector de flancos.
process(CLK, RST)
begin
    if (RST = '1') then
        --KEY_CODE_OK <= '0';
    elsif (CLK'event and CLK = '1') then
        KEY_CODE_OK <= DF;
    end if;
end process;


 
end behavior;