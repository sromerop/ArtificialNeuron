library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Full Adder
entity FA is
    Port ( a : in STD_LOGIC;    -- first term bit
           b : in STD_LOGIC;    -- second term bit
           cin : in STD_LOGIC;  -- carry-in bit
           s : out STD_LOGIC;   -- sum bit
           cout : out STD_LOGIC);   -- carry-out bit
end FA;

architecture Behavioral of FA is

begin

s <= a xor b xor cin;
cout <= (a and b) or ((a xor b) and cin);

end Behavioral;