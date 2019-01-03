-- the dadda multiplier code has been taken from the following GitHub: https://github.com/philix/dadda_mult, but it has been partially modified
library ieee;
use ieee.std_logic_1164.all;
use work.dadda_utils.all;
use ieee.numeric_std.all;

-- DADDA Multiplier of 8-bit words
entity dadda_multi is
    port( a: in STD_LOGIC_VECTOR(7 downto 0);   -- input of the multiplier
          b: in STD_LOGIC_VECTOR(7 downto 0);   -- input of the multiplier
          p: out STD_LOGIC_VECTOR(15 downto 0));    -- output of the multiplier
end dadda_multi;

architecture dadda_multi_arch of dadda_multi is

-- partial product matrix lines
signal l1: std_logic_vector(7 downto 0);
signal l2: std_logic_vector(7 downto 0);
signal l3: std_logic_vector(7 downto 0);
signal l4: std_logic_vector(7 downto 0);
signal l5: std_logic_vector(7 downto 0);
signal l6: std_logic_vector(7 downto 0);
signal l7: std_logic_vector(7 downto 0);
signal l8: std_logic_vector(7 downto 0);

-- Carry bits
signal c: std_logic_vector(30 downto 1);

-- Step 1
signal s1_1: std_logic_vector(14 downto 0);	
signal s1_2: std_logic_vector(13 downto 1);
signal s1_3: std_logic_vector(12 downto 2);
signal s1_4: std_logic_vector(11 downto 3);
signal s1_5: std_logic_vector(10 downto 4);
signal s1_6: std_logic_vector(10 downto 5);

-- Step 2
signal s2_1: std_logic_vector(14 downto 0);	
signal s2_2: std_logic_vector(13 downto 1);
signal s2_3: std_logic_vector(12 downto 2);
signal s2_4: std_logic_vector(12 downto 3);

-- Step 3
signal s3_1: std_logic_vector(14 downto 0);	
signal s3_2: std_logic_vector(13 downto 1);
signal s3_3: std_logic_vector(13 downto 2);

-- step 4 (16 bits in order to be able to use the + of VHDL)
signal s4_1: std_logic_vector(15 downto 0);	
signal s4_2: std_logic_vector(15 downto 0);

begin

-- first phase: partial product matrix
	l1 <= and_8b(b(0), a); l2 <= and_8b(b(1), a);
	l3 <= and_8b(b(2), a); l4 <= and_8b(b(3), a);
	l5 <= and_8b(b(4), a); l6 <= and_8b(b(5), a);
	l7 <= and_8b(b(6), a); l8 <= and_8b(b(7), a);
	
--   second phase: reduce the partial product matrix
    --   first step:
    --                    7 6   5 4 3 2 1 0
    ---------------------------------------
	-- l1                 3 2 | * * * * * *
	-- l2               3 3 2 | * * * * * 
	-- l3             3 3 3 * | * * * *
	-- l4           * 3 3 2 * | * * *
	-- l5       * | * 3 2 2 * | * *
	-- l6     * * | * * 2 * * | *
	-- l7   * * * | * * * * *
	-- l8 * * * * | * * * *

	s1_1(0)  <= l1(0);
	s1_1(1)  <= l1(1);
	s1_1(2)  <= l1(2);
	s1_1(3)  <= l1(3);
	s1_1(4)  <= l1(4);
	s1_1(5)  <= l1(5);
	s1_1(6)  <= sum_2b(l1(6), l2(5));
	s1_1(7)  <= sum_3b(l1(7), l2(6), l3(5));
	s1_1(8)  <= sum_3b(l2(7), l3(6), l4(5));
	s1_1(9)  <= sum_3b(l3(7), l4(6), l5(5));
	s1_1(10) <= l4(7);
	s1_1(11) <= l5(7);
	s1_1(12) <= l6(7);
	s1_1(13) <= l7(7);
	s1_1(14) <= l8(7);
	
	s1_2(1)  <= l2(0);
	s1_2(2)  <= l2(1);
	s1_2(3)  <= l2(2);
	s1_2(4)  <= l2(3);
	s1_2(5)  <= l2(4);
	s1_2(6)  <= l3(4);
	s1_2(7)  <= sum_2b(l4(4), l5(3));
	s1_2(8)  <= sum_2b(l5(4), l6(3));
	s1_2(9)  <= l6(4);
	s1_2(10) <= l5(6);
	s1_2(11) <= l6(6);
	s1_2(12) <= l7(6);
	s1_2(13) <= l8(6);
	
	s1_3(2)  <= l3(0);
	s1_3(3)  <= l3(1);
	s1_3(4)  <= l3(2);
	s1_3(5)  <= l3(3);
	s1_3(6)  <= l4(3);
	s1_3(7)  <= l6(2);
	s1_3(8)  <= l7(2);
	s1_3(9)  <= l7(3);
	s1_3(10) <= l6(5);
	s1_3(11) <= l7(5);
	s1_3(12) <= l8(5);
	
	s1_4(3)  <= l4(0);
	s1_4(4)  <= l4(1);
	s1_4(5)  <= l4(2);
	s1_4(6)  <= l5(2);
	s1_4(7)  <= l7(1);
	s1_4(8)  <= l8(1);
	s1_4(9)  <= l8(2);
	s1_4(10) <= l7(4);
	s1_4(11) <= l8(4);
	
	s1_5(4)  <= l5(0);
	s1_5(5)  <= l5(1);
	s1_5(6)  <= l6(1);
	s1_5(7)  <= l8(0);
	s1_5(8)  <= carry_3b(l1(7), l2(6), l3(5));
	s1_5(9)  <= carry_3b(l2(7), l3(6), l4(5));
	s1_5(10) <= l8(3);

	s1_6(5)  <= l6(0);
	s1_6(6)  <= l7(0);
	s1_6(7)  <= carry_2b(l1(6), l2(5));
	s1_6(8)  <= carry_2b(l4(4), l5(3));
	s1_6(9)  <= carry_2b(l5(4), l6(3));
	s1_6(10) <= carry_3b(l3(7), l4(6), l5(5));
	
	-- Segundo passo:
    --                9 8 7 6 5 4 3 2 1 0
    ---------------------------------------
	-- s1_1 * * * 3 3 3 3 3 3 3 2 * * * *
	--   _2   * * 3 3 3 3 3 3 3 2 * * *
	--   _3     * 3 3 3 3 3 3 3 * * *
    --   _4       * 3 3 3 3 3 2 * *
	--   _5         3 3 3 3 3 2 *
	--   _6         3 3 3 3 3 *

	s2_1(0)  <= s1_1(0);
	s2_1(1)  <= s1_1(1);
	s2_1(2)  <= s1_1(2);
	s2_1(3)  <= s1_1(3);
	s2_1(4)  <= sum_2b(s1_1(4), s1_2(4));
	s2_1(5)  <= sum_3b(s1_1(5), s1_2(5), s1_3(5));
	s2_1(6)  <= sum_3b(s1_1(6), s1_2(6), s1_3(6));
	s2_1(7)  <= sum_3b(s1_1(7), s1_2(7), s1_3(7));
	s2_1(8)  <= sum_3b(s1_1(8), s1_2(8), s1_3(8));
	s2_1(9)  <= sum_3b(s1_1(9), s1_2(9), s1_3(9));
	s2_1(10) <= sum_3b(s1_1(10), s1_2(10), s1_3(10));
	s2_1(11) <= sum_3b(s1_1(11), s1_2(11), s1_3(11));
	s2_1(12) <= s1_1(12);
	s2_1(13) <= s1_1(13);
	s2_1(14) <= s1_1(14);
	
	s2_2(1)  <= s1_2(1);
	s2_2(2)  <= s1_2(2);
	s2_2(3)  <= s1_2(3);
	s2_2(4)  <= s1_3(4);
	s2_2(5)  <= sum_2b(s1_4(5), s1_5(5));
	s2_2(6)  <= sum_3b(s1_4(6), s1_5(6), s1_6(6));
	s2_2(7)  <= sum_3b(s1_4(7), s1_5(7), s1_6(7));
	s2_2(8)  <= sum_3b(s1_4(8), s1_5(8), s1_6(8));
	s2_2(9)  <= sum_3b(s1_4(9), s1_5(9), s1_6(9));
	s2_2(10) <= sum_3b(s1_4(10), s1_5(10), s1_6(10));
	s2_2(11) <= s1_4(11);
	s2_2(12) <= s1_2(12);
	s2_2(13) <= s1_2(13);
	
	s2_3(2)  <= s1_3(2);
	s2_3(3)  <= s1_3(3);
	s2_3(4)  <= s1_4(4);
	s2_3(5)  <= s1_6(5);
	s2_3(6)  <= carry_3b(s1_1(5), s1_2(5), s1_3(5));
	s2_3(7)  <= carry_3b(s1_1(6), s1_2(6), s1_3(6));
	s2_3(8)  <= carry_3b(s1_1(7), s1_2(7), s1_3(7));
	s2_3(9)  <= carry_3b(s1_1(8), s1_2(8), s1_3(8));
	s2_3(10) <= carry_3b(s1_1(9), s1_2(9), s1_3(9));
	s2_3(11) <= carry_3b(s1_1(10), s1_2(10), s1_3(10));
	s2_3(12) <= s1_3(12);
		
	s2_4(3)  <= s1_4(3);
	s2_4(4)  <= s1_5(4);
	s2_4(5)  <= carry_2b(s1_1(4), s1_2(4));
	s2_4(6)  <= carry_2b(s1_4(5), s1_5(5));
	s2_4(7)  <= carry_3b(s1_4(6), s1_5(6), s1_6(6));
	s2_4(8)  <= carry_3b(s1_4(7), s1_5(7), s1_6(7));
	s2_4(9)  <= carry_3b(s1_4(8), s1_5(8), s1_6(8));
	s2_4(10) <= carry_3b(s1_4(9), s1_5(9), s1_6(9));
	s2_4(11) <= carry_3b(s1_4(10), s1_5(10), s1_6(10));
	s2_4(12) <= carry_3b(s1_1(11), s1_2(11), s1_3(11));
	
	-- third step:
	s3_1(0)  <= s2_1(0);
	s3_1(1)  <= s2_1(1);
	s3_1(2)  <= s2_1(2);
	s3_1(3)  <= sum_2b(s2_1(3), s2_2(3));
	s3_1(4)  <= sum_3b(s2_1(4), s2_2(4), s2_3(4));
	s3_1(5)  <= sum_3b(s2_1(5), s2_2(5), s2_3(5));
	s3_1(6)  <= sum_3b(s2_1(6), s2_2(6), s2_3(6));
	s3_1(7)  <= sum_3b(s2_1(7), s2_2(7), s2_3(7));
	s3_1(8)  <= sum_3b(s2_1(8), s2_2(8), s2_3(8));
	s3_1(9)  <= sum_3b(s2_1(9), s2_2(9), s2_3(9));
	s3_1(10) <= sum_3b(s2_1(10), s2_2(10), s2_3(10));
	s3_1(11) <= sum_3b(s2_1(11), s2_2(11), s2_3(11));
	s3_1(12) <= sum_3b(s2_1(12), s2_2(12), s2_3(12));
	s3_1(13) <= s2_1(13);
	s3_1(14) <= s2_1(14);
	
	s3_2(1)  <= s2_2(1);
	s3_2(2)  <= s2_2(2);
	s3_2(3)  <= s2_3(3);
	s3_2(4)  <= s2_4(4);
	s3_2(5)  <= s2_4(5);
	s3_2(6)  <= s2_4(6);
	s3_2(7)  <= s2_4(7);
	s3_2(8)  <= s2_4(8);
	s3_2(9)  <= s2_4(9);
	s3_2(10) <= s2_4(10);
	s3_2(11) <= s2_4(11);
	s3_2(12) <= s2_4(12);
	s3_2(13) <= s2_2(13);
	
	s3_3(2)  <= s2_3(2);
	s3_3(3)  <= s2_4(3);
	s3_3(4)  <= carry_2b(s2_1(3), s2_2(3));
	s3_3(5)  <= carry_3b(s2_1(4), s2_2(4), s2_3(4));
	s3_3(6)  <= carry_3b(s2_1(5), s2_2(5), s2_3(5));
	s3_3(7)  <= carry_3b(s2_1(6), s2_2(6), s2_3(6));
	s3_3(8)  <= carry_3b(s2_1(7), s2_2(7), s2_3(7));
	s3_3(9)  <= carry_3b(s2_1(8), s2_2(8), s2_3(8));
	s3_3(10) <= carry_3b(s2_1(9), s2_2(9), s2_3(9));
	s3_3(11) <= carry_3b(s2_1(10), s2_2(10), s2_3(10));
	s3_3(12) <= carry_3b(s2_1(11), s2_2(11), s2_3(11));
	s3_3(13) <= carry_3b(s2_1(12), s2_2(12), s2_3(12));
	
	-- fourth step:
	s4_1(0)  <= s3_1(0);
	s4_1(1)  <= s3_1(1);
	s4_1(2)  <= sum_2b(s3_1(2), s3_2(2));
	s4_1(3)  <= sum_3b(s3_1(3), s3_2(3), s3_3(3));
	s4_1(4)  <= sum_3b(s3_1(4), s3_2(4), s3_3(4));
	s4_1(5)  <= sum_3b(s3_1(5), s3_2(5), s3_3(5));
	s4_1(6)  <= sum_3b(s3_1(6), s3_2(6), s3_3(6));
	s4_1(7)  <= sum_3b(s3_1(7), s3_2(7), s3_3(7));
	s4_1(8)  <= sum_3b(s3_1(8), s3_2(8), s3_3(8));
	s4_1(9)  <= sum_3b(s3_1(9), s3_2(9), s3_3(9));
	s4_1(10) <= sum_3b(s3_1(10), s3_2(10), s3_3(10));
	s4_1(11) <= sum_3b(s3_1(11), s3_2(11), s3_3(11));
	s4_1(12) <= sum_3b(s3_1(12), s3_2(12), s3_3(12));
	s4_1(13) <= sum_3b(s3_1(13), s3_2(13), s3_3(13));
	s4_1(14) <= s3_1(14);
	s4_1(15) <= '0';
	
	s4_2(0)  <= '0';
	s4_2(1)  <= s3_2(1);
	s4_2(2)  <= s3_3(2);
	s4_2(3)  <= carry_2b(s3_1(2), s3_2(2));
	s4_2(4)  <= carry_3b(s3_1(3), s3_2(3), s3_3(3));
	s4_2(5)  <= carry_3b(s3_1(4), s3_2(4), s3_3(4));
	s4_2(6)  <= carry_3b(s3_1(5), s3_2(5), s3_3(5));
	s4_2(7)  <= carry_3b(s3_1(6), s3_2(6), s3_3(6));
	s4_2(8)  <= carry_3b(s3_1(7), s3_2(7), s3_3(7));
	s4_2(9)  <= carry_3b(s3_1(8), s3_2(8), s3_3(8));
	s4_2(10) <= carry_3b(s3_1(9), s3_2(9), s3_3(9));
	s4_2(11) <= carry_3b(s3_1(10), s3_2(10), s3_3(10));
	s4_2(12) <= carry_3b(s3_1(11), s3_2(11), s3_3(11));
	s4_2(13) <= carry_3b(s3_1(12), s3_2(12), s3_3(12));
	s4_2(14) <= carry_3b(s3_1(13), s3_2(13), s3_3(13));
	s4_2(15) <= '0';
	
-- third phase: sum of the remaining two lines
	p <= std_logic_vector(unsigned(s4_1) + unsigned(s4_2));

end architecture;