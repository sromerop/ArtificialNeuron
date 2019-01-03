----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.10.2018 09:15:07
-- Design Name: 
-- Module Name: dadda_mult_8b_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mult_tb is
--  Port ( );
end mult_tb;

architecture Behavioral of mult_tb is

-- Component Declaration for the Unit Under Test (UUT)
 
component AM
    generic( nbits : integer := 8);    
    Port ( X: in STD_LOGIC_VECTOR((nbits - 1) downto 0);
           Y: in STD_LOGIC_VECTOR((nbits - 1) downto 0);
           P: out STD_LOGIC_VECTOR((2*nbits - 1) downto 0));
end component;

constant nbits : integer := 8;

--Inputs
signal X : std_logic_vector((nbits - 1) downto 0) := (others => '0');
signal Y : std_logic_vector((nbits - 1) downto 0) := (others => '0');
 
--Outputs
signal PROD : std_logic_vector((2*nbits - 1) downto 0);

begin

-- Instantiate the Unit Under Test (UUT)
uut: AM port map (X, Y, PROD);

-- Stimulus process
    stim_proc: process
    begin
-- hold reset state for 100 ns.
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