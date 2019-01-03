library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.csa_utils.all;

-- Carry Select Adder
-- the 16-bit input comes from the multiplier
-- while the input with variable width comes from the accumulator and depends on the number of inputs of the neuron
entity CSA is
    generic( ninputs : integer);    -- number of inputs of the neuron, it's inherited from the top module
    Port ( a : in STD_LOGIC_VECTOR ((nbits - 1) downto 0); -- input that comes from the multiplier
           b : in STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0); -- input that comes from the accumulator
           cin : in STD_LOGIC;  -- carry-in bit
           s : out STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0); -- output that goes to the accumulator
           cout : out STD_LOGIC);   -- carry-out bit
end CSA;

architecture Behavioral of CSA is

-- CSA sums the addends both with carry-in = 0 and carry-in = 1 by the use of several RCAs, but the sum has a value or another depending on the value of carry-in
component RCA_4b
    Port ( a : in STD_LOGIC_VECTOR ((nbits_RCA - 1) downto 0);
           b : in STD_LOGIC_VECTOR ((nbits_RCA - 1) downto 0);
           cin : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR ((nbits_RCA - 1) downto 0);
           cout : out STD_LOGIC);
end component;

component mux_2to1
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           ctrl : in STD_LOGIC;
           s : out STD_LOGIC);
end component;

-- adjustment of inputs
signal cin_input : STD_LOGIC;
signal a_input : STD_LOGIC_VECTOR ((nbits - 1) downto 0);

constant remaining : integer := (nbits_RCA - (ninputs rem nbits_RCA));  -- in order to fill all the inputs of the RCAs
signal zeros_a : STD_LOGIC_VECTOR ((ninputs - 1) downto 0) := (others=>'0');    -- a and b with the same width (difference factor)
signal ones_a : STD_LOGIC_VECTOR ((ninputs - 1) downto 0) := (others=>'1');    -- a and b with the same width (difference factor)
signal addend_a : STD_LOGIC_VECTOR ((nbits + ninputs - 1) downto 0); -- a and b with the same width
signal b_input, addend_b : STD_LOGIC_VECTOR ((nbits + ninputs + remaining - 1) downto 0); -- a and b with the same width

signal zeros_RCA : STD_LOGIC_VECTOR ((remaining - 1) downto 0) := (others=>'0');   -- in order to be multiple of 4
signal ones_RCA : STD_LOGIC_VECTOR ((remaining - 1) downto 0) := (others=>'1');   -- in order to be multiple of 4
signal addend_a_fin, addend_b_fin : STD_LOGIC_VECTOR ((nbits + ninputs + remaining - 1) downto 0);    -- final width of the addends (same width and filling all the inputs of the RCAs)

-- intermediate signal handling
constant nMUX : integer := nbits + ninputs + remaining + 1;  -- word width plus carry-out (+1)
constant nRCA : integer := 2*((nbits + ninputs)/nbits_RCA + 1);   -- sum is processed twice using ceiling function (+1)
signal carry_1 : cout_1_type((nRCA/2 - 1) downto 0);    -- signals of this array connect the carry-out of the previous RCA to the carry-in of the next RCA when carry-in is 1
signal carry_0 : cout_0_type((nRCA/2 - 1) downto 0);    -- signals of this array connect the carry-out of the previous RCA to the carry-in of the next RCA when carry-in is 0
signal sum_1 : sum_1_type ((nRCA/2 - 1) downto 0);    -- signals of this ay connect the sum of the RCA to the MUX when carry-in is 1
signal sum_0 : sum_0_type ((nRCA/2 - 1) downto 0);    -- signals of this array connect the sum of the RCA to the MUX when carry-in is 0

-- output signal handling
signal cout_output : STD_LOGIC;
signal sum_output : STD_LOGIC_VECTOR ((nbits + ninputs + remaining - 1) downto 0);

begin

-- adjustment of inputs
a_input <= a;
b_input <= b;
cin_input <= cin;

addend_a <= zeros_a & a_input when a(nbits - 1) = '0' else  -- sign extension
            ones_a & a_input;
addend_b <= b_input;

addend_a_fin <= zeros_RCA & addend_a when a(nbits - 1) = '0' else  -- sign extension
                ones_RCA & addend_a;
addend_b_fin <= addend_b;

-- sum of the adjusted inputs
    -- First stage gets the carry-in
    RCA_03_1: RCA_4b    -- carry-in bit is 1
        port map(a => addend_a_fin((nbits_RCA - 1) downto 0),
                 b => addend_b_fin((nbits_RCA - 1) downto 0),
                 cin => '1',
                 s => sum_1(0)((nbits_RCA - 1) downto 0),
                 cout => carry_1(0));
    RCA_03_0: RCA_4b    -- carry-in bit is 0
        port map(a => addend_a_fin((nbits_RCA - 1) downto 0),
                 b => addend_b_fin((nbits_RCA - 1) downto 0),
                 cin => '0',
                 s => sum_0(0)((nbits_RCA - 1) downto 0),
                 cout => carry_0(0));
    gen_stage_mux_ini:
        for I in 0 to (nbits_RCA - 1) generate
           MUX_X: mux_2to1  -- MUX to select the final value of the sum
               port map(a => sum_0(0)(I),
                        b => sum_1(0)(I),
                        ctrl => cin_input,
                        s => sum_output(I));
        end generate gen_stage_mux_ini;

    -- Middle stages follow the same pattern
    gen_stage:
        for I in 1 to nRCA/2 - 2 generate   -- Neither the first nor the last stages
            RCA_X_1: RCA_4b    -- carry-in bit is 1
                port map(a => addend_a_fin((nbits_RCA*I+(nbits_RCA - 1)) downto (nbits_RCA*I)),
                         b => addend_b_fin((nbits_RCA*I+(nbits_RCA - 1)) downto (nbits_RCA*I)),
                         cin => carry_1(I-1),
                         s => sum_1(I)((nbits_RCA - 1) downto 0),
                         cout => carry_1(I));
            RCA_X_0: RCA_4b    -- carry-in bit is 0
                port map(a => addend_a_fin((nbits_RCA*I+(nbits_RCA - 1)) downto (nbits_RCA*I)),
                         b => addend_b_fin((nbits_RCA*I+(nbits_RCA - 1)) downto (nbits_RCA*I)),
                         cin => carry_0(I-1),
                         s => sum_0(I)((nbits_RCA - 1) downto 0),
                         cout => carry_0(I));
            gen_stage_mux_med:
                for J in 0 to (nbits_RCA - 1) generate
                    MUX_X: mux_2to1  -- MUX to select the final value of the sum
                        port map(a => sum_0(I)(J),
                                 b => sum_1(I)(J),
                                 ctrl => cin_input,
                                 s => sum_output(nbits_RCA*I+J));
                end generate gen_stage_mux_med;
        end generate gen_stage;

    -- Last stage spits the carry-out
    RCA_N4N1_1: RCA_4b    -- carry-in bit is 1
        port map(a => addend_a_fin((nbits + ninputs + remaining - 1) downto (nbits + ninputs + remaining - nbits_RCA)),
                 b => addend_b_fin((nbits + ninputs + remaining - 1) downto (nbits + ninputs + remaining - nbits_RCA)),
                 cin => carry_1(nRCA/2 - 2),
                 s => sum_1(nRCA/2 - 1)((nbits_RCA - 1) downto 0),
                 cout => carry_1(nRCA/2 - 1));
    RCA_N4N1_0: RCA_4b    -- carry-in bit is 0
        port map(a => addend_a_fin((nbits + ninputs + remaining - 1) downto (nbits + ninputs + remaining - nbits_RCA)),
                 b => addend_b_fin((nbits + ninputs + remaining - 1) downto (nbits + ninputs + remaining - nbits_RCA)),
                 cin => carry_0(nRCA/2 - 2),
                 s => sum_0(nRCA/2 - 1)((nbits_RCA - 1) downto 0),
                 cout => carry_0(nRCA/2 - 1));
    gen_stage_mux_fin:
        for I in 0 to (nbits_RCA - 1) generate
           MUX_X: mux_2to1  -- MUX to select the final value of the sum
               port map(a => sum_0(nRCA/2 - 1)(I),
                        b => sum_1(nRCA/2 - 1)(I),
                        ctrl => cin_input,
                        s => sum_output(nbits + ninputs + remaining - nbits_RCA + I));
        end generate gen_stage_mux_fin;
    MUX_COUT: mux_2to1  -- MUX to select the final value of the carry-out bit
        port map(a => carry_0(nRCA/2 - 1),
                 b => carry_1(nRCA/2 - 1),
                 ctrl => cin_input,
                 s => cout_output);

s <= sum_output;
cout <= cout_output;

end Behavioral;