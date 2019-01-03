library ieee;
use ieee.std_logic_1164.all;

package csa_utils is
  constant nbits : integer := 16;
  constant nbits_RCA : integer := 4;
  type cout_1_type is array (integer range <>) of std_logic;
  type cout_0_type is array (integer range <>) of std_logic;
  type sum_1_type is array (integer range <>) of std_logic_vector((nbits_RCA - 1) downto 0);
  type sum_0_type is array (integer range <>) of std_logic_vector((nbits_RCA - 1) downto 0);
end;