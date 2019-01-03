library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Half Adder
entity HA is
    Port ( a : in STD_LOGIC;    -- first term bit
           b : in STD_LOGIC;    -- second term bit
           cout : out STD_LOGIC;   -- carry-out bit
           s : out STD_LOGIC);   -- sum bit
end HA;

architecture Behavioral of HA is

begin

s <= a xor b;
cout <= a and b;

end Behavioral;