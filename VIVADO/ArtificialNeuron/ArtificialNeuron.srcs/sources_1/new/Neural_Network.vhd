library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.artificial_neuron_utils.all;

entity Neural_Network is
    generic( ninputs : integer := 3);    -- number of inputs of the neuron, the rest of the modules inherit it from here
    Port ( data_in : in STD_LOGIC_VECTOR (1 downto 0);   -- signals of this array are the inputs of the neural network: x1 = x(1), x2 = x(0)
           clk : in STD_LOGIC;  -- clock signal
           reset, start : in STD_LOGIC; -- reset and start signals
           control : in STD_LOGIC_VECTOR (1 downto 0);  -- signal that controls the outputs on the board
           middle_result : out STD_LOGIC_VECTOR (7 downto 0);   -- signal that represents the input signal of the LUT of the selected neuron
           finish : out STD_LOGIC; -- finish signal
           an : out STD_LOGIC_VECTOR (7 downto 0);  -- anode signals to the 7 segments display
           seg : out STD_LOGIC_VECTOR (6 downto 0);  -- signals to the 7 segments display
           data_out : out STD_LOGIC);   -- output of the neural network
end Neural_Network;

architecture Behavioral of Neural_Network is

-- clock divider: from system clock (100 MHz) to required clock (50 MHz)
component clk_50MHz
    Port ( clk_in1 : in STD_LOGIC;   -- Clock in ports
           clk_out1 : out STD_LOGIC); -- Clock out ports
end component;

-- this Neural Network is composed of three Artificial Neurons: two in the hidden layer (a21 and a22) and one in the output layer (a31)
-- each Artificial Neuron processes a binary function and the combination of all of them produces a different one
-- a21: x1 AND x2 function; a22: (NOT x1) AND (NOT x2); a23: x1 OR x2; combination: x1 XNOR x2 
component Artificial_Neuron_a21 is
    generic( ninputs : integer);
    Port ( data_in : in WORD_ARRAY_type ((ninputs - 1) downto 0);
           clk : in STD_LOGIC;
           reset, start : in STD_LOGIC;
           sum_out : out STD_LOGIC_VECTOR (7 downto 0);
           finish : out STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component Artificial_Neuron_a22 is
    generic( ninputs : integer);
    Port ( data_in : in WORD_ARRAY_type ((ninputs - 1) downto 0);
           clk : in STD_LOGIC;
           reset, start : in STD_LOGIC;
           sum_out : out STD_LOGIC_VECTOR (7 downto 0);
           finish : out STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component Artificial_Neuron_a31 is
    generic( ninputs : integer);
    Port ( data_in : in WORD_ARRAY_type ((ninputs - 1) downto 0);
           clk : in STD_LOGIC;
           reset, start : in STD_LOGIC;
           sum_out : out STD_LOGIC_VECTOR (7 downto 0);
           finish : out STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (7 downto 0));
end component;

-- constants
constant sign : integer := 1;   -- constant that represents the number of bits used for the sign
constant int : integer := 4;   -- constant that represents the number of bits used for the integer part
constant dec : integer := 3;   -- constant that represents the number of bits used for the decimal part
constant one : STD_LOGIC_VECTOR (7 downto 0) := (dec => '1', others=>'0');   -- constant signal that represents the unit with the established precision

signal clk_50M : STD_LOGIC := '0'; -- signal used for the new clock signal

signal input_1, input_2 : STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');   -- signals that transform the inputs of the Neural Network into signals that the Artificial Neurons can work with
signal data_in_array_a21, data_in_array_a22, data_in_array_a31 : WORD_ARRAY_type ((ninputs - 1) downto 0);  -- inputs of each Artificial Neuron
signal finished_a21, finished_a22, start_a31, finished_a31 : STD_LOGIC := '0';  -- signals used for showing if the Artificial Neuron has finished/has to start the procedure
signal a21_output, a22_output, a31_output : STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');   -- output of the Artificial Neurons
signal a21_sum_out, a22_sum_out, a31_sum_out : STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');  -- LUT input of the Artificial Neurons
signal middle_result_next, middle_result_reg, final_result_next, final_result_reg : STD_LOGIC_VECTOR (7 downto 0) := (others=>'0'); -- signals for registering the output and the input of the LUT of the selected neurons

signal temporal, aux0 : STD_LOGIC := '0';   -- signals used for activating (low active) the anodes
signal aux1, aux2, aux3, aux4, aux5, aux6, aux7: STD_LOGIC := '1';   -- signals used for activating (low active) the anodes
constant max : integer := 9999; -- refresh rate of about 500 Hz, 50.000.000/500 = 100000
signal counter : integer range 0 to max := 0;   -- 50.000.000/500 = 100000
signal seg_0, seg_1, seg_2, seg_3, seg_4, seg_5, seg_6, seg_7, seg_aux : STD_LOGIC_VECTOR (6 downto 0) := (others=>'0');   -- signals used for representing the value in each display
signal count_temporal : integer := 0;   -- signal that counts for the refresh of the displays

begin

clk_50: clk_50MHz
    port map (clk_in1 => clk,
              clk_out1 => clk_50M);

-- adjustment of inputs of the Neural Network
input_1 <= (dec => data_in(1), others=>'0');
input_2 <= (dec => data_in(0), others=>'0');

-- adjustment of inputs of the Artificial Neurons of the hidden layer
data_in_array_a21 <= (input_2, input_1, one);
data_in_array_a22 <= (input_2, input_1, one);

a21: Artificial_Neuron_a21
    generic map(ninputs => 3)
    port map (data_in => data_in_array_a21,
              clk => clk_50M,
              reset => reset,
              start => start,
              sum_out => a21_sum_out,
              finish => finished_a21,
              data_out => a21_output);

a22: Artificial_Neuron_a22
    generic map(ninputs => 3)
    port map (data_in => data_in_array_a22,
              clk => clk_50M,
              reset => reset,
              start => start,
              sum_out => a22_sum_out,
              finish => finished_a22,
              data_out => a22_output);

-- adjustment of inputs of the Artificial Neuron of the output layer
data_in_array_a31 <= (a22_output, a21_output, one);
start_a31 <= finished_a21 AND finished_a22; -- all the Artificial Neurons of the previous layer must have finished their procedures

a31: Artificial_Neuron_a31
    generic map(ninputs => 3)
    port map (data_in => data_in_array_a31,
              clk => clk_50M,
              reset => reset,
              start => start_a31,
              sum_out => a31_sum_out,
              finish => finished_a31,
              data_out => a31_output);

data_out <= a31_output(dec) OR a31_output(dec - 1); -- classification: if the output value is equals or larger than 0.5, it's classified to 1; else, it's classified to 0 
finish <= finished_a31; -- output of the finish signal

-- process where the output signals (output and LUT input) are registered
-- also the refresh of the displays is produced
process(clk_50M)
begin
    if rising_edge(clk_50M) then
        middle_result_reg <= middle_result_next;
        final_result_reg <= final_result_next;
        if (counter = max) then
            temporal <= NOT(temporal);
            counter <= 0;
        else
            counter <= counter + 1;
        end if;
    end if;
end process;

-- process where the selection of the neurons and their output signals take place
process(control, a21_sum_out, a21_output, a22_sum_out, a22_output, a31_sum_out, a31_output)
begin
    if control = "00" then 
        middle_result_next <= a21_sum_out;
        final_result_next <= a21_output;
    elsif control = "01" then
        middle_result_next <= a22_sum_out;
        final_result_next <= a22_output;
     else
        middle_result_next <= a31_sum_out;
        final_result_next <= a31_output;
    end if;
end process;

-- process where every 500 Hz one display is activated and the others are desactivated
process(temporal)
begin
    if rising_edge(temporal) then
        count_temporal <= count_temporal + 1;
        aux0 <= '1';
        aux1 <= '1';
        aux2 <= '1';
        aux3 <= '1';
        aux4 <= '1';
        aux5 <= '1';
        aux6 <= '1';
        aux7 <= '1';        
        if (count_temporal rem a31_output'length = 0) then
            aux0 <= '0';
        elsif (count_temporal rem a31_output'length = 1) then
            aux1 <= '0';
        elsif (count_temporal rem a31_output'length = 2) then            
            aux2 <= '0';           
        elsif (count_temporal rem a31_output'length = 3) then            
            aux3 <= '0';      
        elsif (count_temporal rem a31_output'length = 4) then            
            aux4 <= '0';        
        elsif (count_temporal rem a31_output'length = 5) then            
            aux5 <= '0';       
        elsif (count_temporal rem a31_output'length = 6) then            
            aux6 <= '0';         
        elsif (count_temporal rem a31_output'length = 7) then            
            aux7 <= '0';         
        end if;
    end if;
end process;

-- output of the signal of the anodes
an <= aux0 & aux1 & aux2 & aux3 & aux4 & aux5 & aux6 & aux7;	-- low active

-- in these selections the representations of the digits '0' and '1' are assigned to the signals (low active too) of the displays   
    seg_0 <= "1000000" when final_result_reg(0) = '0' else
              "1111001" when final_result_reg(0) = '1' else
              "0000001";                  
 
    seg_1 <= "1000000" when final_result_reg(1) = '0' else
             "1111001" when final_result_reg(1) = '1' else
             "0000001"; 

    seg_2 <= "1000000" when final_result_reg(2) = '0' else
             "1111001" when final_result_reg(2) = '1' else
             "0000001"; 
 
    seg_3 <= "1000000" when final_result_reg(3) = '0' else
             "1111001" when final_result_reg(3) = '1' else
             "0000001";              
             
    seg_4 <= "1000000" when final_result_reg(4) = '0' else
             "1111001" when final_result_reg(4) = '1' else
             "0000001"; 
 
    seg_5 <= "1000000" when final_result_reg(5) = '0' else
             "1111001" when final_result_reg(5) = '1' else
             "0000001"; 
 
    seg_6 <= "1000000" when final_result_reg(6) = '0' else
             "1111001" when final_result_reg(6) = '1' else
             "0000001"; 
 
    seg_7 <= "1000000" when final_result_reg(7) = '0' else
             "1111001" when final_result_reg(7) = '1' else
             "0000001";  

---- process that assignates to the (only) active segment the value of the correspondent digit to represent it in the correspondent display
process(aux0, aux1, aux2, aux3, aux4, aux5, aux6, aux7, seg_0, seg_1, seg_2, seg_3, seg_4, seg_5, seg_6, seg_7)
begin
    seg_aux <= seg_0;
    if (aux0 = '0') then
        seg_aux <= seg_0;
    elsif(aux1 = '0') then
        seg_aux <= seg_1;
    elsif(aux2 = '0') then
        seg_aux <= seg_2;
    elsif(aux3 = '0') then
        seg_aux <= seg_3;
    elsif(aux4 = '0') then
        seg_aux <= seg_4;
    elsif(aux5 = '0') then
        seg_aux <= seg_5;
    elsif(aux6 = '0') then
        seg_aux <= seg_6;                                                        
    elsif(aux7 = '0') then
        seg_aux <= seg_7;
    end if;
end process;

-- output of the displays and the output signal of the LUT
seg <= seg_aux;
middle_result <= middle_result_reg;

end Behavioral;