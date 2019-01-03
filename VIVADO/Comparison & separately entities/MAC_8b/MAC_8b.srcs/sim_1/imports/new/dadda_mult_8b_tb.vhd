library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dadda_mult_8b_tb is
--  Port ( );
end dadda_mult_8b_tb;

architecture Behavioral of dadda_mult_8b_tb is

-- Component Declaration for the Unit Under Test (UUT)
component dadda_multi
  port( a: in std_logic_vector(7 downto 0);
        b: in std_logic_vector(7 downto 0);
        p: out std_logic_vector(15 downto 0));
end component;

--Inputs
signal X : std_logic_vector(7 downto 0) := (others => '0');
signal Y : std_logic_vector(7 downto 0) := (others => '0');
 
--Outputs
signal PROD : std_logic_vector(15 downto 0);

begin

-- Instantiate the Unit Under Test (UUT)
uut: dadda_multi 
    port map (a => X, 
              b => Y, 
              p => PROD);

-- Stimulus process
    stim_proc: process
    begin
        wait for 100 ns;
        X <= "10110000";    -- 176
        Y <= "11110000";    -- 240
        -- P = 42240
        -- P = "1010010100000000" = 42240
        
        wait for 100 ns;
        X <= "00010000";    -- 16
        Y <= "10100000";    -- 160
        -- P = 2560
        -- P = "0000101000000000" = 2560 
        
        wait for 100 ns;
        X <= "01110000";    -- 112
        Y <= "11110000";    -- 240
        -- P = 26880
        -- P = "0110100100000000" = 26880
        
        wait for 100 ns;
        X <= "11111111";    -- 255
        Y <= "11111111";    -- 255
        -- P = 65025
        -- P = "1111111000000001" = 65025 
        wait;
    end process;

end Behavioral;