library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.rca_utils.all;

-- Ripple Carry Adder of 4-bit words
entity RCA is
    generic(ninputs : integer);
    Port ( a : in STD_LOGIC_VECTOR ((nbits - 1) downto 0);    -- first term word
           b : in STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0);    -- second term word
           cin : in STD_LOGIC;  -- carry-in bit
           s : out STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0);   -- sum word
           cout : out STD_LOGIC);   -- carry-out bit
end RCA;

architecture Behavioral of RCA is

component FA
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
end component;

-- intermediate signal handling
signal zeros : STD_LOGIC_VECTOR ((ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0) := (others=>'0');    -- a and b with the same width (difference factor)
signal ones : STD_LOGIC_VECTOR ((ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0) := (others=>'1');    -- a and b with the same width (difference factor)
signal a_def : STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0);    -- final width of the addends (same width)
signal carry : ARRAY_type((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 2) downto 0);    -- signals of this array connect the carry-out of the previous FA to the carry-in of the next FA (not the first nor the last ones)

begin

-- adjustment of inputs
a_def <= zeros & a when a(nbits - 1) = '0' else  -- sign extension
         ones & a;

    -- First stage gets the carry in
    stage0: FA 
        port map(a => a_def(0), 
                 b => b(0), 
                 cin => cin, 
                 s => s(0), 
                 cout => carry(0));

    -- Middle stages follow the same pattern
    gen_stage:
        for I in 1 to (nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 2) generate
--        stageX: FA port map (a(I), b(I), carry(I-1), s(I), carry(I));
        stageX: FA 
            port map (a => a_def(I), 
                      b => b(I), 
                      cin => carry(I-1), 
                      s => s(I), 
                      cout => carry(I));
        end generate gen_stage;

    -- Last stage spits the carry out
    stageN_1: FA 
        port map (a => a_def(nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1), 
                  b => b(nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1), 
                  cin => carry(nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 2), 
                  s => s(nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1), 
                  cout => cout);

end Behavioral;