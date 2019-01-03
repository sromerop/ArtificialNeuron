-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Dec 17 16:34:12 2018
-- Host        : ASUSANTI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/srome/Desktop/ETSIT/TFG/Pablo Ituero/FPGA y
--               Vivado/COMPARATIVAS/DADDAMultiplier/DADDAMultiplier.sim/sim_1/impl/func/xsim/TOP_func_impl.vhd}
-- Design      : TOP
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dadda_multi is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    a24_out : out STD_LOGIC;
    c28_out : out STD_LOGIC;
    b51_out : out STD_LOGIC;
    c20_out : out STD_LOGIC;
    b47_out : out STD_LOGIC;
    b43_out : out STD_LOGIC;
    b39_out : out STD_LOGIC;
    a8_out : out STD_LOGIC;
    b38_out : out STD_LOGIC;
    a63_out : out STD_LOGIC;
    c63_out : out STD_LOGIC;
    c4_out : out STD_LOGIC;
    a4_out : out STD_LOGIC;
    b243_in : out STD_LOGIC;
    a0_out : out STD_LOGIC;
    a16_out : out STD_LOGIC;
    c16_out : out STD_LOGIC;
    a12_out : out STD_LOGIC;
    c12_out : out STD_LOGIC;
    \b_reg_reg[4]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \a_reg_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \b_reg_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \a_reg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end dadda_multi;

architecture STRUCTURE of dadda_multi is
  signal \^a0_out\ : STD_LOGIC;
  signal a100_out : STD_LOGIC;
  signal a104_out : STD_LOGIC;
  signal a107_out : STD_LOGIC;
  signal \^a12_out\ : STD_LOGIC;
  signal \^a16_out\ : STD_LOGIC;
  signal a20_out : STD_LOGIC;
  signal \^a24_out\ : STD_LOGIC;
  signal a27_out : STD_LOGIC;
  signal a31_out : STD_LOGIC;
  signal a34_out : STD_LOGIC;
  signal \^a4_out\ : STD_LOGIC;
  signal a59_out : STD_LOGIC;
  signal \^a63_out\ : STD_LOGIC;
  signal a67_out : STD_LOGIC;
  signal a71_out : STD_LOGIC;
  signal a75_out : STD_LOGIC;
  signal a79_out : STD_LOGIC;
  signal a83_out : STD_LOGIC;
  signal a86_out : STD_LOGIC;
  signal \^a8_out\ : STD_LOGIC;
  signal a96_out : STD_LOGIC;
  signal \^b243_in\ : STD_LOGIC;
  signal \^b38_out\ : STD_LOGIC;
  signal \^b39_out\ : STD_LOGIC;
  signal \^b43_out\ : STD_LOGIC;
  signal \^b47_out\ : STD_LOGIC;
  signal b49_out : STD_LOGIC;
  signal \^b51_out\ : STD_LOGIC;
  signal b52_out : STD_LOGIC;
  signal b55_out : STD_LOGIC;
  signal b55_out227_in : STD_LOGIC;
  signal b87_out : STD_LOGIC;
  signal b89_out : STD_LOGIC;
  signal b91_out : STD_LOGIC;
  signal b92_out : STD_LOGIC;
  signal \^c12_out\ : STD_LOGIC;
  signal c168_in : STD_LOGIC;
  signal \^c16_out\ : STD_LOGIC;
  signal c187_out : STD_LOGIC;
  signal c190_out : STD_LOGIC;
  signal c193_out : STD_LOGIC;
  signal \^c20_out\ : STD_LOGIC;
  signal c24_out : STD_LOGIC;
  signal \^c28_out\ : STD_LOGIC;
  signal c32_out : STD_LOGIC;
  signal \^c4_out\ : STD_LOGIC;
  signal c59_out : STD_LOGIC;
  signal \^c63_out\ : STD_LOGIC;
  signal c67_out : STD_LOGIC;
  signal c71_out : STD_LOGIC;
  signal c75_out : STD_LOGIC;
  signal c79_out : STD_LOGIC;
  signal c83_out : STD_LOGIC;
  signal p_214_in : STD_LOGIC;
  signal p_220_in : STD_LOGIC;
  signal p_225_in : STD_LOGIC;
  signal \p_reg[11]_i_6_n_0\ : STD_LOGIC;
  signal \p_reg[11]_i_7_n_0\ : STD_LOGIC;
  signal \p_reg[11]_i_8_n_0\ : STD_LOGIC;
  signal \p_reg[11]_i_9_n_0\ : STD_LOGIC;
  signal \p_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \p_reg[15]_i_6_n_0\ : STD_LOGIC;
  signal \p_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \p_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \p_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \p_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \p_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \p_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \p_reg[7]_i_9_n_0\ : STD_LOGIC;
  signal \p_reg_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \p_reg_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \p_reg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal s4_1 : STD_LOGIC_VECTOR ( 13 downto 3 );
  signal \NLW_p_reg_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_p_reg_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_p_reg_reg[15]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_p_reg_reg[3]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_p_reg_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  a0_out <= \^a0_out\;
  a12_out <= \^a12_out\;
  a16_out <= \^a16_out\;
  a24_out <= \^a24_out\;
  a4_out <= \^a4_out\;
  a63_out <= \^a63_out\;
  a8_out <= \^a8_out\;
  b243_in <= \^b243_in\;
  b38_out <= \^b38_out\;
  b39_out <= \^b39_out\;
  b43_out <= \^b43_out\;
  b47_out <= \^b47_out\;
  b51_out <= \^b51_out\;
  c12_out <= \^c12_out\;
  c16_out <= \^c16_out\;
  c20_out <= \^c20_out\;
  c28_out <= \^c28_out\;
  c4_out <= \^c4_out\;
  c63_out <= \^c63_out\;
\p_reg[11]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => Q(7),
      I1 => \a_reg_reg[7]_0\(2),
      I2 => c187_out,
      I3 => b87_out,
      O => \^b43_out\
    );
\p_reg[11]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^b38_out\,
      I1 => \^a63_out\,
      I2 => \^c63_out\,
      O => \^a8_out\
    );
\p_reg[11]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF956A956A0000"
    )
        port map (
      I0 => b87_out,
      I1 => \a_reg_reg[7]_0\(2),
      I2 => Q(7),
      I3 => c187_out,
      I4 => a67_out,
      I5 => c67_out,
      O => \^c12_out\
    );
\p_reg[11]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => Q(7),
      I1 => \a_reg_reg[7]_0\(1),
      I2 => c190_out,
      I3 => b91_out,
      O => \^b47_out\
    );
\p_reg[11]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A956A95956A"
    )
        port map (
      I0 => b87_out,
      I1 => \a_reg_reg[7]_0\(2),
      I2 => Q(7),
      I3 => c187_out,
      I4 => a67_out,
      I5 => c67_out,
      O => \^a12_out\
    );
\p_reg[11]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF956A956A0000"
    )
        port map (
      I0 => b91_out,
      I1 => \a_reg_reg[7]_0\(1),
      I2 => Q(7),
      I3 => c190_out,
      I4 => a71_out,
      I5 => c71_out,
      O => \^c16_out\
    );
\p_reg[11]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8808080"
    )
        port map (
      I0 => Q(6),
      I1 => \a_reg_reg[7]_0\(1),
      I2 => c193_out,
      I3 => Q(7),
      I4 => \a_reg_reg[7]_0\(0),
      O => \^b51_out\
    );
\p_reg[11]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A956A95956A"
    )
        port map (
      I0 => b91_out,
      I1 => \a_reg_reg[7]_0\(1),
      I2 => Q(7),
      I3 => c190_out,
      I4 => a71_out,
      I5 => c71_out,
      O => \^a16_out\
    );
\p_reg[11]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => a75_out,
      I1 => c75_out,
      I2 => b49_out,
      O => \^c20_out\
    );
\p_reg[11]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => Q(4),
      I1 => \a_reg_reg[7]_0\(2),
      I2 => Q(6),
      I3 => \a_reg_reg[7]_0\(0),
      I4 => Q(5),
      I5 => \a_reg_reg[7]_0\(1),
      O => b55_out227_in
    );
\p_reg[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \^b39_out\,
      I1 => \^a4_out\,
      I2 => \^a63_out\,
      I3 => \^c63_out\,
      I4 => \^b38_out\,
      O => s4_1(11)
    );
\p_reg[11]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF966696660000"
    )
        port map (
      I0 => c168_in,
      I1 => a107_out,
      I2 => \a_reg_reg[7]_0\(4),
      I3 => Q(2),
      I4 => c79_out,
      I5 => b52_out,
      O => c24_out
    );
\p_reg[11]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b49_out,
      I1 => a75_out,
      I2 => c75_out,
      O => a20_out
    );
\p_reg[11]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Q(4),
      I1 => \a_reg_reg[7]_0\(4),
      I2 => Q(5),
      I3 => \a_reg_reg[7]_0\(3),
      O => c187_out
    );
\p_reg[11]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => Q(1),
      I1 => \a_reg_reg[7]_0\(7),
      I2 => Q(3),
      I3 => \a_reg_reg[7]_0\(5),
      I4 => Q(2),
      I5 => \a_reg_reg[7]_0\(6),
      O => b87_out
    );
\p_reg[11]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87787878"
    )
        port map (
      I0 => Q(5),
      I1 => \a_reg_reg[7]_0\(4),
      I2 => a96_out,
      I3 => \a_reg_reg[7]_0\(3),
      I4 => Q(6),
      O => a67_out
    );
\p_reg[11]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA80"
    )
        port map (
      I0 => a100_out,
      I1 => Q(6),
      I2 => \a_reg_reg[7]_0\(2),
      I3 => b89_out,
      O => c67_out
    );
\p_reg[11]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Q(3),
      I1 => \a_reg_reg[7]_0\(4),
      I2 => Q(4),
      I3 => \a_reg_reg[7]_0\(3),
      O => c190_out
    );
\p_reg[11]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => Q(0),
      I1 => \a_reg_reg[7]_0\(7),
      I2 => Q(2),
      I3 => \a_reg_reg[7]_0\(5),
      I4 => Q(1),
      I5 => \a_reg_reg[7]_0\(6),
      O => b91_out
    );
\p_reg[11]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => b89_out,
      I1 => a100_out,
      I2 => \a_reg_reg[7]_0\(2),
      I3 => Q(6),
      O => a71_out
    );
\p_reg[11]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA80"
    )
        port map (
      I0 => a104_out,
      I1 => Q(5),
      I2 => \a_reg_reg[7]_0\(2),
      I3 => b92_out,
      O => c71_out
    );
\p_reg[11]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Q(0),
      I1 => \a_reg_reg[7]_0\(6),
      I2 => Q(1),
      I3 => \a_reg_reg[7]_0\(5),
      O => c193_out
    );
\p_reg[11]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \a_reg_reg[7]_0\(3),
      I1 => Q(3),
      O => c168_in
    );
\p_reg[11]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => Q(1),
      I1 => \a_reg_reg[7]_0\(5),
      I2 => Q(0),
      I3 => \a_reg_reg[7]_0\(6),
      O => a107_out
    );
\p_reg[11]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => Q(0),
      I1 => \a_reg_reg[7]_0\(5),
      I2 => Q(2),
      I3 => \a_reg_reg[7]_0\(3),
      I4 => Q(1),
      I5 => \a_reg_reg[7]_0\(4),
      O => c79_out
    );
\p_reg[11]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => Q(5),
      I1 => \a_reg_reg[7]_0\(1),
      I2 => \a_reg_reg[7]_0\(2),
      I3 => Q(4),
      I4 => \a_reg_reg[7]_0\(0),
      I5 => Q(6),
      O => b52_out
    );
\p_reg[11]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => Q(2),
      I1 => \a_reg_reg[7]_0\(6),
      I2 => \a_reg_reg[7]_0\(7),
      I3 => Q(1),
      I4 => \a_reg_reg[7]_0\(5),
      I5 => Q(3),
      O => a100_out
    );
\p_reg[11]_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => Q(5),
      I1 => \a_reg_reg[7]_0\(3),
      I2 => Q(4),
      I3 => \a_reg_reg[7]_0\(4),
      O => b89_out
    );
\p_reg[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => s4_1(11),
      I1 => \^b43_out\,
      I2 => \^c12_out\,
      I3 => \^a8_out\,
      O => \p_reg[11]_i_6_n_0\
    );
\p_reg[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \^c12_out\,
      I1 => \^a8_out\,
      I2 => \^b43_out\,
      I3 => \^b47_out\,
      I4 => \^c16_out\,
      I5 => \^a12_out\,
      O => \p_reg[11]_i_7_n_0\
    );
\p_reg[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \^c16_out\,
      I1 => \^a12_out\,
      I2 => \^b47_out\,
      I3 => \^b51_out\,
      I4 => \^c20_out\,
      I5 => \^a16_out\,
      O => \p_reg[11]_i_8_n_0\
    );
\p_reg[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \^c20_out\,
      I1 => \^a16_out\,
      I2 => \^b51_out\,
      I3 => b55_out227_in,
      I4 => c24_out,
      I5 => a20_out,
      O => \p_reg[11]_i_9_n_0\
    );
\p_reg[15]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E888"
    )
        port map (
      I0 => a59_out,
      I1 => c59_out,
      I2 => Q(7),
      I3 => \a_reg_reg[7]_0\(4),
      O => \^c4_out\
    );
\p_reg[15]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => Q(4),
      I1 => \a_reg_reg[7]_0\(6),
      I2 => \a_reg_reg[7]_0\(7),
      I3 => Q(3),
      I4 => \a_reg_reg[7]_0\(5),
      I5 => Q(5),
      O => \^a63_out\
    );
\p_reg[15]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA808080"
    )
        port map (
      I0 => a96_out,
      I1 => Q(6),
      I2 => \a_reg_reg[7]_0\(3),
      I3 => Q(5),
      I4 => \a_reg_reg[7]_0\(4),
      O => \^c63_out\
    );
\p_reg[15]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87777888"
    )
        port map (
      I0 => Q(7),
      I1 => \a_reg_reg[7]_0\(3),
      I2 => \a_reg_reg[7]_0\(4),
      I3 => Q(6),
      I4 => c83_out,
      O => \^b38_out\
    );
\p_reg[15]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8808080"
    )
        port map (
      I0 => Q(6),
      I1 => \a_reg_reg[7]_0\(4),
      I2 => c83_out,
      I3 => Q(7),
      I4 => \a_reg_reg[7]_0\(3),
      O => \^b39_out\
    );
\p_reg[15]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => Q(7),
      I1 => \a_reg_reg[7]_0\(4),
      I2 => a59_out,
      I3 => c59_out,
      O => \^a4_out\
    );
\p_reg[15]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => Q(5),
      I1 => \a_reg_reg[7]_0\(6),
      I2 => \a_reg_reg[7]_0\(7),
      I3 => Q(4),
      I4 => \a_reg_reg[7]_0\(5),
      I5 => Q(6),
      O => a59_out
    );
\p_reg[15]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => Q(3),
      I1 => \a_reg_reg[7]_0\(7),
      I2 => Q(5),
      I3 => \a_reg_reg[7]_0\(5),
      I4 => Q(4),
      I5 => \a_reg_reg[7]_0\(6),
      O => c59_out
    );
\p_reg[15]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => Q(3),
      I1 => \a_reg_reg[7]_0\(6),
      I2 => \a_reg_reg[7]_0\(7),
      I3 => Q(2),
      I4 => \a_reg_reg[7]_0\(5),
      I5 => Q(4),
      O => a96_out
    );
\p_reg[15]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => Q(2),
      I1 => \a_reg_reg[7]_0\(7),
      I2 => Q(4),
      I3 => \a_reg_reg[7]_0\(5),
      I4 => Q(3),
      I5 => \a_reg_reg[7]_0\(6),
      O => c83_out
    );
\p_reg[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9B08F70828888888"
    )
        port map (
      I0 => \a_reg_reg[7]_0\(7),
      I1 => Q(6),
      I2 => Q(5),
      I3 => Q(7),
      I4 => \a_reg_reg[7]_0\(5),
      I5 => \a_reg_reg[7]_0\(6),
      O => s4_1(13)
    );
\p_reg[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"380840C040C0C0C0"
    )
        port map (
      I0 => Q(5),
      I1 => \a_reg_reg[7]_0\(7),
      I2 => Q(7),
      I3 => \a_reg_reg[7]_0\(5),
      I4 => Q(6),
      I5 => \a_reg_reg[7]_0\(6),
      O => \p_reg[15]_i_5_n_0\
    );
\p_reg[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => s4_1(13),
      I1 => \^b243_in\,
      I2 => \^c4_out\,
      I3 => \^a0_out\,
      O => \p_reg[15]_i_6_n_0\
    );
\p_reg[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => Q(4),
      I1 => \a_reg_reg[7]_0\(7),
      I2 => Q(6),
      I3 => \a_reg_reg[7]_0\(5),
      I4 => Q(5),
      I5 => \a_reg_reg[7]_0\(6),
      O => \^b243_in\
    );
\p_reg[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => Q(6),
      I1 => \a_reg_reg[7]_0\(6),
      I2 => \a_reg_reg[7]_0\(7),
      I3 => Q(5),
      I4 => \a_reg_reg[7]_0\(5),
      I5 => Q(7),
      O => \^a0_out\
    );
\p_reg[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87787878"
    )
        port map (
      I0 => Q(2),
      I1 => \a_reg_reg[7]_0\(1),
      I2 => a34_out,
      I3 => \a_reg_reg[7]_0\(0),
      I4 => Q(3),
      O => s4_1(3)
    );
\p_reg[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => s4_1(3),
      I1 => \a_reg_reg[7]_0\(1),
      I2 => Q(1),
      I3 => \a_reg_reg[7]_0\(2),
      I4 => Q(0),
      O => \p_reg[3]_i_5_n_0\
    );
\p_reg[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \a_reg_reg[7]_0\(2),
      I1 => Q(0),
      I2 => \a_reg_reg[7]_0\(1),
      I3 => Q(1),
      I4 => Q(2),
      I5 => \a_reg_reg[7]_0\(0),
      O => \p_reg[3]_i_6_n_0\
    );
\p_reg[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => Q(0),
      I1 => \a_reg_reg[7]_0\(1),
      I2 => Q(1),
      I3 => \a_reg_reg[7]_0\(0),
      O => \p_reg[3]_i_7_n_0\
    );
\p_reg[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87777888"
    )
        port map (
      I0 => Q(7),
      I1 => \a_reg_reg[7]_0\(0),
      I2 => \a_reg_reg[7]_0\(1),
      I3 => Q(6),
      I4 => c193_out,
      O => b49_out
    );
\p_reg[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => b92_out,
      I1 => a104_out,
      I2 => \a_reg_reg[7]_0\(2),
      I3 => Q(5),
      O => a75_out
    );
\p_reg[7]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA808080"
    )
        port map (
      I0 => a107_out,
      I1 => Q(3),
      I2 => \a_reg_reg[7]_0\(3),
      I3 => Q(2),
      I4 => \a_reg_reg[7]_0\(4),
      O => c75_out
    );
\p_reg[7]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b52_out,
      I1 => a79_out,
      I2 => c79_out,
      O => \^a24_out\
    );
\p_reg[7]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA80"
    )
        port map (
      I0 => a83_out,
      I1 => Q(5),
      I2 => \a_reg_reg[7]_0\(0),
      I3 => b55_out,
      O => \^c28_out\
    );
\p_reg[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => b55_out,
      I1 => a83_out,
      I2 => \a_reg_reg[7]_0\(0),
      I3 => Q(5),
      O => a27_out
    );
\p_reg[7]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA808080"
    )
        port map (
      I0 => a86_out,
      I1 => Q(3),
      I2 => \a_reg_reg[7]_0\(1),
      I3 => Q(2),
      I4 => \a_reg_reg[7]_0\(2),
      O => c32_out
    );
\p_reg[7]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87787878"
    )
        port map (
      I0 => Q(2),
      I1 => \a_reg_reg[7]_0\(2),
      I2 => a86_out,
      I3 => \a_reg_reg[7]_0\(1),
      I4 => Q(3),
      O => a31_out
    );
\p_reg[7]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Q(0),
      I1 => \a_reg_reg[7]_0\(3),
      I2 => Q(1),
      I3 => \a_reg_reg[7]_0\(2),
      O => p_214_in
    );
\p_reg[7]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Q(3),
      I1 => \a_reg_reg[7]_0\(2),
      I2 => Q(4),
      I3 => \a_reg_reg[7]_0\(1),
      O => p_225_in
    );
\p_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => b55_out227_in,
      I1 => b49_out,
      I2 => a75_out,
      I3 => c75_out,
      I4 => c24_out,
      O => s4_1(7)
    );
\p_reg[7]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Q(0),
      I1 => \a_reg_reg[7]_0\(4),
      I2 => Q(1),
      I3 => \a_reg_reg[7]_0\(3),
      O => p_220_in
    );
\p_reg[7]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => Q(1),
      I1 => \a_reg_reg[7]_0\(2),
      I2 => Q(0),
      I3 => \a_reg_reg[7]_0\(3),
      O => a34_out
    );
\p_reg[7]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => Q(4),
      I1 => \a_reg_reg[7]_0\(3),
      I2 => Q(3),
      I3 => \a_reg_reg[7]_0\(4),
      O => b92_out
    );
\p_reg[7]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => Q(1),
      I1 => \a_reg_reg[7]_0\(6),
      I2 => \a_reg_reg[7]_0\(7),
      I3 => Q(0),
      I4 => \a_reg_reg[7]_0\(5),
      I5 => Q(2),
      O => a104_out
    );
\p_reg[7]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87787878"
    )
        port map (
      I0 => Q(2),
      I1 => \a_reg_reg[7]_0\(4),
      I2 => a107_out,
      I3 => \a_reg_reg[7]_0\(3),
      I4 => Q(3),
      O => a79_out
    );
\p_reg[7]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => Q(1),
      I1 => \a_reg_reg[7]_0\(4),
      I2 => \a_reg_reg[7]_0\(5),
      I3 => Q(0),
      I4 => \a_reg_reg[7]_0\(3),
      I5 => Q(2),
      O => a83_out
    );
\p_reg[7]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => Q(4),
      I1 => \a_reg_reg[7]_0\(1),
      I2 => Q(3),
      I3 => \a_reg_reg[7]_0\(2),
      O => b55_out
    );
\p_reg[7]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => Q(1),
      I1 => \a_reg_reg[7]_0\(3),
      I2 => Q(0),
      I3 => \a_reg_reg[7]_0\(4),
      O => a86_out
    );
\p_reg[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80007FFF7FFF8000"
    )
        port map (
      I0 => \a_reg_reg[7]_0\(3),
      I1 => Q(1),
      I2 => \a_reg_reg[7]_0\(4),
      I3 => Q(0),
      I4 => a27_out,
      I5 => c32_out,
      O => s4_1(5)
    );
\p_reg[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => Q(4),
      I1 => \a_reg_reg[7]_0\(0),
      I2 => a31_out,
      I3 => p_214_in,
      O => s4_1(4)
    );
\p_reg[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => s4_1(7),
      I1 => p_225_in,
      I2 => \^c28_out\,
      I3 => \^a24_out\,
      O => \p_reg[7]_i_6_n_0\
    );
\p_reg[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \^c28_out\,
      I1 => \^a24_out\,
      I2 => p_225_in,
      I3 => p_220_in,
      I4 => c32_out,
      I5 => a27_out,
      O => \p_reg[7]_i_7_n_0\
    );
\p_reg[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"556A6AAA"
    )
        port map (
      I0 => s4_1(5),
      I1 => \a_reg_reg[7]_0\(0),
      I2 => Q(4),
      I3 => p_214_in,
      I4 => a31_out,
      O => \p_reg[7]_i_8_n_0\
    );
\p_reg[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"556A6A6A6AAAAAAA"
    )
        port map (
      I0 => s4_1(4),
      I1 => \a_reg_reg[7]_0\(1),
      I2 => Q(2),
      I3 => \a_reg_reg[7]_0\(0),
      I4 => Q(3),
      I5 => a34_out,
      O => \p_reg[7]_i_9_n_0\
    );
\p_reg_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_reg_reg[7]_i_1_n_0\,
      CO(3) => \p_reg_reg[11]_i_1_n_0\,
      CO(2 downto 0) => \NLW_p_reg_reg[11]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => s4_1(11),
      DI(2 downto 0) => \b_reg_reg[4]\(4 downto 2),
      O(3 downto 0) => D(11 downto 8),
      S(3) => \p_reg[11]_i_6_n_0\,
      S(2) => \p_reg[11]_i_7_n_0\,
      S(1) => \p_reg[11]_i_8_n_0\,
      S(0) => \p_reg[11]_i_9_n_0\
    );
\p_reg_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_reg_reg[11]_i_1_n_0\,
      CO(3) => D(15),
      CO(2 downto 0) => \NLW_p_reg_reg[15]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \a_reg_reg[7]\(0),
      DI(1) => s4_1(13),
      DI(0) => \b_reg_reg[4]\(5),
      O(3) => \NLW_p_reg_reg[15]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => D(14 downto 12),
      S(3) => '1',
      S(2) => \p_reg[15]_i_5_n_0\,
      S(1) => \p_reg[15]_i_6_n_0\,
      S(0) => \b_reg_reg[4]_0\(0)
    );
\p_reg_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \p_reg_reg[3]_i_1_n_0\,
      CO(2 downto 0) => \NLW_p_reg_reg[3]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => s4_1(3),
      DI(2) => \b_reg_reg[4]\(0),
      DI(1) => DI(0),
      DI(0) => '0',
      O(3 downto 0) => D(3 downto 0),
      S(3) => \p_reg[3]_i_5_n_0\,
      S(2) => \p_reg[3]_i_6_n_0\,
      S(1) => \p_reg[3]_i_7_n_0\,
      S(0) => S(0)
    );
\p_reg_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_reg_reg[3]_i_1_n_0\,
      CO(3) => \p_reg_reg[7]_i_1_n_0\,
      CO(2 downto 0) => \NLW_p_reg_reg[7]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => s4_1(7),
      DI(2) => \b_reg_reg[4]\(1),
      DI(1 downto 0) => s4_1(5 downto 4),
      O(3 downto 0) => D(7 downto 4),
      S(3) => \p_reg[7]_i_6_n_0\,
      S(2) => \p_reg[7]_i_7_n_0\,
      S(1) => \p_reg[7]_i_8_n_0\,
      S(0) => \p_reg[7]_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TOP is
  port (
    a : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    p : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TOP : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of TOP : entity is "87c9626e";
  attribute use_dsp : string;
  attribute use_dsp of TOP : entity is "yes";
end TOP;

architecture STRUCTURE of TOP is
  signal a0_out : STD_LOGIC;
  signal a12_out : STD_LOGIC;
  signal a16_out : STD_LOGIC;
  signal a24_out : STD_LOGIC;
  signal a4_out : STD_LOGIC;
  signal a63_out : STD_LOGIC;
  signal a8_out : STD_LOGIC;
  signal a_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \a_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \a_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal and_8b012_out : STD_LOGIC;
  signal and_8b068_out : STD_LOGIC;
  signal and_8b069_out : STD_LOGIC;
  signal b243_in : STD_LOGIC;
  signal b38_out : STD_LOGIC;
  signal b39_out : STD_LOGIC;
  signal b43_out : STD_LOGIC;
  signal b47_out : STD_LOGIC;
  signal b51_out : STD_LOGIC;
  signal b_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \b_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \b_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal c12_out : STD_LOGIC;
  signal c16_out : STD_LOGIC;
  signal c20_out : STD_LOGIC;
  signal c28_out : STD_LOGIC;
  signal c4_out : STD_LOGIC;
  signal c63_out : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal p_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_next : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \p_reg[15]_i_7_n_0\ : STD_LOGIC;
  signal s4_1 : STD_LOGIC_VECTOR ( 12 downto 2 );
begin
DM_instance: entity work.dadda_multi
     port map (
      D(15 downto 0) => p_next(15 downto 0),
      DI(0) => and_8b069_out,
      Q(7) => \b_reg_reg_n_0_[7]\,
      Q(6) => \b_reg_reg_n_0_[6]\,
      Q(5) => \b_reg_reg_n_0_[5]\,
      Q(4) => \b_reg_reg_n_0_[4]\,
      Q(3) => \b_reg_reg_n_0_[3]\,
      Q(2) => \b_reg_reg_n_0_[2]\,
      Q(1) => \b_reg_reg_n_0_[1]\,
      Q(0) => \b_reg_reg_n_0_[0]\,
      S(0) => and_8b068_out,
      a0_out => a0_out,
      a12_out => a12_out,
      a16_out => a16_out,
      a24_out => a24_out,
      a4_out => a4_out,
      a63_out => a63_out,
      a8_out => a8_out,
      \a_reg_reg[7]\(0) => and_8b012_out,
      \a_reg_reg[7]_0\(7) => \a_reg_reg_n_0_[7]\,
      \a_reg_reg[7]_0\(6) => \a_reg_reg_n_0_[6]\,
      \a_reg_reg[7]_0\(5) => \a_reg_reg_n_0_[5]\,
      \a_reg_reg[7]_0\(4) => \a_reg_reg_n_0_[4]\,
      \a_reg_reg[7]_0\(3) => \a_reg_reg_n_0_[3]\,
      \a_reg_reg[7]_0\(2) => \a_reg_reg_n_0_[2]\,
      \a_reg_reg[7]_0\(1) => \a_reg_reg_n_0_[1]\,
      \a_reg_reg[7]_0\(0) => \a_reg_reg_n_0_[0]\,
      b243_in => b243_in,
      b38_out => b38_out,
      b39_out => b39_out,
      b43_out => b43_out,
      b47_out => b47_out,
      b51_out => b51_out,
      \b_reg_reg[4]\(5) => s4_1(12),
      \b_reg_reg[4]\(4 downto 2) => s4_1(10 downto 8),
      \b_reg_reg[4]\(1) => s4_1(6),
      \b_reg_reg[4]\(0) => s4_1(2),
      \b_reg_reg[4]_0\(0) => \p_reg[15]_i_7_n_0\,
      c12_out => c12_out,
      c16_out => c16_out,
      c20_out => c20_out,
      c28_out => c28_out,
      c4_out => c4_out,
      c63_out => c63_out
    );
\a_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(0),
      O => a_IBUF(0)
    );
\a_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(1),
      O => a_IBUF(1)
    );
\a_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(2),
      O => a_IBUF(2)
    );
\a_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(3),
      O => a_IBUF(3)
    );
\a_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(4),
      O => a_IBUF(4)
    );
\a_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(5),
      O => a_IBUF(5)
    );
\a_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(6),
      O => a_IBUF(6)
    );
\a_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => a(7),
      O => a_IBUF(7)
    );
\a_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => a_IBUF(0),
      Q => \a_reg_reg_n_0_[0]\,
      R => '0'
    );
\a_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => a_IBUF(1),
      Q => \a_reg_reg_n_0_[1]\,
      R => '0'
    );
\a_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => a_IBUF(2),
      Q => \a_reg_reg_n_0_[2]\,
      R => '0'
    );
\a_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => a_IBUF(3),
      Q => \a_reg_reg_n_0_[3]\,
      R => '0'
    );
\a_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => a_IBUF(4),
      Q => \a_reg_reg_n_0_[4]\,
      R => '0'
    );
\a_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => a_IBUF(5),
      Q => \a_reg_reg_n_0_[5]\,
      R => '0'
    );
\a_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => a_IBUF(6),
      Q => \a_reg_reg_n_0_[6]\,
      R => '0'
    );
\a_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => a_IBUF(7),
      Q => \a_reg_reg_n_0_[7]\,
      R => '0'
    );
\b_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(0),
      O => b_IBUF(0)
    );
\b_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(1),
      O => b_IBUF(1)
    );
\b_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(2),
      O => b_IBUF(2)
    );
\b_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(3),
      O => b_IBUF(3)
    );
\b_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(4),
      O => b_IBUF(4)
    );
\b_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(5),
      O => b_IBUF(5)
    );
\b_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(6),
      O => b_IBUF(6)
    );
\b_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => b(7),
      O => b_IBUF(7)
    );
\b_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => b_IBUF(0),
      Q => \b_reg_reg_n_0_[0]\,
      R => '0'
    );
\b_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => b_IBUF(1),
      Q => \b_reg_reg_n_0_[1]\,
      R => '0'
    );
\b_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => b_IBUF(2),
      Q => \b_reg_reg_n_0_[2]\,
      R => '0'
    );
\b_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => b_IBUF(3),
      Q => \b_reg_reg_n_0_[3]\,
      R => '0'
    );
\b_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => b_IBUF(4),
      Q => \b_reg_reg_n_0_[4]\,
      R => '0'
    );
\b_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => b_IBUF(5),
      Q => \b_reg_reg_n_0_[5]\,
      R => '0'
    );
\b_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => b_IBUF(6),
      Q => \b_reg_reg_n_0_[6]\,
      R => '0'
    );
\b_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => b_IBUF(7),
      Q => \b_reg_reg_n_0_[7]\,
      R => '0'
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\p_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => p_OBUF(0),
      O => p(0)
    );
\p_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => p_OBUF(10),
      O => p(10)
    );
\p_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => p_OBUF(11),
      O => p(11)
    );
\p_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => p_OBUF(12),
      O => p(12)
    );
\p_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => p_OBUF(13),
      O => p(13)
    );
\p_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => p_OBUF(14),
      O => p(14)
    );
\p_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => p_OBUF(15),
      O => p(15)
    );
\p_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => p_OBUF(1),
      O => p(1)
    );
\p_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => p_OBUF(2),
      O => p(2)
    );
\p_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => p_OBUF(3),
      O => p(3)
    );
\p_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => p_OBUF(4),
      O => p(4)
    );
\p_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => p_OBUF(5),
      O => p(5)
    );
\p_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => p_OBUF(6),
      O => p(6)
    );
\p_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => p_OBUF(7),
      O => p(7)
    );
\p_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => p_OBUF(8),
      O => p(8)
    );
\p_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => p_OBUF(9),
      O => p(9)
    );
\p_reg[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b43_out,
      I1 => a8_out,
      I2 => c12_out,
      O => s4_1(10)
    );
\p_reg[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b47_out,
      I1 => a12_out,
      I2 => c16_out,
      O => s4_1(9)
    );
\p_reg[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b51_out,
      I1 => a16_out,
      I2 => c20_out,
      O => s4_1(8)
    );
\p_reg[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \a_reg_reg_n_0_[7]\,
      I1 => \b_reg_reg_n_0_[7]\,
      O => and_8b012_out
    );
\p_reg[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => b243_in,
      I1 => a0_out,
      I2 => c4_out,
      O => s4_1(12)
    );
\p_reg[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF17E817E8FF00"
    )
        port map (
      I0 => a63_out,
      I1 => c63_out,
      I2 => b38_out,
      I3 => s4_1(12),
      I4 => b39_out,
      I5 => a4_out,
      O => \p_reg[15]_i_7_n_0\
    );
\p_reg[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \b_reg_reg_n_0_[1]\,
      I1 => \a_reg_reg_n_0_[1]\,
      I2 => \b_reg_reg_n_0_[0]\,
      I3 => \a_reg_reg_n_0_[2]\,
      O => s4_1(2)
    );
\p_reg[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \a_reg_reg_n_0_[1]\,
      I1 => \b_reg_reg_n_0_[0]\,
      O => and_8b069_out
    );
\p_reg[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \a_reg_reg_n_0_[0]\,
      I1 => \b_reg_reg_n_0_[0]\,
      O => and_8b068_out
    );
\p_reg[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80007FFF7FFF8000"
    )
        port map (
      I0 => \a_reg_reg_n_0_[1]\,
      I1 => \b_reg_reg_n_0_[4]\,
      I2 => \a_reg_reg_n_0_[2]\,
      I3 => \b_reg_reg_n_0_[3]\,
      I4 => a24_out,
      I5 => c28_out,
      O => s4_1(6)
    );
\p_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_next(0),
      Q => p_OBUF(0),
      R => '0'
    );
\p_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_next(10),
      Q => p_OBUF(10),
      R => '0'
    );
\p_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_next(11),
      Q => p_OBUF(11),
      R => '0'
    );
\p_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_next(12),
      Q => p_OBUF(12),
      R => '0'
    );
\p_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_next(13),
      Q => p_OBUF(13),
      R => '0'
    );
\p_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_next(14),
      Q => p_OBUF(14),
      R => '0'
    );
\p_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_next(15),
      Q => p_OBUF(15),
      R => '0'
    );
\p_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_next(1),
      Q => p_OBUF(1),
      R => '0'
    );
\p_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_next(2),
      Q => p_OBUF(2),
      R => '0'
    );
\p_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_next(3),
      Q => p_OBUF(3),
      R => '0'
    );
\p_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_next(4),
      Q => p_OBUF(4),
      R => '0'
    );
\p_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_next(5),
      Q => p_OBUF(5),
      R => '0'
    );
\p_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_next(6),
      Q => p_OBUF(6),
      R => '0'
    );
\p_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_next(7),
      Q => p_OBUF(7),
      R => '0'
    );
\p_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_next(8),
      Q => p_OBUF(8),
      R => '0'
    );
\p_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_next(9),
      Q => p_OBUF(9),
      R => '0'
    );
end STRUCTURE;
