library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.csa_utils.all;

entity CSA_tb is
    generic( ninputs : integer := 3);
--  Port ( );
end CSA_tb;

architecture Behavioral of CSA_tb is

-- Component Declaration for the Unit Under Test (UUT)
component CSA
    generic( ninputs : integer);             
    Port ( a : in STD_LOGIC_VECTOR ((nbits - 1) downto 0); -- entrada que procede del multiplicador
           b : in STD_LOGIC_VECTOR ((nbits + ninputs - 1) downto 0); -- entrada procedente del acumulador
           cin : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0);
           cout : out STD_LOGIC);
end component;

--Inputs
signal X : std_logic_vector((nbits - 1) downto 0) := (others => '0');
signal Y : std_logic_vector((nbits + ninputs - 1) downto 0) := (others => '0');
signal CARRY_IN : std_logic := '0';
 
--Outputs
constant resto : integer := (nbits_RCA - (ninputs rem nbits_RCA));
signal SUM : std_logic_vector((nbits + ninputs + resto - 1) downto 0) := (others => '0');
signal CARRY_OUT : std_logic := '0';

begin

-- Instantiate the Unit Under Test (UUT)
uut: CSA 
    generic map(ninputs)
    port map (a => X, 
              b => Y, 
              cin => CARRY_IN, 
              s => SUM, 
              cout => CARRY_OUT);

-- Stimulus process
    stim_proc: process
    begin
        wait for 100 ns;
        X <= "1011000000000000";
        Y <= "1111000000000000000";
 
        wait for 100 ns;
        X <= "0001000000000000";
        Y <= "1010000000000000000";
 
        wait for 100 ns;
        X <= "0111000000000000";
        Y <= "1111000000000000000";
        
        wait for 100 ns;
        X <= "1111000000000000";
        Y <= "1111000000000000000";

        wait for 100 ns;
        X <= "1111000000000000";
        Y <= "1111000000000000000";
        CARRY_IN <= '1';         
        wait;
    end process;

end Behavioral;