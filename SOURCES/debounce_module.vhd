library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debounce_module is
  port (
    rst   : in  std_logic;
    clk   : in  std_logic;
    row_i : in  std_logic;
    ce    : in  std_logic;
    q_i   : out std_logic);

end entity;
architecture rtl of debounce_module is
  signal tap                 : std_logic_vector(3 downto 0);
  signal all_zeros, all_ones : std_logic;
begin  -- rtl

  process (clk, rst)
  begin  -- process
    if rst = '1' then
      tap   <= (others => '0');
    elsif clk'event and clk = '1' then
      if ce = '1' then
        tap <= row_i&tap(3 downto 1);
      end if;
    end if;
  end process;

  all_ones  <= '1' when tap = "1111" else '0';
  all_zeros <= '1' when tap = "0000" else '0';

  process (clk, rst)
  begin  -- process
    if rst = '1' then
      q_i   <= '0';
    elsif clk'event and clk = '1' then
      if all_zeros = '1' then
        q_i <= '0';
      elsif all_ones = '1' then
        q_i <= '1';
      end if;
    end if;
  end process;

end rtl;
