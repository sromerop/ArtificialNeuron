library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TOP is
  port( a: in std_logic_vector(7 downto 0);   -- input of the multiplier
        b: in std_logic_vector(7 downto 0);   -- input of the multiplier
        clk: in std_logic;  -- clock signal
        p: out std_logic_vector(15 downto 0));    -- output of the multiplier
end TOP;

architecture Behavioral of TOP is

component dadda_multi is
  port( a: in std_logic_vector(7 downto 0);
        b: in std_logic_vector(7 downto 0);
        p: out std_logic_vector(15 downto 0));
end component;

-- signals for registering
signal a_reg, b_reg: STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');
signal p_next, p_reg: STD_LOGIC_VECTOR (15 downto 0) := (others=>'0');

begin

DM_instance: dadda_multi
    port map (a => a_reg,
              b => b_reg,
              p => p_next);

-- process where the signals of the inputs and the outputs are registered
process(clk)
begin
    if(rising_edge(clk)) then
        a_reg <= a;
        b_reg <= b;
        p_reg <= p_next;
     end if;
 end process;
   
p <= p_reg;

end Behavioral;