library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.artificial_neuron_utils.all;

-- Artificial Neuron of 8-bit words with configurable number of inputs (maximum 16)
entity Artificial_Neuron is
    generic( ninputs : integer := 3);    -- number of inputs of the neuron, the rest of the modules inherit it from here
    Port ( data_in : in WORD_ARRAY_type ((ninputs - 1) downto 0);   -- signals of this array are the inputs of the neuron
           clk : in STD_LOGIC;  -- clock signal
           reset, start : in STD_LOGIC; -- reset and start signals
           finish : out STD_LOGIC; -- finish signal
           data_out : out STD_LOGIC_VECTOR (7 downto 0));   -- output of the neuron
           
attribute use_dsp48 : string;   -- use DSP Slices when synthesizing
attribute use_dsp48 of Artificial_Neuron : entity is "yes";
           
end Artificial_Neuron;

architecture Behavioral of Artificial_Neuron is

-- this Artificial Neuron is composed of a ROM, where the value of the weights are stored; a MAC unit, where all the arithmetic operations take place; and a LUT that contains the values of the sigmoid function
component ROM_weights is
  Port ( clka : in STD_LOGIC;
         rsta : in STD_LOGIC;
         addra : in STD_LOGIC_VECTOR(3 downto 0);
         douta : out STD_LOGIC_VECTOR(7 downto 0));
end component;

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

component LUT is
    Port ( address : in STD_LOGIC_VECTOR (7 downto 0);
           value : out STD_LOGIC_VECTOR (7 downto 0));
end component;

-- input/MAC transition signals
signal started_reg, started_next : STD_LOGIC := '0';  -- signals used for registering if the procedure has started
signal input_reg, input_next, input_next_next, input_next_next_next, weight_reg, weight_next : STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');  -- signals used for registering the inputs and the weights
signal weight_BRAM : STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');   -- output of the ROM
signal count_reg, count_next, address_reg, address_next : STD_LOGIC_VECTOR (3 downto 0) := (others=>'0');   -- signals used for registering the count of the number of operations, equal to the number of inputs of the neuron; and the address of the value of the memory that contains the corresponding weight

-- signals used for MAC
constant number_registers : integer := 3;   -- constant that represents the number of registers that each operation has to go through (input, product, sum)
signal p_next, p_reg : STD_LOGIC_VECTOR (15 downto 0) := (others=>'0'); -- result of the multiplication
signal product : STD_LOGIC_VECTOR (15 downto 0) := (others=>'0');   -- output of the multiplier
signal s_next, s_reg : STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0) := (others=>'0');  -- result of the sum
signal sum : STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0) := (others=>'0');   -- output of the adder/accumulator
signal finished_reg, finished_next : STD_LOGIC := '0';  -- signals used for registering if the procedure has finished

-- MAC/LUT transition signals and constants
signal finished_output : STD_LOGIC := '0';  -- signal used for showing if the procedure has finished
signal MAC_output : STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0) := (others=>'0');   -- output of the MAC
signal LUT_input : STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');   -- input of the LUT
constant sign : integer := 1;   -- constant that represents the number of bits used for the sign
constant int : integer := 4;   -- constant that represents the number of bits used for the integer part
constant dec : integer := 3;   -- constant that represents the number of bits used for the decimal part
constant noMSB : integer := (int + 2 * dec);   -- constant that represents the index of the vector that is just above the MSB (except the sign) that the LUT can read
constant MAX : STD_LOGIC_VECTOR (7 downto 0) := (7 => '0', others => '1');   -- constant that represents the maximum number that can be represented with an 8-bit word
constant MIN : STD_LOGIC_VECTOR (7 downto 0) := (7 => '1', others => '0');   -- constant that represents the minimum number that can be represented with an 8-bit word
signal MSB_pos, MSB_neg : STD_LOGIC := '0'; -- signal that is used to show if the output of the MAC is greater/lesser/greater in absolute value than what can be represented with an 8-bit word

begin

-- input/MAC transition and MAC
-- process where the signals are registered, depending on the rising edge of the clock signal
-- there is also a reset signal that makes every signal to be 0
process(clk, reset)
begin
    if reset = '1' then
        started_reg <= '0';
        input_reg <= (others=>'0');
        input_next <= (others=>'0');
        input_next_next <= (others=>'0');
        weight_reg <= (others=>'0');
        p_reg <= (others=>'0');
        s_reg <= (others=>'0');
        count_reg <= (others=>'0');
        address_reg <= (others=>'0');
        finished_reg <= '0';
    elsif(rising_edge(clk)) then
        started_reg <= started_next;
        input_reg <= input_next;
        input_next <= input_next_next;
        input_next_next <= input_next_next_next;
        weight_reg <= weight_next;
        p_reg <= p_next;
        s_reg <= s_next;
        count_reg <= count_next;
        address_reg <= address_next;
        finished_reg <= finished_next;
    end if;
 end process;

-- process where the signals get their corresponding value
-- it depends on the start signal, the signal that shows if the procedure has started, the inputs of the neuron, the counter, the address of the value of the memory that contains the corresponding weight, the output of the ROM and the values of the intermediate operations of the MAC
process(start, data_in, count_reg, weight_BRAM, address_reg, started_reg, product, sum)
begin 
    -- default values of the signals
    started_next <= started_reg;
    input_next_next_next <= (others=>'0');
    weight_next <= weight_BRAM;
    p_next <= product;
    s_next <= sum;        
    count_next <= count_reg;
    address_next <= address_reg;
    finished_next <= '0';
    
    if(start = '1') then    -- when start signal is 1, the procedure starts from the beginning
        started_next <= '1';
        input_next_next_next <= data_in(0); -- because of some delay (two clock cycles) at obtaining the second term of the multiplication (weight) from a ROM memory, that delay has to be propagated to the start of the procedure through two extra registers
        weight_next <= weight_BRAM;
        p_next <= (others=>'0');
        s_next <= (others=>'0');
        count_next <= STD_LOGIC_VECTOR(to_unsigned(1, count_reg'length));
        address_next <= STD_LOGIC_VECTOR(to_unsigned(0, address_reg'length));
        finished_next <= '0';
    elsif(started_reg = '1' and count_reg >= STD_LOGIC_VECTOR(to_unsigned(0, count_reg'length)) and count_reg < STD_LOGIC_VECTOR(to_unsigned(ninputs, count_reg'length))) then  -- registering the inputs and the weights associed to them
        started_next <= '1';
        input_next_next_next <= data_in(to_integer(unsigned(count_reg)));
        weight_next <= weight_BRAM;
        p_next <= product;
        s_next <= sum;
        count_next <= STD_LOGIC_VECTOR(unsigned(count_reg) + 1);
        address_next <= STD_LOGIC_VECTOR(unsigned(address_reg) + 1);
        finished_next <= '0';    
    elsif(started_reg = '1' and count_reg >= STD_LOGIC_VECTOR(to_unsigned(ninputs, count_reg'length)) and count_reg < STD_LOGIC_VECTOR(to_unsigned((ninputs + number_registers), count_reg'length))) then  -- registering inputs, weights, products and sums
        started_next <= '1';
        input_next_next_next <= (others=>'0');
        weight_next <= weight_BRAM;
        p_next <= product;
        s_next <= sum;
        count_next <= STD_LOGIC_VECTOR(unsigned(count_reg) + 1);
        address_next <= address_reg;
        finished_next <= '0';
    elsif(started_reg = '1' and count_reg = STD_LOGIC_VECTOR(to_unsigned((ninputs + number_registers), count_reg'length))) then  -- registering the last product
        started_next <= '0';
        input_next_next_next <= (others=>'0');
        weight_next <= (others=>'0');
        p_next <= (others=>'0');
        s_next <= sum;
        count_next <= STD_LOGIC_VECTOR(unsigned(count_reg) + 1);
        address_next <= address_reg;
        finished_next <= '1'; 
    elsif(count_reg > STD_LOGIC_VECTOR(to_unsigned((ninputs + number_registers), count_reg'length))) then  -- registering the last sum, the procedure has finished, but the final value of the MAC operation remains at the output
        started_next <= '0';
        input_next_next_next <= (others=>'0');
        weight_next <= (others=>'0');
        p_next <= (others=>'0');
        s_next <= sum;
        count_next <= count_reg;
        address_next <= address_reg;
        finished_next <= '0';
    end if;
end process;

finish <= finished_reg;
MAC_output <= s_reg;

ROM: ROM_weights
    port map (clka => clk,
              rsta => reset,
              addra => address_reg,
              douta => weight_BRAM);            

DADDA: dadda_multi
    port map(a => input_reg,
             b => weight_reg,
             p => product);

CSAdd: CSA
    generic map(ninputs)
    port map(a => p_reg,
             b => s_reg,
             cin => '0',    -- 0 because there's no carry-in port and cannot be open
             s => sum,
             cout => open); -- open because there's no carry-out port

-- MAC/LUT transition
MSB_pos <= '0' when (MAC_output((MAC_output'LEFT - sign) downto noMSB) = (MAC_output((MAC_output'LEFT - sign) downto noMSB)'range => '0')) else -- 1 if the positive output of the MAC is greater than what can be represented with an 8-bit word
           '1';
MSB_neg <= '1' when (MAC_output((MAC_output'LEFT - sign) downto noMSB) = (MAC_output((MAC_output'LEFT - sign) downto noMSB)'range => '1')) else -- 0 if the negative output of the MAC is greater in absolute value than what can be represented with an 8-bit word
           '0';

-- process where the output signal of the MAC is adjusted so that the LUT can use it
process (MAC_output, MSB_pos, MSB_neg)
begin
    -- default value of the signal
    LUT_input <= (others=>'0');
    
    if ((MAC_output(MAC_output'LEFT) = '0') AND (MSB_pos = '1')) then   -- if the value is greater than what can be represented, it saturates to the maximum representable value
        LUT_input <= MAX;
    elsif ((MAC_output(MAC_output'LEFT) = '0') AND (MSB_pos = '0') AND (MAC_output(dec) = '0') AND (MAC_output(dec - 1) = '1')) then    -- if the value is positive, doesn't saturate, the LSB is 0 and the next bit is 1 the value is rounded
        LUT_input <= ('0' & MAC_output((noMSB - 1) downto (dec + 1)) & '1');
    elsif ((MAC_output(MAC_output'LEFT) = '0') AND (MSB_pos = '0')) then    -- if the value is positive, doesn't saturate and the LSB isn't 0 or the next bit is 1 the value is truncated
        LUT_input <= ('0' & MAC_output((noMSB - 1) downto dec));   
    elsif ((MAC_output(MAC_output'LEFT) = '1') AND (MSB_neg = '0')) then    -- if the value is lesser than what can be represented, it saturates to the minimum representable value
        LUT_input <= MIN;
    elsif ((MAC_output(MAC_output'LEFT) = '1') AND (MSB_neg = '1') AND (MAC_output(dec) = '0') AND (MAC_output(dec - 1) = '1')) then    -- if the value is negative, doesn't saturate, the LSB is 0 and the next bit is 1 the value is rounded
        LUT_input <= ('1' & MAC_output((noMSB - 1) downto (dec + 1)) & '1');
    elsif ((MAC_output(MAC_output'LEFT) = '1') AND (MSB_neg = '1')) then    -- if the value is positive, doesn't saturate and the LSB isn't 0 or the next bit is 1 the value is truncated
        LUT_input <= ('1' & MAC_output((noMSB - 1) downto dec));
    end if;                   
 end process; 
    
LUT_8b: LUT 
    port map(address => LUT_input,
             value => data_out);

end Behavioral;