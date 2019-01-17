library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BRAM_tb is
--  Port ( );
end BRAM_tb;

architecture Behavioral of BRAM_tb is

--component BRAM_weights is
--  Port ( clka : in STD_LOGIC;
--         rsta : in STD_LOGIC;
--         wea : in STD_LOGIC_VECTOR(0 downto 0);
--         addra : in STD_LOGIC_VECTOR(7 downto 0);
--         dina : in STD_LOGIC_VECTOR(7 downto 0);
--         douta : out STD_LOGIC_VECTOR(7 downto 0));
--end component;

component ROM_weights is
  Port ( clka : in STD_LOGIC;
         rsta : in STD_LOGIC;
         addra : in STD_LOGIC_VECTOR(3 downto 0);
         douta : out STD_LOGIC_VECTOR(7 downto 0));
end component;

--Inputs
signal CLKA, RSTA : std_logic := '0';
--signal WEA : STD_LOGIC_VECTOR (0 downto 0) := "0";
--signal ADDRA, DINA : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal ADDRA : STD_LOGIC_VECTOR (3 downto 0) := "0000";
 
--Outputs
signal DOUTA : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

constant CLK_PERIOD : time := 15.60 ns;

begin

-- Instantiate the Unit Under Test (UUT)
--uut: BRAM_weights 
--    port map (clka => CLKA, 
--              rsta => RSTA,
--              wea => WEA,
--              addra => ADDRA,
--              dina => DINA,
--              douta => DOUTA);

uut: ROM_weights 
    port map (clka => CLKA,
              rsta => RSTA,
              addra => ADDRA,
              douta => DOUTA);

-- Clock process
   clk_proc: process
   begin
        CLKA <= '0';
        wait for CLK_PERIOD/2;
        CLKA <= '1';
        wait for CLK_PERIOD/2;
   end process;


-- Stimulus process
    stim_proc: process
    begin
--        RSTA <= '1';
--        wait for CLK_PERIOD;
--        RSTA <= '0';
--        wait for CLK_PERIOD;
        
--        ADDRA <= "00000000";
        ADDRA <= "0000";
        wait for CLK_PERIOD;
                
--        ADDRA <= "00000001";
        ADDRA <= "0001";
        wait for CLK_PERIOD;        
        
--        ADDRA <= "00000010";
        ADDRA <= "0010";
        RSTA <= '1'; 
        wait for CLK_PERIOD;        
        
--        ADDRA <= "00000011";
        ADDRA <= "0011";
        RSTA <= '0';     
        wait for CLK_PERIOD;
        
--        ADDRA <= "00000100";
        ADDRA <= "0100";    
        wait for CLK_PERIOD;                
        --
--        ADDRA <= "00010000";
        ADDRA <= "1000";     
        wait for CLK_PERIOD;        
                
        wait;        
    end process;

end Behavioral;