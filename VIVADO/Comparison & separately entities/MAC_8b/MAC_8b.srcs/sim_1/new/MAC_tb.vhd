library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.mac_utils.all;

entity MAC_tb is
    generic( ninputs : integer := 3);
--  Port ( );
end MAC_tb;

architecture Behavioral of MAC_tb is

-- Component Declaration for the Unit Under Test (UUT)
component MAC
    generic( ninputs : integer := 3);
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           clk : in STD_LOGIC;
           reset, start : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR ((16 + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0));
end component;

--Inputs
signal X : std_logic_vector(7 downto 0) := (others => '0');
signal Y : std_logic_vector(7 downto 0) := (others => '0');
signal CLK, RESET, START : std_logic := '0';
 
--Outputs
signal SUM : std_logic_vector((16 + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0) := (others => '0');

--constant CLK_PERIOD : time := 10 ns;
--constant CLK_PERIOD : time := 100 ns;
--constant CLK_PERIOD : time := 13.25 ns;
constant CLK_PERIOD : time := 11.55 ns;

begin

-- Instantiate the Unit Under Test (UUT)
uut: MAC 
    generic map(ninputs)
    port map (a => X, 
              b => Y, 
              clk => CLK,
              reset => RESET,
              start => START,
              s => SUM);

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
--        X <= "00001010";
--        Y <= "00001111";        
--        RESET <= '1';
--        wait for 50 ns;
--        START <= '1';
--        wait for 150 ns;        
--        RESET <= '0';
--        wait for 50 ns;

--        wait for 50 ns;
--        X <= "10110000";
--        Y <= "11110000";        
--        START <= '0';
 
--        wait for 100 ns;
--        X <= "00010000";
--        Y <= "10100000";
 
--        wait for 100 ns;
--        X <= "01010000";
--        Y <= "10010000";
        
--        wait for 100 ns;
--        X <= "11110000";
--        Y <= "11110000";
        
--        wait for 100 ns;
--        X <= "11000000";
--        Y <= "11110000";
        
--        wait for 100 ns;
--        X <= "11010000";
--        Y <= "00110000";
        
--        RESET <= '1';
--        wait for 40 ns;
--        RESET <= '0';
--        START <= '1';
--        wait for 100 ns;
--        START <= '0';
        
--        wait for 510 ns;
--        START <= '1';
--        wait for 100 ns;
--        START <= '0';                               
--        wait;
        
        
--        X <= "00001010";
--        Y <= "00001111";        
        RESET <= '1';
        wait for CLK_PERIOD/2;
        START <= '1';
        wait for CLK_PERIOD/2;
        RESET <= '0';
        wait for CLK_PERIOD/2;
        X <= "00001010";
        Y <= "00001111";        
        wait for CLK_PERIOD/2;
        wait for CLK_PERIOD/2;
        wait for CLK_PERIOD/2;
        X <= "10110000";
        Y <= "11110000";        
        START <= '0';
         
        wait for CLK_PERIOD;
        X <= "00010000";
        Y <= "10100000";
         
        wait for CLK_PERIOD;
        X <= "01010000";
        Y <= "10010000";
                
        wait for CLK_PERIOD;
        X <= "11110000";
        Y <= "11110000";
                
        wait for CLK_PERIOD;
        X <= "11000000";
        Y <= "11110000";
                
        wait for CLK_PERIOD;
        X <= "11010000";
        Y <= "00110000";
                
        RESET <= '1';
        wait for 5.3 ns;
        RESET <= '0';
        START <= '1';
        wait for CLK_PERIOD/2;
        START <= '0';
--        wait for 5.575 ns;
        wait for 67.575 ns;
        START <= '1';
--        wait for 15.00 ns;
        wait for 9.00 ns;
        START <= '0';                               
        wait;        
    end process;

end Behavioral;