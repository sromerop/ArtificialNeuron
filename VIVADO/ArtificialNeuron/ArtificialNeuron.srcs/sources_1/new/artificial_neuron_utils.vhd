library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package artificial_neuron_utils is
    constant nbits : integer := 16;    -- 16-bit because it's the result of the inputs multiplication and the neuron input's width is 8
    constant nbits_RCA : integer := 4;    -- 4-bit words because 4 it´s a divider of 8, the neuron input's width
    type WORD_ARRAY_type is array (integer range <>) of STD_LOGIC_VECTOR (7 downto 0);   -- signals of this array are the inputs of the neuron 
end;