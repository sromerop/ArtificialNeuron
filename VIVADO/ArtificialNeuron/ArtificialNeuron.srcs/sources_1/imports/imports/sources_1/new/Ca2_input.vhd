library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Two's complement if the sign bit is 1 at the input of the multiplier
entity Twos_complement_input is
    Port ( input : in STD_LOGIC_VECTOR (7 downto 0);
           changed : out STD_LOGIC;
           output : out STD_LOGIC_VECTOR (7 downto 0));
end Twos_complement_input;

architecture Behavioral of Twos_complement_input is

begin

output <= "01111111" when input = "10000000" else   -- this value cannot be represented, so the output is the maximum representable
          std_logic_vector(unsigned(not input) + 1) when input(7) = '1' else
          input;

changed <= '1' when input(7) = '1' else -- in order to know if it´s necessary to transform again
           '0';

end Behavioral;