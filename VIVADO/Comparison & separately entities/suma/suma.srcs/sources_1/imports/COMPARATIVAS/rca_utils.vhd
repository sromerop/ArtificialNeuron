library ieee;
use ieee.std_logic_1164.all;

package rca_utils is
  type ARRAY_type is array (integer range <>) of std_logic;
  constant nbits : integer := 16;
  constant nbits_RCA : integer := 4;
end;