library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.rca_utils.all;

-- Ripple Carry Adder of 4-bit words
-- 4-bit words because 4 it´s a divider of 8, the neuron input's width
entity RCA_4b is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);    -- first term word
           b : in STD_LOGIC_VECTOR (3 downto 0);    -- second term word
           cin : in STD_LOGIC;  -- carry-in bit
           s : out STD_LOGIC_VECTOR (3 downto 0);   -- sum word
           cout : out STD_LOGIC);   -- carry-out bit
end RCA_4b;

architecture Behavioral of RCA_4b is

-- the number of Full Adders in a Ripple Carry Adder is the same as the bit width of the word
component FA
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
end component;

signal carry : ARRAY_type((nbits_RCA - 2) downto 0);    -- signals of this array connect the carry-out of the previous FA to the carry-in of the next FA (not the first nor the last ones)

begin

FA0: FA
    port map(a => a(0),
             b => b(0),
             cin => cin,
             s => s(0),
             cout => carry(0));

FA1: FA
    port map(a => a(1),
             b => b(1),
             cin => carry(0),
             s => s(1),
             cout => carry(1));

FA2: FA
    port map(a => a(2),
             b => b(2),
             cin => carry(1),
             s => s(2),
             cout => carry(2));

FA3: FA
    port map(a => a(3),
             b => b(3),
             cin => carry(2),
             s => s(3),
             cout => cout);

end Behavioral;