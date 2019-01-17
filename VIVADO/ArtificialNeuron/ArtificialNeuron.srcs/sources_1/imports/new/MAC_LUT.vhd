library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.mac_lut_utils.all;

entity MAC_LUT is
    generic( ninputs : integer := 3);
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           clk : in STD_LOGIC;
           reset, start : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (7 downto 0));

attribute use_dsp48 : string;
attribute use_dsp48 of MAC_LUT : entity is "yes";

end MAC_LUT;

architecture Behavioral of MAC_LUT is

component MAC is
    generic( ninputs : integer);
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           clk : in STD_LOGIC;
           reset, start : in STD_LOGIC;
           enable_LUT : out STD_LOGIC;
           s : out STD_LOGIC_VECTOR ((16 + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0));
end component;

component LUT is
    Port ( address : in STD_LOGIC_VECTOR (7 downto 0);
           enable : in STD_LOGIC;
           value : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal enable : STD_LOGIC := '0';
signal salida_MAC : STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0) := (others=>'0');
signal entrada_LUT : STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');
constant sign : integer := 1;
constant int : integer := 1;
constant dec : integer := 6;
constant noMSB : integer := (int + 2 * dec);    -- 13
constant MSB : integer := (nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA))) - noMSB;
--constant LSB : integer := dec;
signal MAX : STD_LOGIC_VECTOR (7 downto 0) := (7 => '0', others => '1');
signal MIN : STD_LOGIC_VECTOR (7 downto 0) := (7 => '1', others => '0');

begin

MAC_8b: MAC 
    generic map(ninputs)
    port map(a => a, 
             b => b, 
             clk => clk,
             reset => reset,
             start => start,
             enable_LUT => enable,
             s => salida_MAC);

process (salida_MAC)      
    variable temp_pos, temp_neg : STD_LOGIC_VECTOR ((MSB - sign - 1) downto 0) := (others=>'0');
    variable MSB_pos, MSB_neg : STD_LOGIC := '0';
--    variable LSB_pos, LSB_neg : STD_LOGIC := '0';
    begin
    
        temp_pos(0) := salida_MAC(noMSB);
        temp_neg(0) := salida_MAC(noMSB);        
        for I in 1 to (MSB - sign - 1) loop
            temp_pos(I) := temp_pos(I - 1) OR salida_MAC(I + noMSB);
            temp_neg(I) := temp_neg(I - 1) AND salida_MAC(I + noMSB);
        end loop;

        MSB_pos := temp_pos(MSB - sign - 1);
        MSB_neg := temp_neg(MSB - sign - 1);       

        if ((salida_MAC(nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) = '0') AND (MSB_pos = '0')) then         
            entrada_LUT <= ('0' & salida_MAC(12 downto 6));
        elsif ((salida_MAC(nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) = '0') AND (MSB_pos = '1')) then
            entrada_LUT <= MAX;
        elsif (salida_MAC(nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) = '1' AND (MSB_neg = '0')) then
            entrada_LUT <= MIN;
        elsif ((salida_MAC(nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) = '1') AND (MSB_neg = '1')) then
            entrada_LUT <= ('1' & salida_MAC(12 downto 6));
        else
            entrada_LUT <= "XXXXXXXX";            
        end if;                   
 end process; 
    
LUT_8b: LUT 
    port map(address => entrada_LUT, 
             enable => enable, 
             value => s);

end Behavioral;