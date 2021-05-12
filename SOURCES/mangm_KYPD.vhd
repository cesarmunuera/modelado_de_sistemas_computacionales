library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity mangm_KYPD is
  port(RST         : in  std_logic;
       CLK         : in  std_logic;
       KEY_CODE_OK : in  std_logic;
       KEY_CODE    : in  std_logic_vector(3 downto 0);
       DATA_OK     : out std_logic;
       DATA        : out std_logic_vector (7 downto 0);
       DP          : out std_logic;
       SEG_AG      : out std_logic_vector(6 downto 0);  -- gfedcba -> Señal para el display de 7 segmentos.
       AND_30      : out std_logic_vector(3 downto 0)); -- Se�al para elegir el display que se enciende/apaga.
end mangm_KYPD;

architecture rtl of mangm_KYPD is

signal   data_aux           : std_logic_vector(7 downto 0);  
constant cte_1ms : natural  := 100;                                   -- para simulacion
--  constant cte_1ms    : natural := 1e5;                             -- para implementacion
signal   cnt_1ms            : unsigned(16 downto 0);                  -- Bloque 3. Contador del prescaler. Tiene tama�o 17 por si se usa el otro valor de cnt_1ms
                                                                      -- en el prescaler.
signal   dato               : std_logic_vector(3 downto 0);           -- Bloque 3. Salida del MUX
signal   sel_dsply          : std_logic;                              -- Bloque 3. Selector del MUX
--------------------------------------------------------------
type fsm is (idle, tecla_1, ld_data);
signal   estado_act         : fsm;
--------------------------------------------------------------

begin   

  -- BLOQUE 1---------------------------------------------------------------------------------------------

  -- Asignamos, de forma concurrente, el nivel alto a la señal DP, dejandola inactiva. Es el punto decimal.
  DP <= '1';

  --Shift Register: Este proceso, que fuciona de forma sincrona y con KEY_CODE_OK como clock enable.
  --                Se guarda en las posiciones mas bajas de data_aux el valor de KEY_CODE. En el
  --                siguiente ciclo de reloj, este valor se desplaza a las posiciones mas altas de
  --                data_aux, y el nuevo valor de KEY_CODE vuelve a las posiciones mas bajas de 
  --                data_aux de nuevo. Asi sucesivamente.
  process(clk, rst)
  begin
    if rst = '1' then
      data_aux   <= (others => '0');
    elsif clk = '1' and clk'event then
      if KEY_CODE_OK = '1' then
        data_aux <= data_aux(3 downto 0)&KEY_CODE;  -- En esta linea es donde se asigna el valor de KEY_CODE a data_aux, y se desplaza al mismo tiempo.
      end if;
    end if;
  end process;


  -- BLOQUE 2---------------------------------------------------------------------------------------------

  -- Esto es la maquina de estados finitos. La maquina parte del reposo en el estado idle. Cuando le entra
  -- la señal KEY_CODE_OK activa, pasa al estado tecla_1. Si vuelve a entrar la señal KEY_CODE_OK activa, 
  -- pasa al estado ld_data. 
  -- Este es el estado en el que ya podriamos activar la señal DATA_OK, en el siguiente proceso. Si vuelve
  -- a entrar KEY_CODE_OK activa, pasa al estado idle, y reiniciamos.
  process (CLK, RST)
  begin
    if RST = '1' then
      estado_act       <= idle;
    elsif CLK'event and CLK = '1' then
      case estado_act is
        when idle    =>                 -- Estado de reposo
          if KEY_CODE_OK = '1' then
            estado_act <= tecla_1;
          end if;
        when tecla_1 =>                 -- Estado 1
          if KEY_CODE_OK = '1' then
            estado_act <= ld_data;
          end if;
        when ld_data =>                 -- Estado 2
          estado_act   <= idle;
      end case;
    end if;
  end process;

  -- Esto es el registro. En el, validamos la señal DATA gracias a la señal DATA_OK. Esta ultima se
  -- activara cuandoel estado de la fsm sea ld_data.
  process(clk, rst)
  begin
    if rst = '1' then
      DATA      <= (others => '0');
      DATA_OK   <= '0';
    elsif clk = '1' and clk'event then
      DATA_OK   <= '0';
      if estado_act = ld_data then
        DATA    <= data_aux;
        DATA_OK <= '1';
      end if;
    end if;
  end process;


  -- BLOQUE 3---------------------------------------------------------------------------------------------

  -- En este bloque se modelara el sistema para mostrar el valor de la señal data_aux, que contiene el 
  -- valor de 2 teclas que se han pulsado. Consta de los siguientes elementos:
  --    Un prescaler.
  --    Un biestable T.
  --    Un multiplexor.
  --    2 decodificadores.

  -- En este proceso modelamos el prescaler. Es un contador ascendente de 0 que cuenta hasta 99.
  -- Con este valor generamos la tasa de refresco.
  process (clk, rst)
  begin
    if rst = '1' then
      cnt_1ms   <= (others => '0');
    elsif clk'event and clk = '1' then
      if cnt_1ms = cte_1ms-1 then
        cnt_1ms <= (others => '0');
      else
        cnt_1ms <= cnt_1ms+1;
      end if;
    end if;
  end process;

  -- Esto es el biestable T. Tiene el valor del contador como clock enable. La salida es sel_dsply. 
  -- Con ella seleccionamos los displays que queremos activar.
  process (clk, rst)
  begin  -- process
    if rst = '1' then
      sel_dsply   <= '0';
    elsif clk'event and clk = '1' then
      if cnt_1ms = cte_1ms-1 then
        sel_dsply <= not sel_dsply;
      end if;
    end if;
  end process;
   
  -- Esto es un decodificador. Aqui asignamos de forma concurrente que display se activara. Si el 
  -- selector es 0, se activa el primer display. Si es 1, el segundo display.
  AND_30 <= "1110"               when sel_dsply = '0' else "1101";

  -- Realizamos el multilpexor de forma concurrente. Si el selector es  0, la salida son los 4 bits 
  -- mas bajos. Si es 1, son los 4 bits mas altos. La salida sera en la señal DATO.
  DATO   <= data_aux(3 downto 0) when sel_dsply = '0' else data_aux(7 downto 4);

  -- Esto es el segundo decodificador. La entrada es la salida del multiplexor. Representa la señal
  -- DATO en el display de 7 segmentos. 
  process (dato) is
  begin
    case dato is              --gfedcba
      when x"0"   => SEG_AG <= "1000000";
      when x"1"   => SEG_AG <= "1111001";
      when x"2"   => SEG_AG <= "0100100";
      when x"3"   => SEG_AG <= "0110000";
      when x"4"   => SEG_AG <= "0011001";
      when x"5"   => SEG_AG <= "0010010";
      when x"6"   => SEG_AG <= "0000010";
      when x"7"   => SEG_AG <= "1111000";
      when x"8"   => SEG_AG <= "0000000";
      when x"9"   => SEG_AG <= "0011000";
      when x"A"   => SEG_AG <= "0001000";
      when x"B"   => SEG_AG <= "0000011";
      when x"C"   => SEG_AG <= "1000110";
      when x"D"   => SEG_AG <= "0100001";
      when x"E"   => SEG_AG <= "0000110";
      when x"F"   => SEG_AG <= "0001110";
      when others => SEG_AG <= "1111111";
    end case;
  end process;

end;
