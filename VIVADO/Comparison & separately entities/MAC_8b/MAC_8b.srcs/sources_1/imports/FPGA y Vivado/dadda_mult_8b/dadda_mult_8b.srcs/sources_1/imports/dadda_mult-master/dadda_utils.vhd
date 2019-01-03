library ieee;
use ieee.std_logic_1164.all;

package dadda_utils is
  function and_8b(b: std_logic; word: std_logic_vector) return std_logic_vector;
  function sum_2b(a: std_logic; b: std_logic) return std_logic;
  function sum_3b(a: std_logic; b: std_logic; c: std_logic) return std_logic;
  function carry_2b(a: std_logic; b: std_logic) return std_logic;
  function carry_3b(a: std_logic; b: std_logic; c: std_logic) return std_logic;
end;

package body dadda_utils is

function and_8b(b: std_logic; word: std_logic_vector) return std_logic_vector is
variable res: std_logic_vector(7 downto 0);
begin
	for i in 0 to 7 loop
		res(i) := word(i) and b;
	end loop;
	return res;
end function;

function sum_2b(a: std_logic; b: std_logic) return std_logic is
begin
	return a xor b;
end;

function sum_3b(a: std_logic; b: std_logic; c: std_logic) return std_logic is
begin
	return a xor b xor c;
end;

function carry_2b(a: std_logic; b: std_logic) return std_logic is
begin
	return a and b;
end;

function carry_3b(a: std_logic; b: std_logic; c: std_logic) return std_logic is
begin
	return (a and b) or (a and c) or (b and c);
end;

end package body;
