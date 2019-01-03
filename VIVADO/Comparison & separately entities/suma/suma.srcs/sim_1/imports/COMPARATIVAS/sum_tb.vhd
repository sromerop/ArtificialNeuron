----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.10.2018 09:52:12
-- Design Name: 
-- Module Name: CSA_8b_tb - Behavioral
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

entity RCA_tb is
--  Port ( );
end RCA_tb;

architecture Behavioral of RCA_tb is

-- Component Declaration for the Unit Under Test (UUT)
 
component RCA
    generic(nbits : integer := 8);
    Port ( a : in STD_LOGIC_VECTOR ((nbits - 1) downto 0);
           b : in STD_LOGIC_VECTOR ((nbits - 1) downto 0);
           cin : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR ((nbits - 1) downto 0);
           cout : out STD_LOGIC);
end component;

constant nbits : integer := 8;

--Inputs
signal X : std_logic_vector((nbits - 1) downto 0) := (others => '0');
signal Y : std_logic_vector((nbits - 1) downto 0) := (others => '0');
signal CARRY_IN : std_logic := '0';
 
--Outputs
signal SUM : std_logic_vector((nbits - 1) downto 0);
signal CARRY_OUT : std_logic;

begin

-- Instantiate the Unit Under Test (UUT)
uut: RCA port map (X, Y, CARRY_IN, SUM, CARRY_OUT);

-- Stimulus process
    stim_proc: process
    begin
-- hold reset state for 100 ns.
        wait for 100 ns;
        X <= "10110000";
        Y <= "11110000";
 
        wait for 100 ns;
        X <= "00010000";
        Y <= "10100000";
 
        wait for 100 ns;
        X <= "01110000";
        Y <= "11110000";
        wait;
    end process;

end Behavioral;