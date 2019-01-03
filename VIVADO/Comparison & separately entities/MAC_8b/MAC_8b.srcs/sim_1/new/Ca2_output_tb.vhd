library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ca2_output_tb is
--  Port ( );
end Ca2_output_tb;

architecture Behavioral of Ca2_output_tb is

component Ca2_output is
    Port ( input : in STD_LOGIC_VECTOR (15 downto 0);
           changed : in STD_LOGIC;
           output : out STD_LOGIC_VECTOR (15 downto 0));
end component;

--Inputs
signal INPUT : std_logic_vector(15 downto 0) := (others => '0');
signal CHANGED : std_logic := '0';
 
--Outputs
signal OUTPUT : std_logic_vector(15 downto 0) := (others => '0');

begin

-- Instantiate the Unit Under Test (UUT)
uut: Ca2_output 
    port map (input => INPUT, 
              changed => CHANGED, 
              output => OUTPUT);

-- Stimulus process
    stim_proc: process
    begin
        INPUT <= "0000101000001010";
        CHANGED <= '0';
        wait for 10 ns;
        CHANGED <= '1';
        wait for 10 ns;
        
        INPUT <= "0111111111111111";
        CHANGED <= '0';
        wait for 10 ns;
        CHANGED <= '1';        
        wait for 10 ns;
        
        INPUT <= "0000000010000000";    -- en teoría este valor no se puede pasar a positivo, está fuera del rango
        CHANGED <= '0';
        wait for 10 ns;
        CHANGED <= '1';        
        wait for 10 ns;
                
        INPUT <= "0000000011111111";
        CHANGED <= '0';
        wait for 10 ns;
        CHANGED <= '1';        
        wait for 10 ns;
                
        INPUT <= "0000000000000000";
        CHANGED <= '0';
        wait for 10 ns;
        CHANGED <= '1';        
        wait for 10 ns;
                
        INPUT <= "0111111010000001";
        CHANGED <= '0';
        wait for 10 ns;
        CHANGED <= '1';        
        wait for 10 ns;        
        
        wait;        
    end process;

end Behavioral;
