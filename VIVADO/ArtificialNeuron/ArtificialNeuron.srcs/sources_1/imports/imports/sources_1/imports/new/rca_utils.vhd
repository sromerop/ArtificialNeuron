library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package rca_utils is
    constant nbits_RCA : integer := 4;    -- 4-bit words because 4 it´s a divider of 8, the neuron input's width
    type ARRAY_type is array (integer range <>) of STD_LOGIC;    -- signals of this array connect the carry-out of the previous FA to the carry-in of the next FA
end;