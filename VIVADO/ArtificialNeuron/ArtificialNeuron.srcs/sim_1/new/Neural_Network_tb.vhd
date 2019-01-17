library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.artificial_neuron_utils.all;

entity Neural_Network_tb is
--    generic( ninputs : integer := 3);
--  Port ( );
end Neural_Network_tb;

architecture Behavioral of Neural_Network_tb is

--component Neural_Network is
--    generic( ninputs : integer);
--    Port ( data_in : in STD_LOGIC_VECTOR (1 downto 0);
--           clk : in STD_LOGIC;
--           reset, start : in STD_LOGIC;
--           finish : out STD_LOGIC;
--           an : out STD_LOGIC_VECTOR (7 downto 0);
--           seg : out STD_LOGIC_VECTOR (6 downto 0);
--           data_out : out STD_LOGIC);        
--end component;

--component Neural_Network is
--   -- generic( ninputs : integer := 3);    -- number of inputs of the neuron, the rest of the modules inherit it from here
--    Port ( data_in : in STD_LOGIC_VECTOR (1 downto 0);   -- signals of this array are the inputs of the neural network: x1 = x(1), x2 = x(0)
--           clk : in STD_LOGIC;  -- clock signal
--           reset, start : in STD_LOGIC; -- reset and start signals
--           finish : out STD_LOGIC; -- finish signal
--           an : out STD_LOGIC_VECTOR (7 downto 0);  -- anode signals to the 7 segments display
--           seg : out STD_LOGIC_VECTOR (6 downto 0);  -- signals to the 7 segments display
--           data_out : out STD_LOGIC);   -- output of the neural network
--end component;

--Inputs
signal DATA_IN, CONTROL : STD_LOGIC_VECTOR (1 downto 0) := "00";
signal CLK, RESET, START : STD_LOGIC := '0';
 
--Outputs
signal FINISH : STD_LOGIC := '0';
signal AN, MIDDLE_RESULT : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal SEG : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
signal DATA_OUT : STD_LOGIC := '0';

constant CLK_PERIOD : time := 10 ns;
--constant CLK_PERIOD : time := 100 ns;
--constant CLK_PERIOD : time := 13.25 ns;
--constant CLK_PERIOD : time := 15.25 ns;
--constant CLK_PERIOD : time := 15.60 ns;
--constant CLK_PERIOD : time := 15.4 ns;
--constant CLK_PERIOD : time := 14.05 ns;
--constant CLK_PERIOD : time := 15.750 ns;
constant ninputs : integer :=3;

begin

-- Instantiate the Unit Under Test (UUT)
uut: entity work.Neural_Network
    --generic map(ninputs => ninputs)
    port map (data_in => DATA_IN, 
              clk => CLK,
              reset => RESET,
              start => START,
              control => CONTROL,
              middle_result => MIDDLE_RESULT,
              finish => FINISH,
              an => AN,
              seg => SEG,              
              data_out => DATA_OUT);

-- Clock process
   clk_proc: process
   begin
        clk <= '0';
        wait for CLK_PERIOD/2;
        clk <= '1';
        wait for CLK_PERIOD/2;
   end process;

-- Stimulus process
    stim_proc: process
    begin
        wait for 6001 ns;
        DATA_IN <= "00";
        RESET <= '1';
        wait for 5 ns;
        RESET <= '0';
        wait for CLK_PERIOD;
        wait for 1 ns;
        START <= '1';
        wait for 9 ns;
        START <= '0';
        wait for 354.80 ns;
        
        DATA_IN <= "01";
        START <= '1';
        wait for 9 ns;
        START <= '0';
        wait for 354.80 ns;
        
        DATA_IN <= "10";
        START <= '1';
        wait for 9 ns;
        START <= '0';
        wait for 350.80 ns;
        
        DATA_IN <= "11";
        START <= '1';
        wait for 9 ns;
        START <= '0';                
        
        wait;        
    end process;
    
end Behavioral;