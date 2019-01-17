library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package csa_utils is
    constant nbits : integer := 16;    -- 16-bit because it's the result of the inputs multiplication and the neuron input's width is 8
    constant nbits_RCA : integer := 4;    -- 4-bit words because 4 it´s a divider of 8, the neuron input's width
    type cout_1_type is array (integer range <>) of STD_LOGIC;    -- signals of this array connect the carry-out of the previous RCA to the carry-in of the next RCA when carry-in is 1
    type cout_0_type is array (integer range <>) of STD_LOGIC;    -- signals of this array connect the carry-out of the previous RCA to the carry-in of the next RCA when carry-in is 0
    type sum_1_type is array (integer range <>) of STD_LOGIC_VECTOR((nbits_RCA - 1) downto 0);    -- signals of this array connect the sum of the RCA to the MUX when carry-in is 1
    type sum_0_type is array (integer range <>) of STD_LOGIC_VECTOR((nbits_RCA - 1) downto 0);    -- signals of this array connect the sum of the RCA to the MUX when carry-in is 0
end;