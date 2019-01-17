-- the dadda multiplier code has been taken from the following GitHub: https://github.com/philix/dadda_mult, but it has been partially modified
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.dadda_utils.all;

-- DADDA Multiplier of 8-bit words
entity dadda_multi is
    port( a: in STD_LOGIC_VECTOR(7 downto 0);   -- input of the multiplier before transformation
          b: in STD_LOGIC_VECTOR(7 downto 0);   -- input of the multiplier before transformation
          p: out STD_LOGIC_VECTOR(15 downto 0));    -- output of the multiplier after transformation

attribute use_dsp48 : string;   -- use DSP Slices when synthesizing
attribute use_dsp48 of dadda_multi : entity is "yes";

end dadda_multi;

architecture dadda_multi_arch of dadda_multi is

-- in order to simplify the multiplication, if the number is negative (sign bit is 1), it´s transformed to two's complement at the input
-- if only one of the numbers is negative, it´s transformed again to two's complement at the output
component Twos_complement_input is
    Port ( input : in STD_LOGIC_VECTOR (7 downto 0);
           changed : out STD_LOGIC;
           output : out STD_LOGIC_VECTOR (7 downto 0));
end component;
 
component Twos_complement_output is
    Port ( input : in STD_LOGIC_VECTOR (15 downto 0);
           changed : in STD_LOGIC;
           output : out STD_LOGIC_VECTOR (15 downto 0));
end component;

-- signals to handle transformation to two's complement
signal a_trans, b_trans : STD_LOGIC_VECTOR(7 downto 0); -- signals after input transformation
signal change_a, change_b, change_p : STD_LOGIC;    -- signals that show if the signal has been changed/is going to be changed
signal p_trans : STD_LOGIC_VECTOR(15 downto 0); -- signal after output transformation

-- partial product matrix lines
signal l1: STD_LOGIC_VECTOR(7 downto 0);
signal l2: STD_LOGIC_VECTOR(7 downto 0);
signal l3: STD_LOGIC_VECTOR(7 downto 0);
signal l4: STD_LOGIC_VECTOR(7 downto 0);
signal l5: STD_LOGIC_VECTOR(7 downto 0);
signal l6: STD_LOGIC_VECTOR(7 downto 0);
signal l7: STD_LOGIC_VECTOR(7 downto 0);
signal l8: STD_LOGIC_VECTOR(7 downto 0);

-- carry bits
signal c: STD_LOGIC_VECTOR(30 downto 1);

-- step 1
signal s1_1: STD_LOGIC_VECTOR(14 downto 0);
signal s1_2: STD_LOGIC_VECTOR(13 downto 1);
signal s1_3: STD_LOGIC_VECTOR(12 downto 2);
signal s1_4: STD_LOGIC_VECTOR(11 downto 3);
signal s1_5: STD_LOGIC_VECTOR(10 downto 4);
signal s1_6: STD_LOGIC_VECTOR(10 downto 5);

-- step 2
signal s2_1: STD_LOGIC_VECTOR(14 downto 0);
signal s2_2: STD_LOGIC_VECTOR(13 downto 1);
signal s2_3: STD_LOGIC_VECTOR(12 downto 2);
signal s2_4: STD_LOGIC_VECTOR(12 downto 3);

-- step 3
signal s3_1: STD_LOGIC_VECTOR(14 downto 0);
signal s3_2: STD_LOGIC_VECTOR(13 downto 1);
signal s3_3: STD_LOGIC_VECTOR(13 downto 2);

-- step 4 (16 bits in order to be able to use the + of VHDL)
signal s4_1: STD_LOGIC_VECTOR(15 downto 0);
signal s4_2: STD_LOGIC_VECTOR(15 downto 0);

begin

INPUT_A: Twos_complement_input
    port map (input => a,
              changed => change_a,
              output => a_trans);

INPUT_B: Twos_complement_input
    port map (input => b,
              changed => change_b,
              output => b_trans);

-- first phase: partial product matrix
	l1 <= and_8b(b_trans(0), a_trans);
	l2 <= and_8b(b_trans(1), a_trans);
    l3 <= and_8b(b_trans(2), a_trans);
    l4 <= and_8b(b_trans(3), a_trans);
    l5 <= and_8b(b_trans(4), a_trans);
    l6 <= and_8b(b_trans(5), a_trans);
    l7 <= and_8b(b_trans(6), a_trans);
    l8 <= and_8b(b_trans(7), a_trans);

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

	-- second step:
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
	p_trans <= STD_LOGIC_VECTOR(unsigned(s4_1) + unsigned(s4_2));
	change_p <= (change_a xor change_b);   -- signal that shows if there is going to be changed at the output

OUTPUT: Twos_complement_output
        port map (input => p_trans,
                  changed => change_p,
                  output => p);

end architecture;