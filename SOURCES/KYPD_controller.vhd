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
begin


  
 db   : for j in 0 to 3 generate
    U2 : entity work.debounce_module
      port map (
        rst   => rst,
        clk   => clk,
        row_i => ROW(j),
        ce    => ce,
        q_i   => Q_ROW(j));
  end generate db;
  
  
------------------------------------------------------------------------------------------------------------------------  
-- Bloque1. En este bloque se realiza un prescaler, un contador y un decodificador para generar la señal de activacion
-- de las columnas. 

-- En este proceso se modela el prescaler, para generar el clock enable del contador (CE_COL).
process (CLK, RST)
constant N1 : integer := 6; 
begin
    if (RST = '1') then

    elsif (CLK'event and CLK = '1') then
        if () then

        else

        end if;        
    end if;
end process;
    
end behavior;










