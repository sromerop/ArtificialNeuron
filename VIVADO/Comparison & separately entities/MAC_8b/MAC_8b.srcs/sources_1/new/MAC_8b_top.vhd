library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.mac_utils.all;

entity MAC is
    generic( ninputs : integer := 3);
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           clk : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR ((16 + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0));
end MAC;

architecture Behavioral of MAC is

component dadda_multi is
    Port( a : in STD_LOGIC_VECTOR(7 downto 0);
          b : in STD_LOGIC_VECTOR(7 downto 0);
          p : out STD_LOGIC_VECTOR(15 downto 0));
end component;

component CSA
    generic( ninputs : integer);             
    Port ( a : in STD_LOGIC_VECTOR ((nbits - 1) downto 0); -- entrada que procede del multiplicador
           b : in STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0); -- entrada procedente del acumulador
           cin : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0);
           cout : out STD_LOGIC);
end component;

signal a_reg, b_reg : STD_LOGIC_VECTOR (7 downto 0) := (others=>'0');
signal p_next, p_reg : STD_LOGIC_VECTOR (15 downto 0) := (others=>'0');
signal s_next, s_reg : STD_LOGIC_VECTOR ((nbits + ninputs + (nbits_RCA - (ninputs rem nbits_RCA)) - 1) downto 0) := (others=>'0');

begin

DADDA: dadda_multi 
    port map(a => a_reg, 
             b => b_reg, 
             p => p_next);

CSAdd: CSA 
    generic map(ninputs)
    port map(a => p_reg, 
             b => s_reg, 
             cin => '0',    -- la entrada cin a '0', no puede ser open
             s => s_next, 
             cout => open);

process(clk)
begin
    if(rising_edge(clk)) then
        a_reg <= a;
        b_reg <= b;        
        p_reg <= p_next;
        s_reg <= s_next;
     end if;
 end process;

s <= s_reg;

end Behavioral;