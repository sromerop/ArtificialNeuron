library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.artificial_neuron_utils.all;

entity function_tb is
--  Port ( );
end function_tb;

architecture Behavioral of function_tb is

--Inputs
signal DATA_IN : STD_LOGIC_VECTOR (1 downto 0) := "00";
signal CLK, RESET, START : STD_LOGIC := '0';
 
--Outputs
signal FINISH : STD_LOGIC := '0';
signal AN, MIDDLE_RESULT : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal SEG : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
signal DATA_OUT : STD_LOGIC := '0';

constant CLK_PERIOD : time := 10 ns;
constant ninputs : integer :=3;

begin

-- Instantiate the Unit Under Test (UUT)
uut: entity work.AND_function
--uut: entity work.NOR_function
--uut: entity work.OR_function
    --generic map(ninputs => ninputs)
    port map (data_in => DATA_IN, 
              clk => CLK,
              reset => RESET,
              start => START,
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