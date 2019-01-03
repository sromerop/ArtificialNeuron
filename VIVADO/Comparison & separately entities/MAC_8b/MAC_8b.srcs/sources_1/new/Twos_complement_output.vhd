library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

-- Two's complement at the output of the multiplier if it was transformed at the input of the multiplier
entity Twos_complement_output is
    Port ( input : in STD_LOGIC_VECTOR (15 downto 0);    -- output of the multiplier before transformation
           changed : in STD_LOGIC;  -- bit that determines if the value has to be transformed
           output : out STD_LOGIC_VECTOR (15 downto 0));    -- output of the multiplier after transformation
end Twos_complement_output;

architecture Behavioral of Twos_complement_output is

begin

output <= std_logic_vector(unsigned(not input) + 1) when changed = '1' else -- two's complement again if necessary
          input;

end Behavioral;