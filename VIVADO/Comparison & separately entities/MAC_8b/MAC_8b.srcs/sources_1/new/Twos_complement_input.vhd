library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Two's complement at the input of the multiplier if the sign bit is 1
entity Twos_complement_input is
    Port ( input : in STD_LOGIC_VECTOR (7 downto 0);    -- input of the multiplier before transformation
           changed : out STD_LOGIC;  -- bit that determines at the output of the multiplier if the value has to be transformed
           output : out STD_LOGIC_VECTOR (7 downto 0));    -- input of the multiplier after transformation
end Twos_complement_input;

architecture Behavioral of Twos_complement_input is

begin

output <= "01111111" when input = "10000000" else   -- this value cannot be represented, so the output is the maximum representable
          std_logic_vector(unsigned(not input) + 1) when input(7) = '1' else    -- two's complement if the sign bit is 1
          input;

changed <= '1' when input(7) = '1' else -- in order to know at the output of the multiplier if it´s necessary to transform again
           '0';

end Behavioral;