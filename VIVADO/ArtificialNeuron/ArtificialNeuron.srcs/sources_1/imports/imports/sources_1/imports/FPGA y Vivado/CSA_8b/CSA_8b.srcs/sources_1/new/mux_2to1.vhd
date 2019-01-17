library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Multiplexer of two inputs and one output
entity mux_2to1 is
    Port ( a : in STD_LOGIC;    -- first input bit
           b : in STD_LOGIC;    -- second input bit
           ctrl : in STD_LOGIC; -- select bit
           s : out STD_LOGIC);  -- selected bit
end mux_2to1;

architecture Behavioral of mux_2to1 is

begin

process(a, b, ctrl) -- whenever any of the inputs change, so the output does
begin
    if ctrl = '0' then
        s <= a;
    else
        s <= b;
    end if;
end process;

end Behavioral;