library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ca2_input_tb is
--  Port ( );
end Ca2_input_tb;

architecture Behavioral of Ca2_input_tb is

component Ca2_input is
    Port ( input : in STD_LOGIC_VECTOR (7 downto 0);
           changed : out STD_LOGIC;
           output : out STD_LOGIC_VECTOR (7 downto 0));
end component;

--Inputs
signal INPUT : std_logic_vector(7 downto 0) := (others => '0');
 
--Outputs
signal CHANGED : std_logic := '0';
signal OUTPUT : std_logic_vector(7 downto 0) := (others => '0');

begin

-- Instantiate the Unit Under Test (UUT)
uut: Ca2_input 
    port map (input => INPUT, 
              changed => CHANGED, 
              output => OUTPUT);

-- Stimulus process
    stim_proc: process
    begin
        INPUT <= "00001010";
        wait for 10 ns;
        INPUT <= "10001010";
        wait for 10 ns;
        INPUT <= "10000000";    -- en teoría este valor no se puede pasar a positivo, está fuera del rango
        wait for 10 ns;        
        INPUT <= "11111111";
        wait for 10 ns;        
        INPUT <= "00000000";
        wait for 10 ns;        
        INPUT <= "10000001";
        wait for 10 ns;        
        
        wait;        
    end process;

end Behavioral;
