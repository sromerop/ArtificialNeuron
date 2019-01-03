library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LUT_tb is
--  Port ( );
end LUT_tb;

architecture Behavioral of LUT_tb is

-- Component Declaration for the Unit Under Test (UUT)
component LUT
  Port ( address : in STD_LOGIC_VECTOR (7 downto 0);
--         clk : in STD_LOGIC;
         value : out STD_LOGIC_VECTOR (7 downto 0));
end component;

--Inputs
signal ADDRESS : std_logic_vector(7 downto 0) := (others => '0');
 
--Outputs
signal VALUE : std_logic_vector(7 downto 0) := (others => '0');

begin

-- Instantiate the Unit Under Test (UUT)
uut: LUT 
    port map (address => ADDRESS,
              value => VALUE);

-- Stimulus process
    stim_proc: process
    begin  
        ADDRESS <= "00000000";  -- VALUE = 00100000      
        wait for 6.625 ns;
        wait for 6.625 ns;
        
        ADDRESS <= "10010000";  -- VALUE = XXXXXXXX        
        wait for 6.625 ns;
        wait for 6.625 ns;
              
        ADDRESS <= "11111111";  -- VALUE = 00100000       
        wait for 6.625 ns;
        wait for 6.625 ns;
        
        ADDRESS <= "01110000";  -- VALUE = XXXXXXXX       
        wait for 6.625 ns;
--        wait for 6.625 ns;
                                       
        wait;        
    end process;

end Behavioral;