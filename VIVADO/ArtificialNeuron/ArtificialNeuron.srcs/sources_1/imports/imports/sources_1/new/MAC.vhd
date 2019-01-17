library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.mac_utils.all;

-- Multiply-accumulate unit of 8-bit words
-- the output width comes from the accumulator and depends on the number of inputs of the neuron
entity MAC is
    generic( ninputs : integer);    -- number of inputs of the neuron, it's inherited from the top module
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);    -- input of the neuron (input)
           b : in STD_LOGIC_VECTOR (7 downto 0);    -- output of the ROM (weight)
           clk : in STD_LOGIC;  -- clock signal
           reset, start : in STD_LOGIC; -- reset and start signals
           finish : out STD_LOGIC; -- finish signal
           s : out STD_LOGIC_VECTOR ((16 + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0)); -- output that has to be truncated to enter the LUT

attribute use_dsp48 : string;   -- use DSP Slices when synthesizing
attribute use_dsp48 of MAC : entity is "yes";

end MAC;

architecture Behavioral of MAC is

-- this MAC unit is composed of a DADDA multiplier and a Carry Select Adder
component dadda_multi is
    Port( a : in STD_LOGIC_VECTOR(7 downto 0);
          b : in STD_LOGIC_VECTOR(7 downto 0);
          p : out STD_LOGIC_VECTOR(15 downto 0));
end component;

component CSA
    generic( ninputs : integer);
    Port ( a : in STD_LOGIC_VECTOR ((nbits - 1) downto 0);
           b : in STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0);
           cin : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0);
           cout : out STD_LOGIC);
end component;

-- signals used for registering
signal started_reg, started_next : STD_LOGIC := '0';  -- signals used for registering if the procedure has started
signal a_reg, a_next, b_reg, b_next : STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');   -- inputs
signal p_next, p_reg : STD_LOGIC_VECTOR (15 downto 0) := (others=>'0'); -- result of the multiplication
signal product : STD_LOGIC_VECTOR (15 downto 0) := (others=>'0');   -- output of the multiplier
signal s_next, s_reg : STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0) := (others=>'0');  -- result of the sum
signal sum : STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0) := (others=>'0');   -- output of the adder/accumulator
signal count_reg, count_next : STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');  -- count of the number of operations, equal to the number of inputs of the neuron
signal finished_reg, finished_next : STD_LOGIC := '0';  -- signals used for registering if the procedure has finished

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
        started_reg <= '0';
        a_reg <= (others=>'0');
        b_reg <= (others=>'0');
        p_reg <= (others=>'0');
        s_reg <= (others=>'0');
        count_reg <= (others=>'0');
        finished_reg <= '0';
    elsif(rising_edge(clk)) then
        started_reg <= started_next;
        a_reg <= a_next;
        b_reg <= b_next;
        p_reg <= p_next;
        s_reg <= s_next;
        count_reg <= count_next;
        finished_reg <= finished_next;
    end if;
end process;

-- process where the signals gets their corresponding value
-- it depends on the start signal, the inputs of the entity, the counter and also the outputs of the multiplier and the adder
process(start, a, b, count_reg, product, sum)
begin
    if(start = '1') then    -- when start signal is 1, the procedure starts from the beginning
        started_next <= '1';
        a_next <= (others=>'0');
        b_next <= (others=>'0');
        p_next <= (others=>'0');
        s_next <= (others=>'0');
        count_next <= (others=>'0');
        finished_next <= '0';
    elsif(started_reg = '1' and count_reg >= STD_LOGIC_VECTOR(to_unsigned(0, count_reg'length)) and count_reg < STD_LOGIC_VECTOR(to_unsigned(2, count_reg'length))) then  -- because of some delay (two clock cycles) at obtaining the second term of the multiplication (weight) from a ROM memory, that delay has to be propagated to the start of the procedure
        a_next <= (others=>'0');
        b_next <= (others=>'0');
        p_next <= (others=>'0');
        s_next <= (others=>'0');
        count_next <= STD_LOGIC_VECTOR(unsigned(count_reg) + 1);
        finished_next <= '0';
    elsif(started_reg = '1' and count_reg >= STD_LOGIC_VECTOR(to_unsigned(2, count_reg'length)) and count_reg <= STD_LOGIC_VECTOR(to_unsigned((ninputs + 2), count_reg'length))) then -- the procedure has started and the values of inputs, products and sums are propagating through the registers of the MAC
        a_next <= a;
        b_next <= b;
        p_next <= product;
        s_next <= sum;
        count_next <= STD_LOGIC_VECTOR(unsigned(count_reg) + 1);
        finished_next <= '0';
    elsif(started_reg = '1' and count_reg = STD_LOGIC_VECTOR(to_unsigned((ninputs + 3), count_reg'length))) then  -- the procedure has finished, but the final value of the MAC operation remains at the output
        a_next <= (others=>'0');
        b_next <= (others=>'0');
        p_next <= (others=>'0');
        s_next <= sum;
        count_next <= STD_LOGIC_VECTOR(unsigned(count_reg) + 1);
        finished_next <= '1';    
    elsif(count_reg > STD_LOGIC_VECTOR(to_unsigned((ninputs + 3), count_reg'length))) then  -- the procedure has finished, but the final value of the MAC operation remains at the output
        started_next <= '0';
        a_next <= (others=>'0');
        b_next <= (others=>'0');
        p_next <= (others=>'0');
        s_next <= sum;
--        s_next <= (others=>'0');
        count_next <= count_reg;
        finished_next <= '0';
    end if;
end process;

finish <= finished_reg;
s <= s_reg;

end Behavioral;