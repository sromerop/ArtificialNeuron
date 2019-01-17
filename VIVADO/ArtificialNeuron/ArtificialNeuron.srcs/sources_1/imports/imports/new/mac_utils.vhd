library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package mac_utils is
    constant nbits : integer := 16;    -- 16-bit because it's the result of the inputs multiplication and the neuron input's width is 8
    constant nbits_RCA : integer := 4;    -- 4-bit words because 4 it´s a divider of 8, the neuron input's width
end;