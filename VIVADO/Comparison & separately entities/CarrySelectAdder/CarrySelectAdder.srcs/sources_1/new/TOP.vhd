library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.csa_utils.all;

entity TOP is
    generic( ninputs : integer := 3);    -- number of inputs of the neuron           
    Port ( a : in STD_LOGIC_VECTOR ((nbits - 1) downto 0); -- input that comes from the multiplier
           b : in STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0); -- input that comes from the accumulator
           cin : in STD_LOGIC;  -- carry-in bit
           clk : in STD_LOGIC;  -- clock signal
           s : out STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0); -- output that goes to the accumulator
           cout : out STD_LOGIC);   -- carry-out bit  
end TOP;

architecture Behavioral of TOP is

component CSA is
    generic( ninputs : integer);             
    Port ( a : in STD_LOGIC_VECTOR ((nbits - 1) downto 0); -- entrada que procede del multiplicador
           b : in STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0); -- entrada procedente del acumulador
           cin : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0);
           cout : out STD_LOGIC);
end component;

-- signals for registering
signal a_reg: STD_LOGIC_VECTOR ((nbits - 1) downto 0) := (others=>'0');
signal b_reg, s_next, s_reg: STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0);
signal cin_reg, cout_next, cout_reg: STD_LOGIC := '0';

begin

CSA_instance: CSA
    generic map (ninputs)
    port map (a => a_reg,
              b => b_reg,
              cin => cin_reg,
              s => s_next,
              cout => cout_next);

-- process where the signals are registered
process(clk)
begin
    if(rising_edge(clk)) then
        a_reg <= a;
        b_reg <= b;
        cin_reg <= cin;
        s_reg <= s_next;
        cout_reg <= cout_next;
     end if;
 end process;

cout <= cout_reg;
s <= s_reg;

end Behavioral;