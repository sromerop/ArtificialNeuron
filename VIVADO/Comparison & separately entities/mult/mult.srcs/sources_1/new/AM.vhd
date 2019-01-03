-- the array multiplier code has been taken from: http://faculty.weber.edu/fonbrown/ee3610/arraymult.txt
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Array Multiplier
entity AM is
    generic( nbits : integer := 8);    -- number of bits of the input signals
    Port ( X: in STD_LOGIC_VECTOR((nbits - 1) downto 0);   -- input of the multiplier
           Y: in STD_LOGIC_VECTOR((nbits - 1) downto 0);   -- input of the multiplier
           P: out STD_LOGIC_VECTOR((2*nbits - 1) downto 0));    -- output of the multiplier
end AM;

architecture Behavioral of AM is

component HA
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cout : out STD_LOGIC;
           s : out STD_LOGIC);
end component;

component FA
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           cout : out STD_LOGIC;
           s : out STD_LOGIC);
end component;

-- all the 1-bit products are computed here. All of them have to be
-- computed some time. They may as well be done here. ab(n)(m) represents
-- the product a(n)b(m)
type product_terms is array (0 to (nbits - 1)) of std_logic_vector(0 to (nbits - 1));
signal XY: product_terms;
 
-- these are the carry and sum signals that connect one stage to the next
type interconnect is array (0 to (nbits - 2)) of std_logic_vector((nbits - 2) downto 0);
signal C, S: interconnect;

-- other handy temporary variables demanded by VHDL syntax constraints
signal addend, partial_prod: std_logic_vector((nbits - 2) downto 0);

begin

   -- compute 1-bit products
	process (X, Y)
	begin
	  for i in 0 to (nbits - 1) loop
	    for j in 0 to (nbits - 1) loop
		   XY(j)(i) <= X(j) and Y(i);
		 end loop;
	  end loop;
	end process;

   -- generate structural model for all adders
   Gen1: for j in 0 to (nbits - 2) generate
     -- row 0, all half adders
     HA1: HA 
        port map(a => XY(j+1)(0),
                 b => XY(j)(1),
                 cout => C(0)(j),
                 s => S(0)(j));
	  Gen2: for i in 1 to (nbits - 2) generate -- rows 1-N
	    GenMSB: if j = (nbits - 2) generate -- most significant bit has no adder above it
		   FA1: FA 
		      port map(a => XY(j)(i+1),
		               b => XY(j+1)(i),
		               cin => C(i-1)(j),
		               cout => C(i)(j),
		               s => S(i)(j));
		 end generate;
	    GenNorm: if j < (nbits - 2) generate -- regular adder, a superior adder exists
		   FA2: FA 
		      port map(a => XY(j)(i+1),
		               b => S(i-1)(j+1),
		               cin => C(i-1)(j),
		               cout => C(i)(j),
		               s => S(i)(j));
		 end generate;
	  end generate;
	end generate;
	
	-- connect the bottom half of the product to the sums that have escaped the
   -- array and the one-bit XoYo product
	process (S)
	begin
	  for i in 0 to (nbits - 2) loop
		 partial_prod(i) <= S(i)(0);
	  end loop;
	end process;

	P((nbits - 1) downto 0)<= partial_prod & XY(0)(0);
	
	-- VHDL demands that no operators are allowed in a port list, not even
	-- concatenation (which is a bit lame), so we form an addend from the
	-- top bits of the final stage of the array to feed to the adder.
	addend <= XY(nbits - 1)(nbits - 1) & S(nbits - 2)((nbits - 2) downto 1);
	
	P((2*nbits - 1) downto nbits) <= STD_LOGIC_VECTOR(unsigned('0' & C(nbits - 2)) + unsigned(addend));

end Behavioral;