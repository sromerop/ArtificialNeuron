library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TOP is
    generic( nbits : integer := 8);    
    Port ( X: in STD_LOGIC_VECTOR((nbits - 1) downto 0);   -- input of the multiplier
           Y: in STD_LOGIC_VECTOR((nbits - 1) downto 0);   -- input of the multiplier
           clk: in STD_LOGIC;  -- clock signal
           P: out STD_LOGIC_VECTOR((2*nbits - 1) downto 0));    -- output of the multiplier
end TOP;

architecture Behavioral of TOP is

component AM
    generic( nbits : integer := 8);    
    Port ( X: in STD_LOGIC_VECTOR((nbits - 1) downto 0);
           Y: in STD_LOGIC_VECTOR((nbits - 1) downto 0);
           P: out STD_LOGIC_VECTOR((2*nbits - 1) downto 0));
end component;

-- signals for registering
signal X_reg, Y_reg: STD_LOGIC_VECTOR ((nbits - 1) downto 0) := (others=>'0');
signal P_next, P_reg: STD_LOGIC_VECTOR ((2*nbits - 1) downto 0) := (others=>'0');

begin

AM_instance: AM
    port map (X => X_reg,
              Y => Y_reg,
              P => P_next);

-- process where the signals of the inputs and the outputs are registered
process(clk)
begin
    if(rising_edge(clk)) then
        X_reg <= X;
        Y_reg <= Y;
        P_reg <= P_next;
     end if;
 end process;
   
P <= P_reg;

end Behavioral;