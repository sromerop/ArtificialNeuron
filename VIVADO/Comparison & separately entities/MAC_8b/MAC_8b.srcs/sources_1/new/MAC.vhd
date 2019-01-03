library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.mac_utils.all;

-- this MAC unit is composed of a DADDA multiplier and a Carry Select Adder
entity MAC is
    generic( ninputs : integer := 3);    -- number of inputs of the neuron, the rest of the modules inherit it from here
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);   -- input of the multiplier before transformation
           b : in STD_LOGIC_VECTOR (7 downto 0);   -- input of the multiplier before transformation
           clk : in STD_LOGIC;  -- clock signal
           reset, start : in STD_LOGIC; -- reset and start signals
           s : out STD_LOGIC_VECTOR ((16 + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0)); -- output that goes to the accumulator

attribute use_dsp48 : string;
attribute use_dsp48 of MAC : entity is "yes";

end MAC;

architecture Behavioral of MAC is

component dadda_multi is
    Port( a : in STD_LOGIC_VECTOR(7 downto 0);
          b : in STD_LOGIC_VECTOR(7 downto 0);
          p : out STD_LOGIC_VECTOR(15 downto 0));
end component;

component CSA
    generic( ninputs : integer);             
    Port ( a : in STD_LOGIC_VECTOR ((nbits - 1) downto 0); -- entrada que procede del multiplicador
           b : in STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0); -- entrada procedente del acumulador
           cin : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0);
           cout : out STD_LOGIC);
end component;

-- registering and auxiliar signals
signal a_reg, a_next, b_reg, b_next : STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');  -- signals used for registering the inputs and the weights
signal p_next, p_reg : STD_LOGIC_VECTOR (15 downto 0) := (others=>'0'); -- result of the multiplication
signal product : STD_LOGIC_VECTOR (15 downto 0) := (others=>'0');   -- output of the multiplier
signal s_next, s_reg : STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0) := (others=>'0');  -- result of the sum
signal sum : STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0) := (others=>'0');   -- output of the adder/accumulator
signal count_reg, count_next : STD_LOGIC_VECTOR (4 downto 0) := (others=>'0');   -- signals used for registering the count of the number of operations, equal to the number of inputs of the neuron

begin

DADDA: dadda_multi 
    port map(a => a_reg, 
             b => b_reg,
             p => product);

CSAdd: CSA 
    generic map(ninputs)
    port map(a => p_reg, 
             b => s_reg,
             cin => '0',    -- 0 because there's no carry-in port and cannot be open
             s => sum, 
             cout => open); -- open because there's no carry-out port

-- process where the signals are registered, depending on the rising edge of the clock signal
-- there is also a reset signal that makes every signal to be 0
process(clk, reset)
begin
    if reset = '1' then
        a_reg <= (others=>'0');
        b_reg <= (others=>'0');
        p_reg <= (others=>'0');
        s_reg <= (others=>'0');
        count_reg <= (others=>'0');
    elsif(rising_edge(clk)) then
        a_reg <= a_next;
        b_reg <= b_next;        
        p_reg <= p_next;
        s_reg <= s_next;
        count_reg <= count_next; 
    end if;
 end process;

-- process where the signals get their corresponding value
-- it depends on the start signal, the inputs, the counter and the values of the sum operation
process(start, a, b, count_reg, sum)
begin
    if(start = '1') then
            a_next <= a;
            b_next <= b;        
            p_next <= (others=>'0');
            s_next <= (others=>'0');
            count_next <= (others=>'0');
    elsif(count_reg >= STD_LOGIC_VECTOR(to_unsigned(0, count_reg'length)) and count_reg <= STD_LOGIC_VECTOR(to_unsigned(ninputs - 1, count_reg'length))) then
            a_next <= a;
            b_next <= b;        
            p_next <= product;
            s_next <= sum;
            count_next <= STD_LOGIC_VECTOR(unsigned(count_reg) + 1);
    elsif(count_reg > STD_LOGIC_VECTOR(to_unsigned(ninputs - 1, count_reg'length))) then
            a_next <= (others=>'0');
            b_next <= (others=>'0');        
            p_next <= (others=>'0');
            s_next <= sum;
            count_next <= count_reg;
    end if;
 end process;

s <= s_reg;

end Behavioral;