library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.artificial_neuron_utils.all;

entity Artificial_Neuron_tb is
    generic( ninputs : integer := 3);
--  Port ( );
end Artificial_Neuron_tb;

architecture Behavioral of Artificial_Neuron_tb is

component Artificial_Neuron is
--component Artificial_Neuron_faster is
--    generic( ninputs : integer := 3);
    generic( ninputs : integer);
--    Port ( data_in : in STD_LOGIC_VECTOR (7 downto 0);
    Port ( data_in : in WORD_ARRAY_type ((ninputs - 1) downto 0);
           clk : in STD_LOGIC;
           reset, start : in STD_LOGIC;
           finish : out STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (7 downto 0));           
end component;

--Inputs
signal DATA_IN : WORD_ARRAY_type ((ninputs - 1) downto 0) := ("00000000", "00000000", "00000000");
--signal DATA_IN : WORD_ARRAY_type ((ninputs - 1) downto 0) := ("00000000", "00000000", "00000000", "00000000");
signal CLK, RESET, START : std_logic := '0';
 
--Outputs
signal FINISH : std_logic := '0';
signal DATA_OUT : std_logic_vector(7 downto 0) := (others => '0');

--constant CLK_PERIOD : time := 10 ns;
--constant CLK_PERIOD : time := 100 ns;
--constant CLK_PERIOD : time := 13.25 ns;
--constant CLK_PERIOD : time := 15.25 ns;
--constant CLK_PERIOD : time := 15.60 ns;
--constant CLK_PERIOD : time := 15.4 ns;
constant CLK_PERIOD : time := 14.05 ns;

begin

-- Instantiate the Unit Under Test (UUT)
uut: Artificial_Neuron
--uut: Artificial_Neuron_faster
    generic map(ninputs)
    port map (data_in => DATA_IN, 
              clk => CLK,
              reset => RESET,
              start => START,
              finish => FINISH,
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
        
        DATA_IN <= ("01111111", "10000001", "00010000");
--        DATA_IN <= ("00010000", "01111111", "10000001", "00010000");
        RESET <= '1';
--        wait for 7.625 ns;
        wait for 5 ns;
        RESET <= '0';
        wait for CLK_PERIOD;
        wait for 1 ns;
        START <= '1';
        wait for 9 ns;
--        wait for 10 ns;
        START <= '0';
--        wait for 120 ns;
        wait for 90 ns;
        
        DATA_IN <= ("01111111", "10000001", "00010000");
--        DATA_IN <= ("00010000", "01111111", "10000001", "00010000");
        wait for 6 ns;
        START <= '1';
        wait for 9 ns;
        START <= '0';  
        
        wait for 278 ns;
        RESET <= '1';
        wait for 10 ns;
        RESET <= '0';

        wait for 168 ns;
        START <= '1';
        wait for 10 ns;
        START <= '0';
              
        wait;        
    end process;
    
end Behavioral;