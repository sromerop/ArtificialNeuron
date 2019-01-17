library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package dadda_utils is
    function and_8b(b: STD_LOGIC; word: STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR;    -- function that returns the AND operation of a bit with every bit of an eight-bit word
    function sum_2b(a: STD_LOGIC; b: STD_LOGIC) return STD_LOGIC; -- function that sums two bits using a XOR gate
    function sum_3b(a: STD_LOGIC; b: STD_LOGIC; c: STD_LOGIC) return STD_LOGIC;   -- function that sums three bits using two XOR gate
    function carry_2b(a: STD_LOGIC; b: STD_LOGIC) return STD_LOGIC; -- function that returns the carry of a two-bit sum using an AND gate
    function carry_3b(a: STD_LOGIC; b: STD_LOGIC; c: STD_LOGIC) return STD_LOGIC; -- function that returns the carry of a three-bit sum using three AND gates and two OR gates
end;

package body dadda_utils is

    function and_8b(b: STD_LOGIC; word: STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR is
        variable res: STD_LOGIC_VECTOR(7 downto 0);
    begin
	   for i in 0 to 7 loop
	       res(i) := word(i) and b;
       end loop;
	   return res;
    end function;

    function sum_2b(a: STD_LOGIC; b: STD_LOGIC) return STD_LOGIC is
    begin
	   return a xor b;
    end;

    function sum_3b(a: STD_LOGIC; b: STD_LOGIC; c: STD_LOGIC) return STD_LOGIC is
    begin
	   return a xor b xor c;
    end;

    function carry_2b(a: STD_LOGIC; b: STD_LOGIC) return STD_LOGIC is
    begin
	   return a and b;
    end;

    function carry_3b(a: STD_LOGIC; b: STD_LOGIC; c: STD_LOGIC) return STD_LOGIC is
    begin
	   return (a and b) or (a and c) or (b and c);
    end;

end package body;