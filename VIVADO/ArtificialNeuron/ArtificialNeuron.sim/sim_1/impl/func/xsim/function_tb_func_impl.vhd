-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Jan 15 15:47:19 2019
-- Host        : ASUSANTI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/srome/Desktop/ETSIT/TFG/Pablo Ituero/FPGA y
--               Vivado/ArtificialNeuron/ArtificialNeuron.sim/sim_1/impl/func/xsim/function_tb_func_impl.vhd}
-- Design      : AND_function
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FA is
  port (
    \s_reg_reg[12]\ : out STD_LOGIC;
    carry_0_2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_reg[12]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end FA;

architecture STRUCTURE of FA is
begin
\s_reg[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => carry_0_2,
      I1 => Q(0),
      I2 => \s_reg_reg[12]_0\(0),
      O => \s_reg_reg[12]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FA_10 is
  port (
    \s_reg_reg[11]\ : out STD_LOGIC;
    carry_2_9 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_reg[11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FA_10 : entity is "FA";
end FA_10;

architecture STRUCTURE of FA_10 is
begin
\s_reg[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => carry_2_9,
      I1 => Q(0),
      I2 => \s_reg_reg[11]_0\(0),
      O => \s_reg_reg[11]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FA_11 is
  port (
    \s_reg_reg[4]\ : out STD_LOGIC;
    carry_0_0_2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FA_11 : entity is "FA";
end FA_11;

architecture STRUCTURE of FA_11 is
begin
\s_reg[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => carry_0_0_2,
      I1 => Q(0),
      I2 => \s_reg_reg[4]_0\(0),
      O => \s_reg_reg[4]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FA_12 is
  port (
    \s_reg_reg[5]\ : out STD_LOGIC;
    carry_0_4 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_reg[5]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FA_12 : entity is "FA";
end FA_12;

architecture STRUCTURE of FA_12 is
begin
\s_reg[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => carry_0_4,
      I1 => Q(0),
      I2 => \s_reg_reg[5]_0\(0),
      O => \s_reg_reg[5]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FA_13 is
  port (
    \s_reg_reg[6]\ : out STD_LOGIC;
    carry_1_5 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_reg[6]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FA_13 : entity is "FA";
end FA_13;

architecture STRUCTURE of FA_13 is
begin
\s_reg[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => carry_1_5,
      I1 => Q(0),
      I2 => \s_reg_reg[6]_0\(0),
      O => \s_reg_reg[6]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FA_14 is
  port (
    \s_reg_reg[7]\ : out STD_LOGIC;
    carry_2_6 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FA_14 : entity is "FA";
end FA_14;

architecture STRUCTURE of FA_14 is
begin
\s_reg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => carry_2_6,
      I1 => Q(0),
      I2 => \s_reg_reg[7]_0\(0),
      O => \s_reg_reg[7]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FA_15 is
  port (
    \s_reg_reg[16]\ : out STD_LOGIC;
    carry_0_3 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_reg[16]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FA_15 : entity is "FA";
end FA_15;

architecture STRUCTURE of FA_15 is
begin
\s_reg[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => carry_0_3,
      I1 => Q(0),
      I2 => \s_reg_reg[16]_0\(0),
      O => \s_reg_reg[16]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FA_16 is
  port (
    \s_reg_reg[17]\ : out STD_LOGIC;
    carry_0_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_reg[17]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FA_16 : entity is "FA";
end FA_16;

architecture STRUCTURE of FA_16 is
begin
\s_reg[17]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => carry_0_0,
      I1 => Q(0),
      I2 => \s_reg_reg[17]_0\(0),
      O => \s_reg_reg[17]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FA_17 is
  port (
    \s_reg_reg[18]\ : out STD_LOGIC;
    carry_1_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_reg[18]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FA_17 : entity is "FA";
end FA_17;

architecture STRUCTURE of FA_17 is
begin
\s_reg[18]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => carry_1_1,
      I1 => Q(0),
      I2 => \s_reg_reg[18]_0\(0),
      O => \s_reg_reg[18]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FA_18 is
  port (
    \s_reg_reg[19]\ : out STD_LOGIC;
    carry_2_13 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_reg[19]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FA_18 : entity is "FA";
end FA_18;

architecture STRUCTURE of FA_18 is
begin
\s_reg[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => carry_2_13,
      I1 => Q(0),
      I2 => \s_reg_reg[19]_0\(0),
      O => \s_reg_reg[19]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FA_19 is
  port (
    \s_reg_reg[0]\ : out STD_LOGIC;
    carry_0 : out STD_LOGIC;
    \s_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FA_19 : entity is "FA";
end FA_19;

architecture STRUCTURE of FA_19 is
begin
\s_reg[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \s_reg_reg[0]_0\(0),
      I1 => Q(0),
      O => \s_reg_reg[0]\
    );
\s_reg[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(0),
      I1 => \s_reg_reg[0]_0\(0),
      O => carry_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FA_20 is
  port (
    \s_reg_reg[1]\ : out STD_LOGIC;
    carry_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FA_20 : entity is "FA";
end FA_20;

architecture STRUCTURE of FA_20 is
begin
\s_reg[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => carry_0,
      I1 => Q(0),
      I2 => \s_reg_reg[1]_0\(0),
      O => \s_reg_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FA_21 is
  port (
    \s_reg_reg[2]\ : out STD_LOGIC;
    carry_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FA_21 : entity is "FA";
end FA_21;

architecture STRUCTURE of FA_21 is
begin
\s_reg[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => carry_1,
      I1 => Q(0),
      I2 => \s_reg_reg[2]_0\(0),
      O => \s_reg_reg[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FA_22 is
  port (
    \s_reg_reg[3]\ : out STD_LOGIC;
    carry_2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FA_22 : entity is "FA";
end FA_22;

architecture STRUCTURE of FA_22 is
begin
\s_reg[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => carry_2,
      I1 => Q(0),
      I2 => \s_reg_reg[3]_0\(0),
      O => \s_reg_reg[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FA_4 is
  port (
    \s_reg_reg[13]\ : out STD_LOGIC;
    carry_0_10 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_reg[13]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FA_4 : entity is "FA";
end FA_4;

architecture STRUCTURE of FA_4 is
begin
\s_reg[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => carry_0_10,
      I1 => Q(0),
      I2 => \s_reg_reg[13]_0\(0),
      O => \s_reg_reg[13]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FA_5 is
  port (
    \s_reg_reg[14]\ : out STD_LOGIC;
    carry_1_11 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_reg[14]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FA_5 : entity is "FA";
end FA_5;

architecture STRUCTURE of FA_5 is
begin
\s_reg[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => carry_1_11,
      I1 => Q(0),
      I2 => \s_reg_reg[14]_0\(0),
      O => \s_reg_reg[14]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FA_6 is
  port (
    \s_reg_reg[15]\ : out STD_LOGIC;
    carry_2_12 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_reg[15]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FA_6 : entity is "FA";
end FA_6;

architecture STRUCTURE of FA_6 is
begin
\s_reg[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => carry_2_12,
      I1 => Q(0),
      I2 => \s_reg_reg[15]_0\(0),
      O => \s_reg_reg[15]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FA_7 is
  port (
    \s_reg_reg[8]\ : out STD_LOGIC;
    carry_0_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_reg[8]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FA_7 : entity is "FA";
end FA_7;

architecture STRUCTURE of FA_7 is
begin
\s_reg[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => carry_0_1,
      I1 => Q(0),
      I2 => \s_reg_reg[8]_0\(0),
      O => \s_reg_reg[8]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FA_8 is
  port (
    \s_reg_reg[9]\ : out STD_LOGIC;
    carry_0_7 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_reg[9]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FA_8 : entity is "FA";
end FA_8;

architecture STRUCTURE of FA_8 is
begin
\s_reg[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => carry_0_7,
      I1 => Q(0),
      I2 => \s_reg_reg[9]_0\(0),
      O => \s_reg_reg[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FA_9 is
  port (
    \s_reg_reg[10]\ : out STD_LOGIC;
    carry_1_8 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_reg[10]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FA_9 : entity is "FA";
end FA_9;

architecture STRUCTURE of FA_9 is
begin
\s_reg[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => carry_1_8,
      I1 => Q(0),
      I2 => \s_reg_reg[10]_0\(0),
      O => \s_reg_reg[10]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \clk_77_MHz__clk_77_MHz_clk_wiz\ is
  port (
    clk_out1 : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \clk_77_MHz__clk_77_MHz_clk_wiz\ : entity is "clk_77_MHz_clk_wiz";
end \clk_77_MHz__clk_77_MHz_clk_wiz\;

architecture STRUCTURE of \clk_77_MHz__clk_77_MHz_clk_wiz\ is
  signal clk_in1_clk_77_MHz : STD_LOGIC;
  signal clk_out1_clk_77_MHz : STD_LOGIC;
  signal clkfbout_buf_clk_77_MHz : STD_LOGIC;
  signal clkfbout_clk_77_MHz : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_LOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkin1_ibufg : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of clkin1_ibufg : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of clkin1_ibufg : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of clkin1_ibufg : label is "AUTO";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of mmcm_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_clk_77_MHz,
      O => clkfbout_buf_clk_77_MHz
    );
clkin1_ibufg: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clk_in1,
      O => clk_in1_clk_77_MHz
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out1_clk_77_MHz,
      O => clk_out1
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 10.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 20.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout_buf_clk_77_MHz,
      CLKFBOUT => clkfbout_clk_77_MHz,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => clk_in1_clk_77_MHz,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clk_out1_clk_77_MHz,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => NLW_mmcm_adv_inst_LOCKED_UNCONNECTED,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dadda_multi is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    started_reg_reg : in STD_LOGIC;
    start_IBUF : in STD_LOGIC;
    input_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end dadda_multi;

architecture STRUCTURE of dadda_multi is
  signal a106_in : STD_LOGIC;
  signal b145_in : STD_LOGIC;
  signal b184_in : STD_LOGIC;
  signal b187_in : STD_LOGIC;
  signal c154_in : STD_LOGIC;
  signal c167_in : STD_LOGIC;
  signal c172_in : STD_LOGIC;
  signal p : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \p_reg[12]_i_4_n_0\ : STD_LOGIC;
  signal \p_reg[12]_i_5_n_0\ : STD_LOGIC;
  signal \p_reg[12]_i_6_n_0\ : STD_LOGIC;
  signal \p_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \p_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \p_reg[15]_i_6_n_0\ : STD_LOGIC;
  signal \p_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \p_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \p_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \p_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \p_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \p_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \p_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \p_reg[8]_i_5_n_0\ : STD_LOGIC;
  signal \p_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \p_reg_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \p_reg_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \p_reg_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \p_reg_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \p_reg_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \p_reg_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \p_reg_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \p_reg_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \p_reg_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \p_reg_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \p_reg_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \p_reg_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \p_reg_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \p_reg_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \p_reg_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \p_reg_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \p_reg_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \p_reg_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal p_trans_i_10_n_0 : STD_LOGIC;
  signal p_trans_i_11_n_0 : STD_LOGIC;
  signal p_trans_i_12_n_0 : STD_LOGIC;
  signal p_trans_i_13_n_0 : STD_LOGIC;
  signal p_trans_i_8_n_0 : STD_LOGIC;
  signal p_trans_i_9_n_0 : STD_LOGIC;
  signal p_trans_n_100 : STD_LOGIC;
  signal p_trans_n_101 : STD_LOGIC;
  signal p_trans_n_102 : STD_LOGIC;
  signal p_trans_n_103 : STD_LOGIC;
  signal p_trans_n_104 : STD_LOGIC;
  signal p_trans_n_90 : STD_LOGIC;
  signal p_trans_n_91 : STD_LOGIC;
  signal p_trans_n_92 : STD_LOGIC;
  signal p_trans_n_93 : STD_LOGIC;
  signal p_trans_n_94 : STD_LOGIC;
  signal p_trans_n_95 : STD_LOGIC;
  signal p_trans_n_96 : STD_LOGIC;
  signal p_trans_n_97 : STD_LOGIC;
  signal p_trans_n_98 : STD_LOGIC;
  signal p_trans_n_99 : STD_LOGIC;
  signal \NLW_p_reg_reg[12]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_p_reg_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_reg_reg[15]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_p_reg_reg[4]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_p_reg_reg[8]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_p_trans_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_trans_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_trans_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_trans_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_trans_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_trans_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_trans_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_trans_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_trans_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_trans_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 16 );
  signal NLW_p_trans_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of p_trans : label is "{SYNTH-13 {cell *THIS*}}";
begin
\p_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p(0),
      I1 => started_reg_reg,
      I2 => start_IBUF,
      O => D(0)
    );
\p_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \p_reg_reg[12]_i_2_n_6\,
      I1 => Q(7),
      I2 => p_trans_n_95,
      I3 => started_reg_reg,
      I4 => start_IBUF,
      O => D(10)
    );
\p_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \p_reg_reg[12]_i_2_n_5\,
      I1 => Q(7),
      I2 => p_trans_n_94,
      I3 => started_reg_reg,
      I4 => start_IBUF,
      O => D(11)
    );
\p_reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \p_reg_reg[12]_i_2_n_4\,
      I1 => Q(7),
      I2 => p_trans_n_93,
      I3 => started_reg_reg,
      I4 => start_IBUF,
      O => D(12)
    );
\p_reg[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_trans_n_93,
      O => \p_reg[12]_i_3_n_0\
    );
\p_reg[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_trans_n_94,
      O => \p_reg[12]_i_4_n_0\
    );
\p_reg[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_trans_n_95,
      O => \p_reg[12]_i_5_n_0\
    );
\p_reg[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_trans_n_96,
      O => \p_reg[12]_i_6_n_0\
    );
\p_reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \p_reg_reg[15]_i_2_n_7\,
      I1 => Q(7),
      I2 => p_trans_n_92,
      I3 => started_reg_reg,
      I4 => start_IBUF,
      O => D(13)
    );
\p_reg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \p_reg_reg[15]_i_2_n_6\,
      I1 => Q(7),
      I2 => p_trans_n_91,
      I3 => started_reg_reg,
      I4 => start_IBUF,
      O => D(14)
    );
\p_reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \p_reg_reg[15]_i_2_n_5\,
      I1 => Q(7),
      I2 => p_trans_n_90,
      I3 => started_reg_reg,
      I4 => start_IBUF,
      O => D(15)
    );
\p_reg[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_trans_n_90,
      O => \p_reg[15]_i_4_n_0\
    );
\p_reg[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_trans_n_91,
      O => \p_reg[15]_i_5_n_0\
    );
\p_reg[15]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_trans_n_92,
      O => \p_reg[15]_i_6_n_0\
    );
\p_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \p_reg_reg[4]_i_2_n_7\,
      I1 => Q(7),
      I2 => p_trans_n_104,
      I3 => started_reg_reg,
      I4 => start_IBUF,
      O => D(1)
    );
\p_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \p_reg_reg[4]_i_2_n_6\,
      I1 => Q(7),
      I2 => p_trans_n_103,
      I3 => started_reg_reg,
      I4 => start_IBUF,
      O => D(2)
    );
\p_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \p_reg_reg[4]_i_2_n_5\,
      I1 => Q(7),
      I2 => p_trans_n_102,
      I3 => started_reg_reg,
      I4 => start_IBUF,
      O => D(3)
    );
\p_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \p_reg_reg[4]_i_2_n_4\,
      I1 => Q(7),
      I2 => p_trans_n_101,
      I3 => started_reg_reg,
      I4 => start_IBUF,
      O => D(4)
    );
\p_reg[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p(0),
      O => \p_reg[4]_i_3_n_0\
    );
\p_reg[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_trans_n_101,
      O => \p_reg[4]_i_4_n_0\
    );
\p_reg[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_trans_n_102,
      O => \p_reg[4]_i_5_n_0\
    );
\p_reg[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_trans_n_103,
      O => \p_reg[4]_i_6_n_0\
    );
\p_reg[4]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_trans_n_104,
      O => \p_reg[4]_i_7_n_0\
    );
\p_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \p_reg_reg[8]_i_2_n_7\,
      I1 => Q(7),
      I2 => p_trans_n_100,
      I3 => started_reg_reg,
      I4 => start_IBUF,
      O => D(5)
    );
\p_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \p_reg_reg[8]_i_2_n_6\,
      I1 => Q(7),
      I2 => p_trans_n_99,
      I3 => started_reg_reg,
      I4 => start_IBUF,
      O => D(6)
    );
\p_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \p_reg_reg[8]_i_2_n_5\,
      I1 => Q(7),
      I2 => p_trans_n_98,
      I3 => started_reg_reg,
      I4 => start_IBUF,
      O => D(7)
    );
\p_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \p_reg_reg[8]_i_2_n_4\,
      I1 => Q(7),
      I2 => p_trans_n_97,
      I3 => started_reg_reg,
      I4 => start_IBUF,
      O => D(8)
    );
\p_reg[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_trans_n_97,
      O => \p_reg[8]_i_3_n_0\
    );
\p_reg[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_trans_n_98,
      O => \p_reg[8]_i_4_n_0\
    );
\p_reg[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_trans_n_99,
      O => \p_reg[8]_i_5_n_0\
    );
\p_reg[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_trans_n_100,
      O => \p_reg[8]_i_6_n_0\
    );
\p_reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \p_reg_reg[12]_i_2_n_7\,
      I1 => Q(7),
      I2 => p_trans_n_96,
      I3 => started_reg_reg,
      I4 => start_IBUF,
      O => D(9)
    );
\p_reg_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_reg_reg[8]_i_2_n_0\,
      CO(3) => \p_reg_reg[12]_i_2_n_0\,
      CO(2 downto 0) => \NLW_p_reg_reg[12]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \p_reg_reg[12]_i_2_n_4\,
      O(2) => \p_reg_reg[12]_i_2_n_5\,
      O(1) => \p_reg_reg[12]_i_2_n_6\,
      O(0) => \p_reg_reg[12]_i_2_n_7\,
      S(3) => \p_reg[12]_i_3_n_0\,
      S(2) => \p_reg[12]_i_4_n_0\,
      S(1) => \p_reg[12]_i_5_n_0\,
      S(0) => \p_reg[12]_i_6_n_0\
    );
\p_reg_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_reg_reg[12]_i_2_n_0\,
      CO(3 downto 0) => \NLW_p_reg_reg[15]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_p_reg_reg[15]_i_2_O_UNCONNECTED\(3),
      O(2) => \p_reg_reg[15]_i_2_n_5\,
      O(1) => \p_reg_reg[15]_i_2_n_6\,
      O(0) => \p_reg_reg[15]_i_2_n_7\,
      S(3) => '0',
      S(2) => \p_reg[15]_i_4_n_0\,
      S(1) => \p_reg[15]_i_5_n_0\,
      S(0) => \p_reg[15]_i_6_n_0\
    );
\p_reg_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \p_reg_reg[4]_i_2_n_0\,
      CO(2 downto 0) => \NLW_p_reg_reg[4]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \p_reg[4]_i_3_n_0\,
      DI(3 downto 0) => B"0000",
      O(3) => \p_reg_reg[4]_i_2_n_4\,
      O(2) => \p_reg_reg[4]_i_2_n_5\,
      O(1) => \p_reg_reg[4]_i_2_n_6\,
      O(0) => \p_reg_reg[4]_i_2_n_7\,
      S(3) => \p_reg[4]_i_4_n_0\,
      S(2) => \p_reg[4]_i_5_n_0\,
      S(1) => \p_reg[4]_i_6_n_0\,
      S(0) => \p_reg[4]_i_7_n_0\
    );
\p_reg_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_reg_reg[4]_i_2_n_0\,
      CO(3) => \p_reg_reg[8]_i_2_n_0\,
      CO(2 downto 0) => \NLW_p_reg_reg[8]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \p_reg_reg[8]_i_2_n_4\,
      O(2) => \p_reg_reg[8]_i_2_n_5\,
      O(1) => \p_reg_reg[8]_i_2_n_6\,
      O(0) => \p_reg_reg[8]_i_2_n_7\,
      S(3) => \p_reg[8]_i_3_n_0\,
      S(2) => \p_reg[8]_i_4_n_0\,
      S(1) => \p_reg[8]_i_5_n_0\,
      S(0) => \p_reg[8]_i_6_n_0\
    );
p_trans: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "NONE",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000000000000000000000000",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_trans_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000000000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_trans_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 10) => B"00000000000000000000000000000000000000",
      C(9) => c154_in,
      C(8) => b184_in,
      C(7) => b187_in,
      C(6) => c167_in,
      C(5) => c172_in,
      C(4) => b145_in,
      C(3) => a106_in,
      C(2 downto 0) => B"000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_trans_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_trans_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_trans_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110011",
      OVERFLOW => NLW_p_trans_OVERFLOW_UNCONNECTED,
      P(47 downto 16) => NLW_p_trans_P_UNCONNECTED(47 downto 16),
      P(15) => p_trans_n_90,
      P(14) => p_trans_n_91,
      P(13) => p_trans_n_92,
      P(12) => p_trans_n_93,
      P(11) => p_trans_n_94,
      P(10) => p_trans_n_95,
      P(9) => p_trans_n_96,
      P(8) => p_trans_n_97,
      P(7) => p_trans_n_98,
      P(6) => p_trans_n_99,
      P(5) => p_trans_n_100,
      P(4) => p_trans_n_101,
      P(3) => p_trans_n_102,
      P(2) => p_trans_n_103,
      P(1) => p_trans_n_104,
      P(0) => p(0),
      PATTERNBDETECT => NLW_p_trans_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_trans_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_trans_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_trans_UNDERFLOW_UNCONNECTED
    );
p_trans_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5700AA00"
    )
        port map (
      I0 => Q(7),
      I1 => p_trans_i_8_n_0,
      I2 => Q(5),
      I3 => input_reg(0),
      I4 => Q(6),
      O => c154_in
    );
p_trans_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => Q(6),
      I1 => input_reg(0),
      I2 => Q(7),
      I3 => Q(5),
      I4 => Q(4),
      O => p_trans_i_10_n_0
    );
p_trans_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      O => p_trans_i_11_n_0
    );
p_trans_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => p_trans_i_12_n_0
    );
p_trans_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      O => p_trans_i_13_n_0
    );
p_trans_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48C048C8"
    )
        port map (
      I0 => Q(7),
      I1 => input_reg(0),
      I2 => Q(5),
      I3 => p_trans_i_8_n_0,
      I4 => Q(6),
      O => b184_in
    );
p_trans_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"48484848C0C0C0C8"
    )
        port map (
      I0 => Q(7),
      I1 => input_reg(0),
      I2 => Q(4),
      I3 => Q(6),
      I4 => Q(5),
      I5 => p_trans_i_9_n_0,
      O => b187_in
    );
p_trans_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30C0FAAA"
    )
        port map (
      I0 => p_trans_i_10_n_0,
      I1 => Q(7),
      I2 => input_reg(0),
      I3 => Q(3),
      I4 => p_trans_i_11_n_0,
      O => c167_in
    );
p_trans_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"288828882F8F2888"
    )
        port map (
      I0 => input_reg(0),
      I1 => Q(2),
      I2 => p_trans_i_12_n_0,
      I3 => Q(7),
      I4 => p_trans_i_10_n_0,
      I5 => Q(3),
      O => c172_in
    );
p_trans_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF80808FF080808"
    )
        port map (
      I0 => p_trans_i_10_n_0,
      I1 => p_trans_i_13_n_0,
      I2 => Q(0),
      I3 => Q(1),
      I4 => input_reg(0),
      I5 => Q(7),
      O => b145_in
    );
p_trans_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888F8"
    )
        port map (
      I0 => input_reg(0),
      I1 => Q(0),
      I2 => p_trans_i_10_n_0,
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(1),
      O => a106_in
    );
p_trans_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(4),
      O => p_trans_i_8_n_0
    );
p_trans_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(3),
      O => p_trans_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ROM_weights_a21__blk_mem_gen_prim_wrapper_init\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ROM_weights_a21__blk_mem_gen_prim_wrapper_init\ : entity is "blk_mem_gen_prim_wrapper_init";
end \ROM_weights_a21__blk_mem_gen_prim_wrapper_init\;

architecture STRUCTURE of \ROM_weights_a21__blk_mem_gen_prim_wrapper_init\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000010101000101010002000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 9) => B"00000",
      ADDRARDADDR(8 downto 5) => addra(3 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(13 downto 9) => B"00000",
      ADDRBWRADDR(8 downto 5) => addra(3 downto 0),
      ADDRBWRADDR(4 downto 0) => B"10000",
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 10) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO_UNCONNECTED\(15 downto 10),
      DOADO(9 downto 8) => douta(3 downto 2),
      DOADO(7 downto 2) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOADO_UNCONNECTED\(7 downto 2),
      DOADO(1 downto 0) => douta(1 downto 0),
      DOBDO(15 downto 10) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED\(15 downto 10),
      DOBDO(9 downto 8) => douta(7 downto 6),
      DOBDO(7 downto 2) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED\(7 downto 2),
      DOBDO(1 downto 0) => douta(5 downto 4),
      DOPADOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => rsta,
      RSTRAMB => rsta,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RCA_4b is
  port (
    \s_reg_reg[1]\ : out STD_LOGIC;
    carry_0 : out STD_LOGIC;
    \s_reg_reg[2]\ : out STD_LOGIC;
    \s_reg_reg[3]\ : out STD_LOGIC;
    \s_reg_reg[0]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_reg_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    carry_1 : in STD_LOGIC;
    carry_2 : in STD_LOGIC
  );
end RCA_4b;

architecture STRUCTURE of RCA_4b is
  signal \^carry_0\ : STD_LOGIC;
begin
  carry_0 <= \^carry_0\;
FA0: entity work.FA_19
     port map (
      Q(0) => Q(0),
      carry_0 => \^carry_0\,
      \s_reg_reg[0]\ => \s_reg_reg[0]\,
      \s_reg_reg[0]_0\(0) => \s_reg_reg[3]_0\(0)
    );
FA1: entity work.FA_20
     port map (
      Q(0) => Q(1),
      carry_0 => \^carry_0\,
      \s_reg_reg[1]\ => \s_reg_reg[1]\,
      \s_reg_reg[1]_0\(0) => \s_reg_reg[3]_0\(1)
    );
FA2: entity work.FA_21
     port map (
      Q(0) => Q(2),
      carry_1 => carry_1,
      \s_reg_reg[2]\ => \s_reg_reg[2]\,
      \s_reg_reg[2]_0\(0) => \s_reg_reg[3]_0\(2)
    );
FA3: entity work.FA_22
     port map (
      Q(0) => Q(3),
      carry_2 => carry_2,
      \s_reg_reg[3]\ => \s_reg_reg[3]\,
      \s_reg_reg[3]_0\(0) => \s_reg_reg[3]_0\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RCA_4b_0 is
  port (
    \s_reg_reg[16]\ : out STD_LOGIC;
    \s_reg_reg[17]\ : out STD_LOGIC;
    \s_reg_reg[18]\ : out STD_LOGIC;
    \s_reg_reg[19]\ : out STD_LOGIC;
    carry_0_3 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg_reg[19]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    carry_0_0 : in STD_LOGIC;
    carry_1_1 : in STD_LOGIC;
    carry_2_13 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RCA_4b_0 : entity is "RCA_4b";
end RCA_4b_0;

architecture STRUCTURE of RCA_4b_0 is
begin
FA0: entity work.FA_15
     port map (
      Q(0) => Q(0),
      carry_0_3 => carry_0_3,
      \s_reg_reg[16]\ => \s_reg_reg[16]\,
      \s_reg_reg[16]_0\(0) => \s_reg_reg[19]_0\(0)
    );
FA1: entity work.FA_16
     port map (
      Q(0) => Q(0),
      carry_0_0 => carry_0_0,
      \s_reg_reg[17]\ => \s_reg_reg[17]\,
      \s_reg_reg[17]_0\(0) => \s_reg_reg[19]_0\(1)
    );
FA2: entity work.FA_17
     port map (
      Q(0) => Q(0),
      carry_1_1 => carry_1_1,
      \s_reg_reg[18]\ => \s_reg_reg[18]\,
      \s_reg_reg[18]_0\(0) => \s_reg_reg[19]_0\(2)
    );
FA3: entity work.FA_18
     port map (
      Q(0) => Q(0),
      carry_2_13 => carry_2_13,
      \s_reg_reg[19]\ => \s_reg_reg[19]\,
      \s_reg_reg[19]_0\(0) => \s_reg_reg[19]_0\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RCA_4b_1 is
  port (
    \s_reg_reg[4]\ : out STD_LOGIC;
    \s_reg_reg[5]\ : out STD_LOGIC;
    \s_reg_reg[6]\ : out STD_LOGIC;
    \s_reg_reg[7]\ : out STD_LOGIC;
    carry_0_0_2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_reg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    carry_0_4 : in STD_LOGIC;
    carry_1_5 : in STD_LOGIC;
    carry_2_6 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RCA_4b_1 : entity is "RCA_4b";
end RCA_4b_1;

architecture STRUCTURE of RCA_4b_1 is
begin
FA0: entity work.FA_11
     port map (
      Q(0) => Q(0),
      carry_0_0_2 => carry_0_0_2,
      \s_reg_reg[4]\ => \s_reg_reg[4]\,
      \s_reg_reg[4]_0\(0) => \s_reg_reg[7]_0\(0)
    );
FA1: entity work.FA_12
     port map (
      Q(0) => Q(1),
      carry_0_4 => carry_0_4,
      \s_reg_reg[5]\ => \s_reg_reg[5]\,
      \s_reg_reg[5]_0\(0) => \s_reg_reg[7]_0\(1)
    );
FA2: entity work.FA_13
     port map (
      Q(0) => Q(2),
      carry_1_5 => carry_1_5,
      \s_reg_reg[6]\ => \s_reg_reg[6]\,
      \s_reg_reg[6]_0\(0) => \s_reg_reg[7]_0\(2)
    );
FA3: entity work.FA_14
     port map (
      Q(0) => Q(3),
      carry_2_6 => carry_2_6,
      \s_reg_reg[7]\ => \s_reg_reg[7]\,
      \s_reg_reg[7]_0\(0) => \s_reg_reg[7]_0\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RCA_4b_2 is
  port (
    \s_reg_reg[8]\ : out STD_LOGIC;
    \s_reg_reg[9]\ : out STD_LOGIC;
    \s_reg_reg[10]\ : out STD_LOGIC;
    \s_reg_reg[11]\ : out STD_LOGIC;
    carry_0_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_reg_reg[11]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    carry_0_7 : in STD_LOGIC;
    carry_1_8 : in STD_LOGIC;
    carry_2_9 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RCA_4b_2 : entity is "RCA_4b";
end RCA_4b_2;

architecture STRUCTURE of RCA_4b_2 is
begin
FA0: entity work.FA_7
     port map (
      Q(0) => Q(0),
      carry_0_1 => carry_0_1,
      \s_reg_reg[8]\ => \s_reg_reg[8]\,
      \s_reg_reg[8]_0\(0) => \s_reg_reg[11]_0\(0)
    );
FA1: entity work.FA_8
     port map (
      Q(0) => Q(1),
      carry_0_7 => carry_0_7,
      \s_reg_reg[9]\ => \s_reg_reg[9]\,
      \s_reg_reg[9]_0\(0) => \s_reg_reg[11]_0\(1)
    );
FA2: entity work.FA_9
     port map (
      Q(0) => Q(2),
      carry_1_8 => carry_1_8,
      \s_reg_reg[10]\ => \s_reg_reg[10]\,
      \s_reg_reg[10]_0\(0) => \s_reg_reg[11]_0\(2)
    );
FA3: entity work.FA_10
     port map (
      Q(0) => Q(3),
      carry_2_9 => carry_2_9,
      \s_reg_reg[11]\ => \s_reg_reg[11]\,
      \s_reg_reg[11]_0\(0) => \s_reg_reg[11]_0\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RCA_4b_3 is
  port (
    \s_reg_reg[12]\ : out STD_LOGIC;
    \s_reg_reg[13]\ : out STD_LOGIC;
    \s_reg_reg[14]\ : out STD_LOGIC;
    \s_reg_reg[15]\ : out STD_LOGIC;
    carry_0_2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_reg_reg[15]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    carry_0_10 : in STD_LOGIC;
    carry_1_11 : in STD_LOGIC;
    carry_2_12 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RCA_4b_3 : entity is "RCA_4b";
end RCA_4b_3;

architecture STRUCTURE of RCA_4b_3 is
begin
FA0: entity work.FA
     port map (
      Q(0) => Q(0),
      carry_0_2 => carry_0_2,
      \s_reg_reg[12]\ => \s_reg_reg[12]\,
      \s_reg_reg[12]_0\(0) => \s_reg_reg[15]_0\(0)
    );
FA1: entity work.FA_4
     port map (
      Q(0) => Q(1),
      carry_0_10 => carry_0_10,
      \s_reg_reg[13]\ => \s_reg_reg[13]\,
      \s_reg_reg[13]_0\(0) => \s_reg_reg[15]_0\(1)
    );
FA2: entity work.FA_5
     port map (
      Q(0) => Q(2),
      carry_1_11 => carry_1_11,
      \s_reg_reg[14]\ => \s_reg_reg[14]\,
      \s_reg_reg[14]_0\(0) => \s_reg_reg[15]_0\(2)
    );
FA3: entity work.FA_6
     port map (
      Q(0) => Q(3),
      carry_2_12 => carry_2_12,
      \s_reg_reg[15]\ => \s_reg_reg[15]\,
      \s_reg_reg[15]_0\(0) => \s_reg_reg[15]_0\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_77_MHz is
  port (
    clk_out1 : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
end clk_77_MHz;

architecture STRUCTURE of clk_77_MHz is
begin
inst: entity work.\clk_77_MHz__clk_77_MHz_clk_wiz\
     port map (
      clk_in1 => clk_in1,
      clk_out1 => clk_out1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ROM_weights_a21__blk_mem_gen_prim_width\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ROM_weights_a21__blk_mem_gen_prim_width\ : entity is "blk_mem_gen_prim_width";
end \ROM_weights_a21__blk_mem_gen_prim_width\;

architecture STRUCTURE of \ROM_weights_a21__blk_mem_gen_prim_width\ is
begin
\prim_init.ram\: entity work.\ROM_weights_a21__blk_mem_gen_prim_wrapper_init\
     port map (
      addra(3 downto 0) => addra(3 downto 0),
      clka => clka,
      douta(7 downto 0) => douta(7 downto 0),
      rsta => rsta
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CSA is
  port (
    \s_reg_reg[1]\ : out STD_LOGIC;
    carry_0 : out STD_LOGIC;
    \s_reg_reg[2]\ : out STD_LOGIC;
    \s_reg_reg[3]\ : out STD_LOGIC;
    \s_reg_reg[16]\ : out STD_LOGIC;
    \s_reg_reg[17]\ : out STD_LOGIC;
    \s_reg_reg[18]\ : out STD_LOGIC;
    \s_reg_reg[4]\ : out STD_LOGIC;
    \s_reg_reg[5]\ : out STD_LOGIC;
    \s_reg_reg[6]\ : out STD_LOGIC;
    \s_reg_reg[7]\ : out STD_LOGIC;
    \s_reg_reg[8]\ : out STD_LOGIC;
    \s_reg_reg[9]\ : out STD_LOGIC;
    \s_reg_reg[10]\ : out STD_LOGIC;
    \s_reg_reg[11]\ : out STD_LOGIC;
    \s_reg_reg[12]\ : out STD_LOGIC;
    \s_reg_reg[13]\ : out STD_LOGIC;
    \s_reg_reg[14]\ : out STD_LOGIC;
    \s_reg_reg[15]\ : out STD_LOGIC;
    \s_reg_reg[0]\ : out STD_LOGIC;
    \s_reg_reg[19]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \s_reg_reg[19]_0\ : in STD_LOGIC_VECTOR ( 19 downto 0 );
    carry_1 : in STD_LOGIC;
    carry_2 : in STD_LOGIC;
    carry_0_3 : in STD_LOGIC;
    carry_0_0 : in STD_LOGIC;
    carry_1_1 : in STD_LOGIC;
    carry_0_0_2 : in STD_LOGIC;
    carry_0_4 : in STD_LOGIC;
    carry_1_5 : in STD_LOGIC;
    carry_2_6 : in STD_LOGIC;
    carry_0_1 : in STD_LOGIC;
    carry_0_7 : in STD_LOGIC;
    carry_1_8 : in STD_LOGIC;
    carry_2_9 : in STD_LOGIC;
    carry_0_2 : in STD_LOGIC;
    carry_0_10 : in STD_LOGIC;
    carry_1_11 : in STD_LOGIC;
    carry_2_12 : in STD_LOGIC;
    carry_2_13 : in STD_LOGIC
  );
end CSA;

architecture STRUCTURE of CSA is
begin
RCA_03_0: entity work.RCA_4b
     port map (
      Q(3 downto 0) => Q(3 downto 0),
      carry_0 => carry_0,
      carry_1 => carry_1,
      carry_2 => carry_2,
      \s_reg_reg[0]\ => \s_reg_reg[0]\,
      \s_reg_reg[1]\ => \s_reg_reg[1]\,
      \s_reg_reg[2]\ => \s_reg_reg[2]\,
      \s_reg_reg[3]\ => \s_reg_reg[3]\,
      \s_reg_reg[3]_0\(3 downto 0) => \s_reg_reg[19]_0\(3 downto 0)
    );
RCA_N4N1_0: entity work.RCA_4b_0
     port map (
      Q(0) => Q(15),
      carry_0_0 => carry_0_0,
      carry_0_3 => carry_0_3,
      carry_1_1 => carry_1_1,
      carry_2_13 => carry_2_13,
      \s_reg_reg[16]\ => \s_reg_reg[16]\,
      \s_reg_reg[17]\ => \s_reg_reg[17]\,
      \s_reg_reg[18]\ => \s_reg_reg[18]\,
      \s_reg_reg[19]\ => \s_reg_reg[19]\,
      \s_reg_reg[19]_0\(3 downto 0) => \s_reg_reg[19]_0\(19 downto 16)
    );
\gen_stage[1].RCA_X_0\: entity work.RCA_4b_1
     port map (
      Q(3 downto 0) => Q(7 downto 4),
      carry_0_0_2 => carry_0_0_2,
      carry_0_4 => carry_0_4,
      carry_1_5 => carry_1_5,
      carry_2_6 => carry_2_6,
      \s_reg_reg[4]\ => \s_reg_reg[4]\,
      \s_reg_reg[5]\ => \s_reg_reg[5]\,
      \s_reg_reg[6]\ => \s_reg_reg[6]\,
      \s_reg_reg[7]\ => \s_reg_reg[7]\,
      \s_reg_reg[7]_0\(3 downto 0) => \s_reg_reg[19]_0\(7 downto 4)
    );
\gen_stage[2].RCA_X_0\: entity work.RCA_4b_2
     port map (
      Q(3 downto 0) => Q(11 downto 8),
      carry_0_1 => carry_0_1,
      carry_0_7 => carry_0_7,
      carry_1_8 => carry_1_8,
      carry_2_9 => carry_2_9,
      \s_reg_reg[10]\ => \s_reg_reg[10]\,
      \s_reg_reg[11]\ => \s_reg_reg[11]\,
      \s_reg_reg[11]_0\(3 downto 0) => \s_reg_reg[19]_0\(11 downto 8),
      \s_reg_reg[8]\ => \s_reg_reg[8]\,
      \s_reg_reg[9]\ => \s_reg_reg[9]\
    );
\gen_stage[3].RCA_X_0\: entity work.RCA_4b_3
     port map (
      Q(3 downto 0) => Q(15 downto 12),
      carry_0_10 => carry_0_10,
      carry_0_2 => carry_0_2,
      carry_1_11 => carry_1_11,
      carry_2_12 => carry_2_12,
      \s_reg_reg[12]\ => \s_reg_reg[12]\,
      \s_reg_reg[13]\ => \s_reg_reg[13]\,
      \s_reg_reg[14]\ => \s_reg_reg[14]\,
      \s_reg_reg[15]\ => \s_reg_reg[15]\,
      \s_reg_reg[15]_0\(3 downto 0) => \s_reg_reg[19]_0\(15 downto 12)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ROM_weights_a21__blk_mem_gen_generic_cstr\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ROM_weights_a21__blk_mem_gen_generic_cstr\ : entity is "blk_mem_gen_generic_cstr";
end \ROM_weights_a21__blk_mem_gen_generic_cstr\;

architecture STRUCTURE of \ROM_weights_a21__blk_mem_gen_generic_cstr\ is
begin
\ramloop[0].ram.r\: entity work.\ROM_weights_a21__blk_mem_gen_prim_width\
     port map (
      addra(3 downto 0) => addra(3 downto 0),
      clka => clka,
      douta(7 downto 0) => douta(7 downto 0),
      rsta => rsta
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ROM_weights_a21__blk_mem_gen_top\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ROM_weights_a21__blk_mem_gen_top\ : entity is "blk_mem_gen_top";
end \ROM_weights_a21__blk_mem_gen_top\;

architecture STRUCTURE of \ROM_weights_a21__blk_mem_gen_top\ is
begin
\valid.cstr\: entity work.\ROM_weights_a21__blk_mem_gen_generic_cstr\
     port map (
      addra(3 downto 0) => addra(3 downto 0),
      clka => clka,
      douta(7 downto 0) => douta(7 downto 0),
      rsta => rsta
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ROM_weights_a21__blk_mem_gen_v8_4_1_synth\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ROM_weights_a21__blk_mem_gen_v8_4_1_synth\ : entity is "blk_mem_gen_v8_4_1_synth";
end \ROM_weights_a21__blk_mem_gen_v8_4_1_synth\;

architecture STRUCTURE of \ROM_weights_a21__blk_mem_gen_v8_4_1_synth\ is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.\ROM_weights_a21__blk_mem_gen_top\
     port map (
      addra(3 downto 0) => addra(3 downto 0),
      clka => clka,
      douta(7 downto 0) => douta(7 downto 0),
      rsta => rsta
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ROM_weights_a21__blk_mem_gen_v8_4_1\ is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 4;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 4;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is "0";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is "Estimated Power for IP     :     2.3768 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 1;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is "ROM_weights_a21.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is "ROM_weights_a21.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 16;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 16;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 8;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 8;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 16;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 16;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 8;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is 8;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is "artix7";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is "blk_mem_gen_v8_4_1";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \ROM_weights_a21__blk_mem_gen_v8_4_1\ : entity is "yes";
end \ROM_weights_a21__blk_mem_gen_v8_4_1\;

architecture STRUCTURE of \ROM_weights_a21__blk_mem_gen_v8_4_1\ is
begin
  dbiterr <= 'Z';
  rsta_busy <= 'Z';
  rstb_busy <= 'Z';
  s_axi_arready <= 'Z';
  s_axi_awready <= 'Z';
  s_axi_bvalid <= 'Z';
  s_axi_dbiterr <= 'Z';
  s_axi_rlast <= 'Z';
  s_axi_rvalid <= 'Z';
  s_axi_sbiterr <= 'Z';
  s_axi_wready <= 'Z';
  sbiterr <= 'Z';
  doutb(0) <= 'Z';
  doutb(1) <= 'Z';
  doutb(2) <= 'Z';
  doutb(3) <= 'Z';
  doutb(4) <= 'Z';
  doutb(5) <= 'Z';
  doutb(6) <= 'Z';
  doutb(7) <= 'Z';
  rdaddrecc(0) <= 'Z';
  rdaddrecc(1) <= 'Z';
  rdaddrecc(2) <= 'Z';
  rdaddrecc(3) <= 'Z';
  s_axi_bid(0) <= 'Z';
  s_axi_bid(1) <= 'Z';
  s_axi_bid(2) <= 'Z';
  s_axi_bid(3) <= 'Z';
  s_axi_bresp(0) <= 'Z';
  s_axi_bresp(1) <= 'Z';
  s_axi_rdaddrecc(0) <= 'Z';
  s_axi_rdaddrecc(1) <= 'Z';
  s_axi_rdaddrecc(2) <= 'Z';
  s_axi_rdaddrecc(3) <= 'Z';
  s_axi_rdata(0) <= 'Z';
  s_axi_rdata(1) <= 'Z';
  s_axi_rdata(2) <= 'Z';
  s_axi_rdata(3) <= 'Z';
  s_axi_rdata(4) <= 'Z';
  s_axi_rdata(5) <= 'Z';
  s_axi_rdata(6) <= 'Z';
  s_axi_rdata(7) <= 'Z';
  s_axi_rid(0) <= 'Z';
  s_axi_rid(1) <= 'Z';
  s_axi_rid(2) <= 'Z';
  s_axi_rid(3) <= 'Z';
  s_axi_rresp(0) <= 'Z';
  s_axi_rresp(1) <= 'Z';
inst_blk_mem_gen: entity work.\ROM_weights_a21__blk_mem_gen_v8_4_1_synth\
     port map (
      addra(3 downto 0) => addra(3 downto 0),
      clka => clka,
      douta(7 downto 0) => douta(7 downto 0),
      rsta => rsta
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ROM_weights_a21 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ROM_weights_a21 : entity is "ROM_weights_a21,blk_mem_gen_v8_4_1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ROM_weights_a21 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of ROM_weights_a21 : entity is "blk_mem_gen_v8_4_1,Vivado 2018.2";
end ROM_weights_a21;

architecture STRUCTURE of ROM_weights_a21 is
  signal NLW_U0_clkb_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_deepsleep_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_eccpipece_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_enb_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_regcea_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_regceb_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_aclk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_aresetn_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_shutdown_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sleep_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_addrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_dina_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_dinb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_s_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wea_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_web_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 4;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 4;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "0";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     2.3768 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 1;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "ROM_weights_a21.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "ROM_weights_a21.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 16;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 16;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 8;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 8;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 16;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 16;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 8;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 8;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER";
  attribute x_interface_info of rsta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA RST";
  attribute x_interface_info of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
begin
U0: entity work.\ROM_weights_a21__blk_mem_gen_v8_4_1\
     port map (
      addra(3 downto 0) => addra(3 downto 0),
      addrb(3 downto 0) => NLW_U0_addrb_UNCONNECTED(3 downto 0),
      clka => clka,
      clkb => NLW_U0_clkb_UNCONNECTED,
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => NLW_U0_deepsleep_UNCONNECTED,
      dina(7 downto 0) => NLW_U0_dina_UNCONNECTED(7 downto 0),
      dinb(7 downto 0) => NLW_U0_dinb_UNCONNECTED(7 downto 0),
      douta(7 downto 0) => douta(7 downto 0),
      doutb(7 downto 0) => NLW_U0_doutb_UNCONNECTED(7 downto 0),
      eccpipece => NLW_U0_eccpipece_UNCONNECTED,
      ena => NLW_U0_ena_UNCONNECTED,
      enb => NLW_U0_enb_UNCONNECTED,
      injectdbiterr => NLW_U0_injectdbiterr_UNCONNECTED,
      injectsbiterr => NLW_U0_injectsbiterr_UNCONNECTED,
      rdaddrecc(3 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(3 downto 0),
      regcea => NLW_U0_regcea_UNCONNECTED,
      regceb => NLW_U0_regceb_UNCONNECTED,
      rsta => rsta,
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => NLW_U0_rstb_UNCONNECTED,
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => NLW_U0_s_aclk_UNCONNECTED,
      s_aresetn => NLW_U0_s_aresetn_UNCONNECTED,
      s_axi_araddr(31 downto 0) => NLW_U0_s_axi_araddr_UNCONNECTED(31 downto 0),
      s_axi_arburst(1 downto 0) => NLW_U0_s_axi_arburst_UNCONNECTED(1 downto 0),
      s_axi_arid(3 downto 0) => NLW_U0_s_axi_arid_UNCONNECTED(3 downto 0),
      s_axi_arlen(7 downto 0) => NLW_U0_s_axi_arlen_UNCONNECTED(7 downto 0),
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => NLW_U0_s_axi_arsize_UNCONNECTED(2 downto 0),
      s_axi_arvalid => NLW_U0_s_axi_arvalid_UNCONNECTED,
      s_axi_awaddr(31 downto 0) => NLW_U0_s_axi_awaddr_UNCONNECTED(31 downto 0),
      s_axi_awburst(1 downto 0) => NLW_U0_s_axi_awburst_UNCONNECTED(1 downto 0),
      s_axi_awid(3 downto 0) => NLW_U0_s_axi_awid_UNCONNECTED(3 downto 0),
      s_axi_awlen(7 downto 0) => NLW_U0_s_axi_awlen_UNCONNECTED(7 downto 0),
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => NLW_U0_s_axi_awsize_UNCONNECTED(2 downto 0),
      s_axi_awvalid => NLW_U0_s_axi_awvalid_UNCONNECTED,
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => NLW_U0_s_axi_bready_UNCONNECTED,
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => NLW_U0_s_axi_injectdbiterr_UNCONNECTED,
      s_axi_injectsbiterr => NLW_U0_s_axi_injectsbiterr_UNCONNECTED,
      s_axi_rdaddrecc(3 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(3 downto 0),
      s_axi_rdata(7 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(7 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => NLW_U0_s_axi_rready_UNCONNECTED,
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(7 downto 0) => NLW_U0_s_axi_wdata_UNCONNECTED(7 downto 0),
      s_axi_wlast => NLW_U0_s_axi_wlast_UNCONNECTED,
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => NLW_U0_s_axi_wstrb_UNCONNECTED(0),
      s_axi_wvalid => NLW_U0_s_axi_wvalid_UNCONNECTED,
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => NLW_U0_shutdown_UNCONNECTED,
      sleep => NLW_U0_sleep_UNCONNECTED,
      wea(0) => NLW_U0_wea_UNCONNECTED(0),
      web(0) => NLW_U0_web_UNCONNECTED(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Artificial_Neuron_a21 is
  port (
    \middle_result_reg_reg[6]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out_OBUF : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    finish : out STD_LOGIC;
    \middle_result_reg_reg[4]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \middle_result_reg_reg[0]\ : out STD_LOGIC;
    \middle_result_reg_reg[3]\ : out STD_LOGIC;
    \middle_result_reg_reg[5]\ : out STD_LOGIC;
    \middle_result_reg_reg[6]_0\ : out STD_LOGIC;
    start_IBUF : in STD_LOGIC;
    clk_out1 : in STD_LOGIC;
    reset : in STD_LOGIC;
    data_in_IBUF : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end Artificial_Neuron_a21;

architecture STRUCTURE of Artificial_Neuron_a21 is
  signal CSAdd_n_0 : STD_LOGIC;
  signal CSAdd_n_10 : STD_LOGIC;
  signal CSAdd_n_11 : STD_LOGIC;
  signal CSAdd_n_12 : STD_LOGIC;
  signal CSAdd_n_13 : STD_LOGIC;
  signal CSAdd_n_14 : STD_LOGIC;
  signal CSAdd_n_15 : STD_LOGIC;
  signal CSAdd_n_16 : STD_LOGIC;
  signal CSAdd_n_17 : STD_LOGIC;
  signal CSAdd_n_18 : STD_LOGIC;
  signal CSAdd_n_19 : STD_LOGIC;
  signal CSAdd_n_2 : STD_LOGIC;
  signal CSAdd_n_20 : STD_LOGIC;
  signal CSAdd_n_3 : STD_LOGIC;
  signal CSAdd_n_4 : STD_LOGIC;
  signal CSAdd_n_5 : STD_LOGIC;
  signal CSAdd_n_6 : STD_LOGIC;
  signal CSAdd_n_7 : STD_LOGIC;
  signal CSAdd_n_8 : STD_LOGIC;
  signal CSAdd_n_9 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \RCA_03_0/carry_0\ : STD_LOGIC;
  signal \RCA_03_0/carry_1\ : STD_LOGIC;
  signal \RCA_03_0/carry_2\ : STD_LOGIC;
  signal \RCA_N4N1_0/carry_0\ : STD_LOGIC;
  signal \RCA_N4N1_0/carry_1\ : STD_LOGIC;
  signal \RCA_N4N1_0/carry_2\ : STD_LOGIC;
  signal address_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal address_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \address_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal carry_0_0 : STD_LOGIC;
  signal carry_0_1 : STD_LOGIC;
  signal carry_0_2 : STD_LOGIC;
  signal carry_0_3 : STD_LOGIC;
  signal count_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal count_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal data_out_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal data_out_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal data_out_OBUF_inst_i_4_n_0 : STD_LOGIC;
  signal douta : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \final_result_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \final_result_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \final_result_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \final_result_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \final_result_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \final_result_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \final_result_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \final_result_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \final_result_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \final_result_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal finished_next : STD_LOGIC;
  signal \gen_stage[1].RCA_X_0/carry_0\ : STD_LOGIC;
  signal \gen_stage[1].RCA_X_0/carry_1\ : STD_LOGIC;
  signal \gen_stage[1].RCA_X_0/carry_2\ : STD_LOGIC;
  signal \gen_stage[2].RCA_X_0/carry_0\ : STD_LOGIC;
  signal \gen_stage[2].RCA_X_0/carry_1\ : STD_LOGIC;
  signal \gen_stage[2].RCA_X_0/carry_2\ : STD_LOGIC;
  signal \gen_stage[3].RCA_X_0/carry_0\ : STD_LOGIC;
  signal \gen_stage[3].RCA_X_0/carry_1\ : STD_LOGIC;
  signal \gen_stage[3].RCA_X_0/carry_2\ : STD_LOGIC;
  signal input_next : STD_LOGIC_VECTOR ( 3 to 3 );
  signal input_next_next : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \input_next_next[3]_i_2_n_0\ : STD_LOGIC;
  signal input_next_next_next : STD_LOGIC_VECTOR ( 3 to 3 );
  signal input_reg : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \middle_result_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \middle_result_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \^middle_result_reg_reg[6]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_4_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_next : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \p_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__0_n_102\ : STD_LOGIC;
  signal \plusOp__0_n_103\ : STD_LOGIC;
  signal \plusOp__0_n_104\ : STD_LOGIC;
  signal \plusOp__0_n_105\ : STD_LOGIC;
  signal plusOp_n_102 : STD_LOGIC;
  signal plusOp_n_103 : STD_LOGIC;
  signal plusOp_n_104 : STD_LOGIC;
  signal plusOp_n_105 : STD_LOGIC;
  signal s_next : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal \s_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \s_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal started_reg : STD_LOGIC;
  signal started_reg_i_1_n_0 : STD_LOGIC;
  signal weight_next : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal weight_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_plusOp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_plusOp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_plusOp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_plusOp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_plusOp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_plusOp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_plusOp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_plusOp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_plusOp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_plusOp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 4 );
  signal NLW_plusOp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_plusOp__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_plusOp__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_plusOp__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp__0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 4 );
  signal \NLW_plusOp__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute USE_DSP : string;
  attribute USE_DSP of ROM : label is "yes";
  attribute syn_black_box : string;
  attribute syn_black_box of ROM : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of ROM : label is "blk_mem_gen_v8_4_1,Vivado 2018.2";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \address_reg[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \address_reg[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \address_reg[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \address_reg[3]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count_reg[3]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \input_next_next[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \middle_result_reg[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \middle_result_reg[4]_i_1\ : label is "soft_lutpair16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of plusOp : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \plusOp__0\ : label is "{SYNTH-13 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \s_reg[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_reg[10]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_reg[11]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_reg[13]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_reg[14]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_reg[15]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_reg[16]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_reg[17]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_reg[18]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_reg[19]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_reg[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_reg[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_reg[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_reg[4]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_reg[5]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_reg[6]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_reg[7]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_reg[8]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_reg[9]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \weight_reg[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \weight_reg[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \weight_reg[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \weight_reg[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \weight_reg[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \weight_reg[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \weight_reg[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \weight_reg[7]_i_1\ : label is "soft_lutpair9";
begin
  Q(0) <= \^q\(0);
  \middle_result_reg_reg[6]\ <= \^middle_result_reg_reg[6]\;
CSAdd: entity work.CSA
     port map (
      Q(15 downto 0) => p_reg(15 downto 0),
      carry_0 => \RCA_03_0/carry_0\,
      carry_0_0 => \RCA_N4N1_0/carry_0\,
      carry_0_0_2 => carry_0_0,
      carry_0_1 => carry_0_1,
      carry_0_10 => \gen_stage[3].RCA_X_0/carry_0\,
      carry_0_2 => carry_0_2,
      carry_0_3 => carry_0_3,
      carry_0_4 => \gen_stage[1].RCA_X_0/carry_0\,
      carry_0_7 => \gen_stage[2].RCA_X_0/carry_0\,
      carry_1 => \RCA_03_0/carry_1\,
      carry_1_1 => \RCA_N4N1_0/carry_1\,
      carry_1_11 => \gen_stage[3].RCA_X_0/carry_1\,
      carry_1_5 => \gen_stage[1].RCA_X_0/carry_1\,
      carry_1_8 => \gen_stage[2].RCA_X_0/carry_1\,
      carry_2 => \RCA_03_0/carry_2\,
      carry_2_12 => \gen_stage[3].RCA_X_0/carry_2\,
      carry_2_13 => \RCA_N4N1_0/carry_2\,
      carry_2_6 => \gen_stage[1].RCA_X_0/carry_2\,
      carry_2_9 => \gen_stage[2].RCA_X_0/carry_2\,
      \s_reg_reg[0]\ => CSAdd_n_19,
      \s_reg_reg[10]\ => CSAdd_n_13,
      \s_reg_reg[11]\ => CSAdd_n_14,
      \s_reg_reg[12]\ => CSAdd_n_15,
      \s_reg_reg[13]\ => CSAdd_n_16,
      \s_reg_reg[14]\ => CSAdd_n_17,
      \s_reg_reg[15]\ => CSAdd_n_18,
      \s_reg_reg[16]\ => CSAdd_n_4,
      \s_reg_reg[17]\ => CSAdd_n_5,
      \s_reg_reg[18]\ => CSAdd_n_6,
      \s_reg_reg[19]\ => CSAdd_n_20,
      \s_reg_reg[19]_0\(19) => \^q\(0),
      \s_reg_reg[19]_0\(18 downto 10) => p_0_in(8 downto 0),
      \s_reg_reg[19]_0\(9 downto 4) => p_4_in(5 downto 0),
      \s_reg_reg[19]_0\(3) => \s_reg_reg_n_0_[3]\,
      \s_reg_reg[19]_0\(2) => \s_reg_reg_n_0_[2]\,
      \s_reg_reg[19]_0\(1) => \s_reg_reg_n_0_[1]\,
      \s_reg_reg[19]_0\(0) => \s_reg_reg_n_0_[0]\,
      \s_reg_reg[1]\ => CSAdd_n_0,
      \s_reg_reg[2]\ => CSAdd_n_2,
      \s_reg_reg[3]\ => CSAdd_n_3,
      \s_reg_reg[4]\ => CSAdd_n_7,
      \s_reg_reg[5]\ => CSAdd_n_8,
      \s_reg_reg[6]\ => CSAdd_n_9,
      \s_reg_reg[7]\ => CSAdd_n_10,
      \s_reg_reg[8]\ => CSAdd_n_11,
      \s_reg_reg[9]\ => CSAdd_n_12
    );
DADDA: entity work.dadda_multi
     port map (
      D(15 downto 0) => p_next(15 downto 0),
      Q(7 downto 0) => weight_reg(7 downto 0),
      input_reg(0) => input_reg(3),
      start_IBUF => start_IBUF,
      started_reg_reg => \p_reg[15]_i_3_n_0\
    );
ROM: entity work.ROM_weights_a21
     port map (
      addra(3 downto 0) => address_reg(3 downto 0),
      clka => clk_out1,
      douta(7 downto 0) => douta(7 downto 0),
      rsta => reset
    );
\address_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \plusOp__0_n_105\,
      I1 => start_IBUF,
      O => address_next(0)
    );
\address_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \plusOp__0_n_104\,
      I1 => start_IBUF,
      O => address_next(1)
    );
\address_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \plusOp__0_n_103\,
      I1 => start_IBUF,
      O => address_next(2)
    );
\address_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01110000"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(3),
      I2 => count_reg(0),
      I3 => count_reg(1),
      I4 => started_reg,
      I5 => start_IBUF,
      O => \address_reg[3]_i_1_n_0\
    );
\address_reg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \plusOp__0_n_102\,
      I1 => start_IBUF,
      O => address_next(3)
    );
\address_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \address_reg[3]_i_1_n_0\,
      CLR => reset,
      D => address_next(0),
      Q => address_reg(0)
    );
\address_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \address_reg[3]_i_1_n_0\,
      CLR => reset,
      D => address_next(1),
      Q => address_reg(1)
    );
\address_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \address_reg[3]_i_1_n_0\,
      CLR => reset,
      D => address_next(2),
      Q => address_reg(2)
    );
\address_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \address_reg[3]_i_1_n_0\,
      CLR => reset,
      D => address_next(3),
      Q => address_reg(3)
    );
\count_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => plusOp_n_105,
      I1 => start_IBUF,
      O => count_next(0)
    );
\count_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_n_104,
      I1 => start_IBUF,
      O => count_next(1)
    );
\count_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_n_103,
      I1 => start_IBUF,
      O => count_next(2)
    );
\count_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF04444444"
    )
        port map (
      I0 => count_reg(3),
      I1 => started_reg,
      I2 => count_reg(2),
      I3 => count_reg(1),
      I4 => count_reg(0),
      I5 => start_IBUF,
      O => \count_reg[3]_i_1_n_0\
    );
\count_reg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => plusOp_n_102,
      I1 => start_IBUF,
      O => count_next(3)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \count_reg[3]_i_1_n_0\,
      CLR => reset,
      D => count_next(0),
      Q => count_reg(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \count_reg[3]_i_1_n_0\,
      CLR => reset,
      D => count_next(1),
      Q => count_reg(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \count_reg[3]_i_1_n_0\,
      CLR => reset,
      D => count_next(2),
      Q => count_reg(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \count_reg[3]_i_1_n_0\,
      CLR => reset,
      D => count_next(3),
      Q => count_reg(3)
    );
data_out_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8000FFFF"
    )
        port map (
      I0 => p_4_in(0),
      I1 => p_4_in(1),
      I2 => p_4_in(2),
      I3 => data_out_OBUF_inst_i_2_n_0,
      I4 => \^q\(0),
      O => data_out_OBUF
    );
data_out_OBUF_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(2),
      I2 => p_0_in(8),
      I3 => data_out_OBUF_inst_i_3_n_0,
      I4 => \^q\(0),
      I5 => data_out_OBUF_inst_i_4_n_0,
      O => data_out_OBUF_inst_i_2_n_0
    );
data_out_OBUF_inst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => p_0_in(7),
      I1 => p_0_in(5),
      I2 => p_0_in(4),
      I3 => p_0_in(1),
      I4 => p_0_in(6),
      I5 => p_0_in(3),
      O => data_out_OBUF_inst_i_3_n_0
    );
data_out_OBUF_inst_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => p_4_in(3),
      I1 => p_4_in(5),
      I2 => p_4_in(4),
      O => data_out_OBUF_inst_i_4_n_0
    );
\final_result_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"444F4444"
    )
        port map (
      I0 => \final_result_reg[0]_i_2_n_0\,
      I1 => \final_result_reg[2]_i_2_n_0\,
      I2 => \final_result_reg[0]_i_3_n_0\,
      I3 => \final_result_reg[0]_i_4_n_0\,
      I4 => \final_result_reg[0]_i_5_n_0\,
      O => D(0)
    );
\final_result_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555A955"
    )
        port map (
      I0 => p_4_in(1),
      I1 => \s_reg_reg_n_0_[2]\,
      I2 => \s_reg_reg_n_0_[3]\,
      I3 => p_4_in(0),
      I4 => p_4_in(2),
      I5 => p_4_in(3),
      O => \final_result_reg[0]_i_2_n_0\
    );
\final_result_reg[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => data_out_OBUF_inst_i_3_n_0,
      I2 => p_0_in(8),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      O => \final_result_reg[0]_i_3_n_0\
    );
\final_result_reg[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0000000E0F000"
    )
        port map (
      I0 => \s_reg_reg_n_0_[2]\,
      I1 => \s_reg_reg_n_0_[3]\,
      I2 => p_4_in(3),
      I3 => p_4_in(2),
      I4 => p_4_in(1),
      I5 => p_4_in(0),
      O => \final_result_reg[0]_i_4_n_0\
    );
\final_result_reg[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880008080"
    )
        port map (
      I0 => p_4_in(5),
      I1 => p_4_in(4),
      I2 => p_4_in(2),
      I3 => p_4_in(1),
      I4 => \final_result_reg[0]_i_6_n_0\,
      I5 => p_4_in(3),
      O => \final_result_reg[0]_i_5_n_0\
    );
\final_result_reg[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \s_reg_reg_n_0_[2]\,
      I1 => \s_reg_reg_n_0_[3]\,
      I2 => p_4_in(0),
      O => \final_result_reg[0]_i_6_n_0\
    );
\final_result_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B000FFFFB000B000"
    )
        port map (
      I0 => \final_result_reg[1]_i_2_n_0\,
      I1 => p_4_in(2),
      I2 => \final_result_reg[1]_i_3_n_0\,
      I3 => data_out_OBUF_inst_i_2_n_0,
      I4 => \final_result_reg[1]_i_4_n_0\,
      I5 => \final_result_reg[2]_i_2_n_0\,
      O => D(1)
    );
\final_result_reg[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => p_4_in(0),
      I1 => p_4_in(1),
      O => \final_result_reg[1]_i_2_n_0\
    );
\final_result_reg[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEF0F0"
    )
        port map (
      I0 => \s_reg_reg_n_0_[3]\,
      I1 => \s_reg_reg_n_0_[2]\,
      I2 => p_4_in(2),
      I3 => p_4_in(0),
      I4 => p_4_in(1),
      O => \final_result_reg[1]_i_3_n_0\
    );
\final_result_reg[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000777F"
    )
        port map (
      I0 => p_4_in(0),
      I1 => p_4_in(1),
      I2 => \s_reg_reg_n_0_[3]\,
      I3 => \s_reg_reg_n_0_[2]\,
      I4 => p_4_in(3),
      I5 => p_4_in(2),
      O => \final_result_reg[1]_i_4_n_0\
    );
\final_result_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAAA"
    )
        port map (
      I0 => \final_result_reg[2]_i_2_n_0\,
      I1 => data_out_OBUF_inst_i_2_n_0,
      I2 => p_4_in(2),
      I3 => p_4_in(1),
      I4 => p_4_in(0),
      O => D(2)
    );
\final_result_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^q\(0),
      I1 => p_0_in(8),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => \middle_result_reg[6]_i_3_n_0\,
      I5 => \final_result_reg[3]_i_2_n_0\,
      O => \final_result_reg[2]_i_2_n_0\
    );
\final_result_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => \final_result_reg[3]_i_2_n_0\,
      I1 => \middle_result_reg[6]_i_3_n_0\,
      I2 => p_0_in(2),
      I3 => p_0_in(0),
      I4 => p_0_in(8),
      I5 => \^q\(0),
      O => D(3)
    );
\final_result_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF800"
    )
        port map (
      I0 => p_4_in(1),
      I1 => p_4_in(0),
      I2 => p_4_in(2),
      I3 => p_4_in(3),
      I4 => p_4_in(5),
      I5 => p_4_in(4),
      O => \final_result_reg[3]_i_2_n_0\
    );
finished_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(3),
      I2 => count_reg(1),
      I3 => count_reg(0),
      I4 => started_reg,
      I5 => start_IBUF,
      O => finished_next
    );
finished_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => finished_next,
      Q => finish
    );
\input_next_next[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => count_reg(2),
      I1 => \input_next_next[3]_i_2_n_0\,
      I2 => start_IBUF,
      O => input_next_next_next(3)
    );
\input_next_next[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0022303300000000"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => count_reg(3),
      I2 => data_in_IBUF(1),
      I3 => count_reg(0),
      I4 => count_reg(1),
      I5 => started_reg,
      O => \input_next_next[3]_i_2_n_0\
    );
\input_next_next_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => input_next_next_next(3),
      Q => input_next_next(3)
    );
\input_next_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => input_next_next(3),
      Q => input_next(3)
    );
\input_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => input_next(3),
      Q => input_reg(3)
    );
\middle_result_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \middle_result_reg[4]_i_2_n_0\,
      I1 => \s_reg_reg_n_0_[2]\,
      I2 => \s_reg_reg_n_0_[3]\,
      O => \middle_result_reg_reg[0]\
    );
\middle_result_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \middle_result_reg[4]_i_2_n_0\,
      I1 => \^middle_result_reg_reg[6]\,
      I2 => p_4_in(0),
      O => \middle_result_reg_reg[4]\(0)
    );
\middle_result_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \middle_result_reg[4]_i_2_n_0\,
      I1 => \^middle_result_reg_reg[6]\,
      I2 => p_4_in(1),
      O => \middle_result_reg_reg[4]\(1)
    );
\middle_result_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_4_in(2),
      I1 => \middle_result_reg[4]_i_2_n_0\,
      O => \middle_result_reg_reg[3]\
    );
\middle_result_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \middle_result_reg[4]_i_2_n_0\,
      I1 => \^middle_result_reg_reg[6]\,
      I2 => p_4_in(3),
      O => \middle_result_reg_reg[4]\(2)
    );
\middle_result_reg[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAAAAAA"
    )
        port map (
      I0 => \^q\(0),
      I1 => data_out_OBUF_inst_i_3_n_0,
      I2 => p_0_in(8),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      O => \middle_result_reg[4]_i_2_n_0\
    );
\middle_result_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_4_in(4),
      I1 => \middle_result_reg[4]_i_2_n_0\,
      O => \middle_result_reg_reg[5]\
    );
\middle_result_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555554"
    )
        port map (
      I0 => \^q\(0),
      I1 => \middle_result_reg[6]_i_3_n_0\,
      I2 => p_0_in(2),
      I3 => p_0_in(0),
      I4 => p_0_in(8),
      O => \^middle_result_reg_reg[6]\
    );
\middle_result_reg[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_4_in(5),
      I1 => \middle_result_reg[4]_i_2_n_0\,
      O => \middle_result_reg_reg[6]_0\
    );
\middle_result_reg[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_0_in(7),
      I1 => p_0_in(5),
      I2 => p_0_in(4),
      I3 => p_0_in(1),
      I4 => p_0_in(6),
      I5 => p_0_in(3),
      O => \middle_result_reg[6]_i_3_n_0\
    );
\p_reg[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000037FF"
    )
        port map (
      I0 => started_reg,
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      I4 => count_reg(3),
      O => \p_reg[15]_i_3_n_0\
    );
\p_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => p_next(0),
      Q => p_reg(0)
    );
\p_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => p_next(10),
      Q => p_reg(10)
    );
\p_reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => p_next(11),
      Q => p_reg(11)
    );
\p_reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => p_next(12),
      Q => p_reg(12)
    );
\p_reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => p_next(13),
      Q => p_reg(13)
    );
\p_reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => p_next(14),
      Q => p_reg(14)
    );
\p_reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => p_next(15),
      Q => p_reg(15)
    );
\p_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => p_next(1),
      Q => p_reg(1)
    );
\p_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => p_next(2),
      Q => p_reg(2)
    );
\p_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => p_next(3),
      Q => p_reg(3)
    );
\p_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => p_next(4),
      Q => p_reg(4)
    );
\p_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => p_next(5),
      Q => p_reg(5)
    );
\p_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => p_next(6),
      Q => p_reg(6)
    );
\p_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => p_next(7),
      Q => p_reg(7)
    );
\p_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => p_next(8),
      Q => p_reg(8)
    );
\p_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => p_next(9),
      Q => p_reg(9)
    );
plusOp: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "NONE",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_plusOp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"111111111111111111",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_plusOp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 4) => B"00000000000000000000000000000000000000000000",
      C(3 downto 0) => count_reg(3 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_plusOp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '1',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_plusOp_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_plusOp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110000",
      OVERFLOW => NLW_plusOp_OVERFLOW_UNCONNECTED,
      P(47 downto 4) => NLW_plusOp_P_UNCONNECTED(47 downto 4),
      P(3) => plusOp_n_102,
      P(2) => plusOp_n_103,
      P(1) => plusOp_n_104,
      P(0) => plusOp_n_105,
      PATTERNBDETECT => NLW_plusOp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_plusOp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_plusOp_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_plusOp_UNDERFLOW_UNCONNECTED
    );
\plusOp__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "NONE",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"111111111111111111111111111111",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_plusOp__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"111111111111111111",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_plusOp__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 4) => B"00000000000000000000000000000000000000000000",
      C(3 downto 0) => address_reg(3 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_plusOp__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '1',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_plusOp__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_plusOp__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0110000",
      OVERFLOW => \NLW_plusOp__0_OVERFLOW_UNCONNECTED\,
      P(47 downto 4) => \NLW_plusOp__0_P_UNCONNECTED\(47 downto 4),
      P(3) => \plusOp__0_n_102\,
      P(2) => \plusOp__0_n_103\,
      P(1) => \plusOp__0_n_104\,
      P(0) => \plusOp__0_n_105\,
      PATTERNBDETECT => \NLW_plusOp__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_plusOp__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_plusOp__0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_plusOp__0_UNDERFLOW_UNCONNECTED\
    );
\s_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CSAdd_n_19,
      I1 => start_IBUF,
      O => \s_reg[0]_i_1_n_0\
    );
\s_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CSAdd_n_13,
      I1 => start_IBUF,
      O => \s_reg[10]_i_1_n_0\
    );
\s_reg[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gen_stage[2].RCA_X_0/carry_0\,
      I1 => p_4_in(5),
      I2 => p_reg(9),
      O => \gen_stage[2].RCA_X_0/carry_1\
    );
\s_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CSAdd_n_14,
      I1 => start_IBUF,
      O => \s_reg[11]_i_1_n_0\
    );
\s_reg[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gen_stage[2].RCA_X_0/carry_1\,
      I1 => p_0_in(0),
      I2 => p_reg(10),
      O => \gen_stage[2].RCA_X_0/carry_2\
    );
\s_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CSAdd_n_15,
      I1 => start_IBUF,
      O => \s_reg[12]_i_1_n_0\
    );
\s_reg[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gen_stage[2].RCA_X_0/carry_2\,
      I1 => p_0_in(1),
      I2 => p_reg(11),
      O => carry_0_2
    );
\s_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CSAdd_n_16,
      I1 => start_IBUF,
      O => \s_reg[13]_i_1_n_0\
    );
\s_reg[13]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => carry_0_2,
      I1 => p_0_in(2),
      I2 => p_reg(12),
      O => \gen_stage[3].RCA_X_0/carry_0\
    );
\s_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CSAdd_n_17,
      I1 => start_IBUF,
      O => \s_reg[14]_i_1_n_0\
    );
\s_reg[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gen_stage[3].RCA_X_0/carry_0\,
      I1 => p_0_in(3),
      I2 => p_reg(13),
      O => \gen_stage[3].RCA_X_0/carry_1\
    );
\s_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CSAdd_n_18,
      I1 => start_IBUF,
      O => \s_reg[15]_i_1_n_0\
    );
\s_reg[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gen_stage[3].RCA_X_0/carry_1\,
      I1 => p_0_in(4),
      I2 => p_reg(14),
      O => \gen_stage[3].RCA_X_0/carry_2\
    );
\s_reg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CSAdd_n_4,
      I1 => start_IBUF,
      O => s_next(16)
    );
\s_reg[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gen_stage[3].RCA_X_0/carry_2\,
      I1 => p_0_in(5),
      I2 => p_reg(15),
      O => carry_0_3
    );
\s_reg[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CSAdd_n_5,
      I1 => start_IBUF,
      O => s_next(17)
    );
\s_reg[17]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => carry_0_3,
      I1 => p_0_in(6),
      I2 => p_reg(15),
      O => \RCA_N4N1_0/carry_0\
    );
\s_reg[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CSAdd_n_6,
      I1 => start_IBUF,
      O => s_next(18)
    );
\s_reg[18]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \RCA_N4N1_0/carry_0\,
      I1 => p_0_in(7),
      I2 => p_reg(15),
      O => \RCA_N4N1_0/carry_1\
    );
\s_reg[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CSAdd_n_20,
      I1 => start_IBUF,
      O => s_next(19)
    );
\s_reg[19]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \RCA_N4N1_0/carry_1\,
      I1 => p_0_in(8),
      I2 => p_reg(15),
      O => \RCA_N4N1_0/carry_2\
    );
\s_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CSAdd_n_0,
      I1 => start_IBUF,
      O => \s_reg[1]_i_1_n_0\
    );
\s_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CSAdd_n_2,
      I1 => start_IBUF,
      O => \s_reg[2]_i_1_n_0\
    );
\s_reg[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \RCA_03_0/carry_0\,
      I1 => \s_reg_reg_n_0_[1]\,
      I2 => p_reg(1),
      O => \RCA_03_0/carry_1\
    );
\s_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CSAdd_n_3,
      I1 => start_IBUF,
      O => \s_reg[3]_i_1_n_0\
    );
\s_reg[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \RCA_03_0/carry_1\,
      I1 => \s_reg_reg_n_0_[2]\,
      I2 => p_reg(2),
      O => \RCA_03_0/carry_2\
    );
\s_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CSAdd_n_7,
      I1 => start_IBUF,
      O => \s_reg[4]_i_1_n_0\
    );
\s_reg[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \RCA_03_0/carry_2\,
      I1 => \s_reg_reg_n_0_[3]\,
      I2 => p_reg(3),
      O => carry_0_0
    );
\s_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CSAdd_n_8,
      I1 => start_IBUF,
      O => \s_reg[5]_i_1_n_0\
    );
\s_reg[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => carry_0_0,
      I1 => p_4_in(0),
      I2 => p_reg(4),
      O => \gen_stage[1].RCA_X_0/carry_0\
    );
\s_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CSAdd_n_9,
      I1 => start_IBUF,
      O => \s_reg[6]_i_1_n_0\
    );
\s_reg[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gen_stage[1].RCA_X_0/carry_0\,
      I1 => p_4_in(1),
      I2 => p_reg(5),
      O => \gen_stage[1].RCA_X_0/carry_1\
    );
\s_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CSAdd_n_10,
      I1 => start_IBUF,
      O => \s_reg[7]_i_1_n_0\
    );
\s_reg[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gen_stage[1].RCA_X_0/carry_1\,
      I1 => p_4_in(2),
      I2 => p_reg(6),
      O => \gen_stage[1].RCA_X_0/carry_2\
    );
\s_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CSAdd_n_11,
      I1 => start_IBUF,
      O => \s_reg[8]_i_1_n_0\
    );
\s_reg[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gen_stage[1].RCA_X_0/carry_2\,
      I1 => p_4_in(3),
      I2 => p_reg(7),
      O => carry_0_1
    );
\s_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CSAdd_n_12,
      I1 => start_IBUF,
      O => \s_reg[9]_i_1_n_0\
    );
\s_reg[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => carry_0_1,
      I1 => p_4_in(4),
      I2 => p_reg(8),
      O => \gen_stage[2].RCA_X_0/carry_0\
    );
\s_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_reg[0]_i_1_n_0\,
      Q => \s_reg_reg_n_0_[0]\
    );
\s_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_reg[10]_i_1_n_0\,
      Q => p_0_in(0)
    );
\s_reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_reg[11]_i_1_n_0\,
      Q => p_0_in(1)
    );
\s_reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_reg[12]_i_1_n_0\,
      Q => p_0_in(2)
    );
\s_reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_reg[13]_i_1_n_0\,
      Q => p_0_in(3)
    );
\s_reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_reg[14]_i_1_n_0\,
      Q => p_0_in(4)
    );
\s_reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_reg[15]_i_1_n_0\,
      Q => p_0_in(5)
    );
\s_reg_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => s_next(16),
      Q => p_0_in(6)
    );
\s_reg_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => s_next(17),
      Q => p_0_in(7)
    );
\s_reg_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => s_next(18),
      Q => p_0_in(8)
    );
\s_reg_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => s_next(19),
      Q => \^q\(0)
    );
\s_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_reg[1]_i_1_n_0\,
      Q => \s_reg_reg_n_0_[1]\
    );
\s_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_reg[2]_i_1_n_0\,
      Q => \s_reg_reg_n_0_[2]\
    );
\s_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_reg[3]_i_1_n_0\,
      Q => \s_reg_reg_n_0_[3]\
    );
\s_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_reg[4]_i_1_n_0\,
      Q => p_4_in(0)
    );
\s_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_reg[5]_i_1_n_0\,
      Q => p_4_in(1)
    );
\s_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_reg[6]_i_1_n_0\,
      Q => p_4_in(2)
    );
\s_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_reg[7]_i_1_n_0\,
      Q => p_4_in(3)
    );
\s_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_reg[8]_i_1_n_0\,
      Q => p_4_in(4)
    );
\s_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => \s_reg[9]_i_1_n_0\,
      Q => p_4_in(5)
    );
started_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0222"
    )
        port map (
      I0 => started_reg,
      I1 => count_reg(3),
      I2 => count_reg(2),
      I3 => count_reg(1),
      I4 => start_IBUF,
      O => started_reg_i_1_n_0
    );
started_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => started_reg_i_1_n_0,
      Q => started_reg
    );
\weight_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => start_IBUF,
      I1 => \p_reg[15]_i_3_n_0\,
      I2 => douta(0),
      O => weight_next(0)
    );
\weight_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => start_IBUF,
      I1 => \p_reg[15]_i_3_n_0\,
      I2 => douta(1),
      O => weight_next(1)
    );
\weight_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => start_IBUF,
      I1 => \p_reg[15]_i_3_n_0\,
      I2 => douta(2),
      O => weight_next(2)
    );
\weight_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => start_IBUF,
      I1 => \p_reg[15]_i_3_n_0\,
      I2 => douta(3),
      O => weight_next(3)
    );
\weight_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => start_IBUF,
      I1 => \p_reg[15]_i_3_n_0\,
      I2 => douta(4),
      O => weight_next(4)
    );
\weight_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => start_IBUF,
      I1 => \p_reg[15]_i_3_n_0\,
      I2 => douta(5),
      O => weight_next(5)
    );
\weight_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => start_IBUF,
      I1 => \p_reg[15]_i_3_n_0\,
      I2 => douta(6),
      O => weight_next(6)
    );
\weight_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => start_IBUF,
      I1 => \p_reg[15]_i_3_n_0\,
      I2 => douta(7),
      O => weight_next(7)
    );
\weight_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => weight_next(0),
      Q => weight_reg(0)
    );
\weight_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => weight_next(1),
      Q => weight_reg(1)
    );
\weight_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => weight_next(2),
      Q => weight_reg(2)
    );
\weight_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => weight_next(3),
      Q => weight_reg(3)
    );
\weight_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => weight_next(4),
      Q => weight_reg(4)
    );
\weight_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => weight_next(5),
      Q => weight_reg(5)
    );
\weight_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => weight_next(6),
      Q => weight_reg(6)
    );
\weight_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      CLR => reset,
      D => weight_next(7),
      Q => weight_reg(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AND_function is
  port (
    data_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    start : in STD_LOGIC;
    middle_result : out STD_LOGIC_VECTOR ( 7 downto 0 );
    finish : out STD_LOGIC;
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    data_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of AND_function : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of AND_function : entity is "edb5d3cb";
  attribute POWER_OPT_BRAM_CDC : integer;
  attribute POWER_OPT_BRAM_CDC of AND_function : entity is 0;
  attribute POWER_OPT_BRAM_SR_ADDR : integer;
  attribute POWER_OPT_BRAM_SR_ADDR of AND_function : entity is 2;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE : integer;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE of AND_function : entity is 0;
  attribute ninputs : integer;
  attribute ninputs of AND_function : entity is 3;
end AND_function;

architecture STRUCTURE of AND_function is
  signal a21_n_0 : STD_LOGIC;
  signal a21_n_11 : STD_LOGIC;
  signal a21_n_12 : STD_LOGIC;
  signal a21_n_13 : STD_LOGIC;
  signal a21_n_14 : STD_LOGIC;
  signal a21_output : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal an_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal aux0_i_1_n_0 : STD_LOGIC;
  signal aux0_reg_lopt_replica_1 : STD_LOGIC;
  signal aux1_i_1_n_0 : STD_LOGIC;
  signal aux1_reg_lopt_replica_1 : STD_LOGIC;
  signal aux2_i_1_n_0 : STD_LOGIC;
  signal aux2_reg_lopt_replica_1 : STD_LOGIC;
  signal aux3_i_1_n_0 : STD_LOGIC;
  signal aux3_reg_lopt_replica_1 : STD_LOGIC;
  signal aux4_i_1_n_0 : STD_LOGIC;
  signal aux4_reg_lopt_replica_1 : STD_LOGIC;
  signal aux5_i_1_n_0 : STD_LOGIC;
  signal aux5_reg_lopt_replica_1 : STD_LOGIC;
  signal aux6_i_1_n_0 : STD_LOGIC;
  signal aux6_reg_lopt_replica_1 : STD_LOGIC;
  signal aux7_i_1_n_0 : STD_LOGIC;
  signal aux7_reg_lopt_replica_1 : STD_LOGIC;
  signal clk_out1 : STD_LOGIC;
  signal count_temporal_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count_temporal_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_temporal_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_temporal_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_temporal_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_temporal_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \count_temporal_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_temporal_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_temporal_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_temporal_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_temporal_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_temporal_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_temporal_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_temporal_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_temporal_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_temporal_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_temporal_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \count_temporal_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \count_temporal_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \count_temporal_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \count_temporal_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \count_temporal_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \count_temporal_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \count_temporal_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \count_temporal_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \count_temporal_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \count_temporal_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \count_temporal_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \count_temporal_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \count_temporal_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \count_temporal_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_temporal_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_temporal_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_temporal_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_temporal_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_temporal_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_temporal_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_temporal_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_temporal_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_temporal_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \count_temporal_reg__0\ : STD_LOGIC_VECTOR ( 31 downto 30 );
  signal \count_temporal_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[14]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[15]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[16]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[17]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[18]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[19]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[20]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[21]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[22]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[23]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[24]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[25]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[26]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[27]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[28]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[29]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_temporal_reg_n_0_[9]\ : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \counter[13]_i_4_n_0\ : STD_LOGIC;
  signal \counter[13]_i_5_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \counter_reg_n_0_[9]\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal data_in_IBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_out_OBUF : STD_LOGIC;
  signal final_result_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal finish_OBUF : STD_LOGIC;
  signal middle_result_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in8_in : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
  signal seg_OBUF : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \seg_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \seg_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
  signal start_IBUF : STD_LOGIC;
  signal sum_out : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal temporal : STD_LOGIC;
  signal temporal_i_1_n_0 : STD_LOGIC;
  signal temporal_reg_n_0_BUFG : STD_LOGIC;
  signal temporal_reg_n_0_BUFG_inst_n_0 : STD_LOGIC;
  signal \NLW_count_temporal_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_temporal_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_temporal_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_temporal_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_temporal_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_temporal_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_temporal_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_temporal_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[13]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[13]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_counter_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute OPT_INSERTED_REPDRIVER : boolean;
  attribute OPT_INSERTED_REPDRIVER of aux0_reg_lopt_replica : label is std.standard.true;
  attribute OPT_INSERTED_REPDRIVER of aux1_reg_lopt_replica : label is std.standard.true;
  attribute OPT_INSERTED_REPDRIVER of aux2_reg_lopt_replica : label is std.standard.true;
  attribute OPT_INSERTED_REPDRIVER of aux3_reg_lopt_replica : label is std.standard.true;
  attribute OPT_INSERTED_REPDRIVER of aux4_reg_lopt_replica : label is std.standard.true;
  attribute OPT_INSERTED_REPDRIVER of aux5_reg_lopt_replica : label is std.standard.true;
  attribute OPT_INSERTED_REPDRIVER of aux6_reg_lopt_replica : label is std.standard.true;
  attribute OPT_INSERTED_REPDRIVER of aux7_reg_lopt_replica : label is std.standard.true;
  attribute syn_black_box : string;
  attribute syn_black_box of clk_50 : label is "TRUE";
begin
a21: entity work.Artificial_Neuron_a21
     port map (
      D(3 downto 0) => a21_output(3 downto 0),
      Q(0) => p_0_in8_in,
      clk_out1 => clk_out1,
      data_in_IBUF(1 downto 0) => data_in_IBUF(1 downto 0),
      data_out_OBUF => data_out_OBUF,
      finish => finish_OBUF,
      \middle_result_reg_reg[0]\ => a21_n_11,
      \middle_result_reg_reg[3]\ => a21_n_12,
      \middle_result_reg_reg[4]\(2) => sum_out(4),
      \middle_result_reg_reg[4]\(1 downto 0) => sum_out(2 downto 1),
      \middle_result_reg_reg[5]\ => a21_n_13,
      \middle_result_reg_reg[6]\ => a21_n_0,
      \middle_result_reg_reg[6]_0\ => a21_n_14,
      reset => reset_IBUF,
      start_IBUF => start_IBUF
    );
\an_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => aux7_reg_lopt_replica_1,
      O => an(0)
    );
\an_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => aux6_reg_lopt_replica_1,
      O => an(1)
    );
\an_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => aux5_reg_lopt_replica_1,
      O => an(2)
    );
\an_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => aux4_reg_lopt_replica_1,
      O => an(3)
    );
\an_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => aux3_reg_lopt_replica_1,
      O => an(4)
    );
\an_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => aux2_reg_lopt_replica_1,
      O => an(5)
    );
\an_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => aux1_reg_lopt_replica_1,
      O => an(6)
    );
\an_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => aux0_reg_lopt_replica_1,
      O => an(7)
    );
aux0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => count_temporal_reg(2),
      I1 => count_temporal_reg(0),
      I2 => count_temporal_reg(1),
      O => aux0_i_1_n_0
    );
aux0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => aux0_i_1_n_0,
      Q => an_OBUF(7),
      R => '0'
    );
aux0_reg_lopt_replica: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => aux0_i_1_n_0,
      Q => aux0_reg_lopt_replica_1,
      R => '0'
    );
aux1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \count_temporal_reg__0\(31),
      I1 => count_temporal_reg(2),
      I2 => count_temporal_reg(0),
      I3 => count_temporal_reg(1),
      O => aux1_i_1_n_0
    );
aux1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => aux1_i_1_n_0,
      Q => an_OBUF(6),
      R => '0'
    );
aux1_reg_lopt_replica: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => aux1_i_1_n_0,
      Q => aux1_reg_lopt_replica_1,
      R => '0'
    );
aux2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => count_temporal_reg(2),
      I1 => count_temporal_reg(0),
      I2 => count_temporal_reg(1),
      O => aux2_i_1_n_0
    );
aux2_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => aux2_i_1_n_0,
      Q => an_OBUF(5),
      S => \count_temporal_reg__0\(31)
    );
aux2_reg_lopt_replica: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => aux2_i_1_n_0,
      Q => aux2_reg_lopt_replica_1,
      S => \count_temporal_reg__0\(31)
    );
aux3_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => count_temporal_reg(2),
      I1 => count_temporal_reg(0),
      I2 => count_temporal_reg(1),
      O => aux3_i_1_n_0
    );
aux3_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => aux3_i_1_n_0,
      Q => an_OBUF(4),
      S => \count_temporal_reg__0\(31)
    );
aux3_reg_lopt_replica: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => aux3_i_1_n_0,
      Q => aux3_reg_lopt_replica_1,
      S => \count_temporal_reg__0\(31)
    );
aux4_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => count_temporal_reg(0),
      I1 => count_temporal_reg(1),
      I2 => count_temporal_reg(2),
      O => aux4_i_1_n_0
    );
aux4_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => aux4_i_1_n_0,
      Q => an_OBUF(3),
      S => \count_temporal_reg__0\(31)
    );
aux4_reg_lopt_replica: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => aux4_i_1_n_0,
      Q => aux4_reg_lopt_replica_1,
      S => \count_temporal_reg__0\(31)
    );
aux5_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => count_temporal_reg(2),
      I1 => count_temporal_reg(0),
      I2 => count_temporal_reg(1),
      O => aux5_i_1_n_0
    );
aux5_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => aux5_i_1_n_0,
      Q => an_OBUF(2),
      S => \count_temporal_reg__0\(31)
    );
aux5_reg_lopt_replica: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => aux5_i_1_n_0,
      Q => aux5_reg_lopt_replica_1,
      S => \count_temporal_reg__0\(31)
    );
aux6_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => count_temporal_reg(2),
      I1 => count_temporal_reg(0),
      I2 => count_temporal_reg(1),
      O => aux6_i_1_n_0
    );
aux6_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => aux6_i_1_n_0,
      Q => an_OBUF(1),
      S => \count_temporal_reg__0\(31)
    );
aux6_reg_lopt_replica: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => aux6_i_1_n_0,
      Q => aux6_reg_lopt_replica_1,
      S => \count_temporal_reg__0\(31)
    );
aux7_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => count_temporal_reg(2),
      I1 => count_temporal_reg(0),
      I2 => count_temporal_reg(1),
      O => aux7_i_1_n_0
    );
aux7_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => aux7_i_1_n_0,
      Q => an_OBUF(0),
      S => \count_temporal_reg__0\(31)
    );
aux7_reg_lopt_replica: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => aux7_i_1_n_0,
      Q => aux7_reg_lopt_replica_1,
      S => \count_temporal_reg__0\(31)
    );
clk_50: entity work.clk_77_MHz
     port map (
      clk_in1 => clk,
      clk_out1 => clk_out1
    );
\count_temporal[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_temporal_reg(0),
      O => p_0_in(0)
    );
\count_temporal_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[0]_i_1_n_7\,
      Q => count_temporal_reg(0),
      R => '0'
    );
\count_temporal_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_temporal_reg[0]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_temporal_reg[0]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_temporal_reg[0]_i_1_n_4\,
      O(2) => \count_temporal_reg[0]_i_1_n_5\,
      O(1) => \count_temporal_reg[0]_i_1_n_6\,
      O(0) => \count_temporal_reg[0]_i_1_n_7\,
      S(3) => \count_temporal_reg_n_0_[3]\,
      S(2 downto 1) => count_temporal_reg(2 downto 1),
      S(0) => p_0_in(0)
    );
\count_temporal_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[8]_i_1_n_5\,
      Q => \count_temporal_reg_n_0_[10]\,
      R => '0'
    );
\count_temporal_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[8]_i_1_n_4\,
      Q => \count_temporal_reg_n_0_[11]\,
      R => '0'
    );
\count_temporal_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[12]_i_1_n_7\,
      Q => \count_temporal_reg_n_0_[12]\,
      R => '0'
    );
\count_temporal_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_temporal_reg[8]_i_1_n_0\,
      CO(3) => \count_temporal_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_temporal_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_temporal_reg[12]_i_1_n_4\,
      O(2) => \count_temporal_reg[12]_i_1_n_5\,
      O(1) => \count_temporal_reg[12]_i_1_n_6\,
      O(0) => \count_temporal_reg[12]_i_1_n_7\,
      S(3) => \count_temporal_reg_n_0_[15]\,
      S(2) => \count_temporal_reg_n_0_[14]\,
      S(1) => \count_temporal_reg_n_0_[13]\,
      S(0) => \count_temporal_reg_n_0_[12]\
    );
\count_temporal_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[12]_i_1_n_6\,
      Q => \count_temporal_reg_n_0_[13]\,
      R => '0'
    );
\count_temporal_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[12]_i_1_n_5\,
      Q => \count_temporal_reg_n_0_[14]\,
      R => '0'
    );
\count_temporal_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[12]_i_1_n_4\,
      Q => \count_temporal_reg_n_0_[15]\,
      R => '0'
    );
\count_temporal_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[16]_i_1_n_7\,
      Q => \count_temporal_reg_n_0_[16]\,
      R => '0'
    );
\count_temporal_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_temporal_reg[12]_i_1_n_0\,
      CO(3) => \count_temporal_reg[16]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_temporal_reg[16]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_temporal_reg[16]_i_1_n_4\,
      O(2) => \count_temporal_reg[16]_i_1_n_5\,
      O(1) => \count_temporal_reg[16]_i_1_n_6\,
      O(0) => \count_temporal_reg[16]_i_1_n_7\,
      S(3) => \count_temporal_reg_n_0_[19]\,
      S(2) => \count_temporal_reg_n_0_[18]\,
      S(1) => \count_temporal_reg_n_0_[17]\,
      S(0) => \count_temporal_reg_n_0_[16]\
    );
\count_temporal_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[16]_i_1_n_6\,
      Q => \count_temporal_reg_n_0_[17]\,
      R => '0'
    );
\count_temporal_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[16]_i_1_n_5\,
      Q => \count_temporal_reg_n_0_[18]\,
      R => '0'
    );
\count_temporal_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[16]_i_1_n_4\,
      Q => \count_temporal_reg_n_0_[19]\,
      R => '0'
    );
\count_temporal_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[0]_i_1_n_6\,
      Q => count_temporal_reg(1),
      R => '0'
    );
\count_temporal_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[20]_i_1_n_7\,
      Q => \count_temporal_reg_n_0_[20]\,
      R => '0'
    );
\count_temporal_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_temporal_reg[16]_i_1_n_0\,
      CO(3) => \count_temporal_reg[20]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_temporal_reg[20]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_temporal_reg[20]_i_1_n_4\,
      O(2) => \count_temporal_reg[20]_i_1_n_5\,
      O(1) => \count_temporal_reg[20]_i_1_n_6\,
      O(0) => \count_temporal_reg[20]_i_1_n_7\,
      S(3) => \count_temporal_reg_n_0_[23]\,
      S(2) => \count_temporal_reg_n_0_[22]\,
      S(1) => \count_temporal_reg_n_0_[21]\,
      S(0) => \count_temporal_reg_n_0_[20]\
    );
\count_temporal_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[20]_i_1_n_6\,
      Q => \count_temporal_reg_n_0_[21]\,
      R => '0'
    );
\count_temporal_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[20]_i_1_n_5\,
      Q => \count_temporal_reg_n_0_[22]\,
      R => '0'
    );
\count_temporal_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[20]_i_1_n_4\,
      Q => \count_temporal_reg_n_0_[23]\,
      R => '0'
    );
\count_temporal_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[24]_i_1_n_7\,
      Q => \count_temporal_reg_n_0_[24]\,
      R => '0'
    );
\count_temporal_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_temporal_reg[20]_i_1_n_0\,
      CO(3) => \count_temporal_reg[24]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_temporal_reg[24]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_temporal_reg[24]_i_1_n_4\,
      O(2) => \count_temporal_reg[24]_i_1_n_5\,
      O(1) => \count_temporal_reg[24]_i_1_n_6\,
      O(0) => \count_temporal_reg[24]_i_1_n_7\,
      S(3) => \count_temporal_reg_n_0_[27]\,
      S(2) => \count_temporal_reg_n_0_[26]\,
      S(1) => \count_temporal_reg_n_0_[25]\,
      S(0) => \count_temporal_reg_n_0_[24]\
    );
\count_temporal_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[24]_i_1_n_6\,
      Q => \count_temporal_reg_n_0_[25]\,
      R => '0'
    );
\count_temporal_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[24]_i_1_n_5\,
      Q => \count_temporal_reg_n_0_[26]\,
      R => '0'
    );
\count_temporal_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[24]_i_1_n_4\,
      Q => \count_temporal_reg_n_0_[27]\,
      R => '0'
    );
\count_temporal_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[28]_i_1_n_7\,
      Q => \count_temporal_reg_n_0_[28]\,
      R => '0'
    );
\count_temporal_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_temporal_reg[24]_i_1_n_0\,
      CO(3 downto 0) => \NLW_count_temporal_reg[28]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_temporal_reg[28]_i_1_n_4\,
      O(2) => \count_temporal_reg[28]_i_1_n_5\,
      O(1) => \count_temporal_reg[28]_i_1_n_6\,
      O(0) => \count_temporal_reg[28]_i_1_n_7\,
      S(3 downto 2) => \count_temporal_reg__0\(31 downto 30),
      S(1) => \count_temporal_reg_n_0_[29]\,
      S(0) => \count_temporal_reg_n_0_[28]\
    );
\count_temporal_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[28]_i_1_n_6\,
      Q => \count_temporal_reg_n_0_[29]\,
      R => '0'
    );
\count_temporal_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[0]_i_1_n_5\,
      Q => count_temporal_reg(2),
      R => '0'
    );
\count_temporal_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[28]_i_1_n_5\,
      Q => \count_temporal_reg__0\(30),
      R => '0'
    );
\count_temporal_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[28]_i_1_n_4\,
      Q => \count_temporal_reg__0\(31),
      R => '0'
    );
\count_temporal_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[0]_i_1_n_4\,
      Q => \count_temporal_reg_n_0_[3]\,
      R => '0'
    );
\count_temporal_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[4]_i_1_n_7\,
      Q => \count_temporal_reg_n_0_[4]\,
      R => '0'
    );
\count_temporal_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_temporal_reg[0]_i_1_n_0\,
      CO(3) => \count_temporal_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_temporal_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_temporal_reg[4]_i_1_n_4\,
      O(2) => \count_temporal_reg[4]_i_1_n_5\,
      O(1) => \count_temporal_reg[4]_i_1_n_6\,
      O(0) => \count_temporal_reg[4]_i_1_n_7\,
      S(3) => \count_temporal_reg_n_0_[7]\,
      S(2) => \count_temporal_reg_n_0_[6]\,
      S(1) => \count_temporal_reg_n_0_[5]\,
      S(0) => \count_temporal_reg_n_0_[4]\
    );
\count_temporal_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[4]_i_1_n_6\,
      Q => \count_temporal_reg_n_0_[5]\,
      R => '0'
    );
\count_temporal_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[4]_i_1_n_5\,
      Q => \count_temporal_reg_n_0_[6]\,
      R => '0'
    );
\count_temporal_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[4]_i_1_n_4\,
      Q => \count_temporal_reg_n_0_[7]\,
      R => '0'
    );
\count_temporal_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[8]_i_1_n_7\,
      Q => \count_temporal_reg_n_0_[8]\,
      R => '0'
    );
\count_temporal_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_temporal_reg[4]_i_1_n_0\,
      CO(3) => \count_temporal_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_temporal_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_temporal_reg[8]_i_1_n_4\,
      O(2) => \count_temporal_reg[8]_i_1_n_5\,
      O(1) => \count_temporal_reg[8]_i_1_n_6\,
      O(0) => \count_temporal_reg[8]_i_1_n_7\,
      S(3) => \count_temporal_reg_n_0_[11]\,
      S(2) => \count_temporal_reg_n_0_[10]\,
      S(1) => \count_temporal_reg_n_0_[9]\,
      S(0) => \count_temporal_reg_n_0_[8]\
    );
\count_temporal_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => temporal_reg_n_0_BUFG,
      CE => '1',
      D => \count_temporal_reg[8]_i_1_n_6\,
      Q => \count_temporal_reg_n_0_[9]\,
      R => '0'
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      O => counter(0)
    );
\counter[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \counter[13]_i_4_n_0\,
      I1 => \counter_reg_n_0_[3]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[5]\,
      I4 => \counter_reg_n_0_[4]\,
      I5 => \counter[13]_i_5_n_0\,
      O => temporal
    );
\counter[13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \counter_reg_n_0_[7]\,
      I1 => \counter_reg_n_0_[6]\,
      I2 => \counter_reg_n_0_[9]\,
      I3 => \counter_reg_n_0_[8]\,
      O => \counter[13]_i_4_n_0\
    );
\counter[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \counter_reg_n_0_[12]\,
      I1 => \counter_reg_n_0_[13]\,
      I2 => \counter_reg_n_0_[11]\,
      I3 => \counter_reg_n_0_[10]\,
      I4 => \counter_reg_n_0_[1]\,
      I5 => \counter_reg_n_0_[0]\,
      O => \counter[13]_i_5_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => counter(0),
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(10),
      Q => \counter_reg_n_0_[10]\,
      R => temporal
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(11),
      Q => \counter_reg_n_0_[11]\,
      R => temporal
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(12),
      Q => \counter_reg_n_0_[12]\,
      R => temporal
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \counter_reg_n_0_[12]\,
      S(2) => \counter_reg_n_0_[11]\,
      S(1) => \counter_reg_n_0_[10]\,
      S(0) => \counter_reg_n_0_[9]\
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(13),
      Q => \counter_reg_n_0_[13]\,
      R => temporal
    );
\counter_reg[13]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_counter_reg[13]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_counter_reg[13]_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => data0(13),
      S(3 downto 1) => B"000",
      S(0) => \counter_reg_n_0_[13]\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(1),
      Q => \counter_reg_n_0_[1]\,
      R => temporal
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(2),
      Q => \counter_reg_n_0_[2]\,
      R => temporal
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(3),
      Q => \counter_reg_n_0_[3]\,
      R => temporal
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(4),
      Q => \counter_reg_n_0_[4]\,
      R => temporal
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \counter_reg_n_0_[4]\,
      S(2) => \counter_reg_n_0_[3]\,
      S(1) => \counter_reg_n_0_[2]\,
      S(0) => \counter_reg_n_0_[1]\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(5),
      Q => \counter_reg_n_0_[5]\,
      R => temporal
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(6),
      Q => \counter_reg_n_0_[6]\,
      R => temporal
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(7),
      Q => \counter_reg_n_0_[7]\,
      R => temporal
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(8),
      Q => \counter_reg_n_0_[8]\,
      R => temporal
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \counter_reg_n_0_[8]\,
      S(2) => \counter_reg_n_0_[7]\,
      S(1) => \counter_reg_n_0_[6]\,
      S(0) => \counter_reg_n_0_[5]\
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => data0(9),
      Q => \counter_reg_n_0_[9]\,
      R => temporal
    );
\data_in_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(0),
      O => data_in_IBUF(0)
    );
\data_in_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(1),
      O => data_in_IBUF(1)
    );
data_out_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF,
      O => data_out
    );
\final_result_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => a21_output(0),
      Q => final_result_reg(0),
      R => '0'
    );
\final_result_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => a21_output(1),
      Q => final_result_reg(1),
      R => '0'
    );
\final_result_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => a21_output(2),
      Q => final_result_reg(2),
      R => '0'
    );
\final_result_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => a21_output(3),
      Q => final_result_reg(3),
      R => '0'
    );
finish_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => finish_OBUF,
      O => finish
    );
\middle_result_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => middle_result_OBUF(0),
      O => middle_result(0)
    );
\middle_result_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => middle_result_OBUF(1),
      O => middle_result(1)
    );
\middle_result_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => middle_result_OBUF(2),
      O => middle_result(2)
    );
\middle_result_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => middle_result_OBUF(3),
      O => middle_result(3)
    );
\middle_result_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => middle_result_OBUF(4),
      O => middle_result(4)
    );
\middle_result_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => middle_result_OBUF(5),
      O => middle_result(5)
    );
\middle_result_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => middle_result_OBUF(6),
      O => middle_result(6)
    );
\middle_result_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => middle_result_OBUF(7),
      O => middle_result(7)
    );
\middle_result_reg_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => a21_n_11,
      Q => middle_result_OBUF(0),
      S => a21_n_0
    );
\middle_result_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => sum_out(1),
      Q => middle_result_OBUF(1),
      R => '0'
    );
\middle_result_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => sum_out(2),
      Q => middle_result_OBUF(2),
      R => '0'
    );
\middle_result_reg_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => a21_n_12,
      Q => middle_result_OBUF(3),
      S => a21_n_0
    );
\middle_result_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => sum_out(4),
      Q => middle_result_OBUF(4),
      R => '0'
    );
\middle_result_reg_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => a21_n_13,
      Q => middle_result_OBUF(5),
      S => a21_n_0
    );
\middle_result_reg_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => a21_n_14,
      Q => middle_result_OBUF(6),
      S => a21_n_0
    );
\middle_result_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => p_0_in8_in,
      Q => middle_result_OBUF(7),
      R => '0'
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
\seg_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(0),
      O => seg(0)
    );
\seg_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => seg(1)
    );
\seg_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => seg(2)
    );
\seg_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(0),
      O => seg(3)
    );
\seg_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(0),
      O => seg(4)
    );
\seg_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(0),
      O => seg(5)
    );
\seg_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF8F0FAFAFAFA"
    )
        port map (
      I0 => final_result_reg(0),
      I1 => \seg_OBUF[5]_inst_i_2_n_0\,
      I2 => \seg_OBUF[5]_inst_i_3_n_0\,
      I3 => an_OBUF(6),
      I4 => final_result_reg(1),
      I5 => an_OBUF(7),
      O => seg_OBUF(0)
    );
\seg_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => an_OBUF(1),
      I1 => an_OBUF(0),
      I2 => an_OBUF(3),
      I3 => an_OBUF(2),
      I4 => an_OBUF(4),
      I5 => an_OBUF(5),
      O => \seg_OBUF[5]_inst_i_2_n_0\
    );
\seg_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080888000800080"
    )
        port map (
      I0 => an_OBUF(6),
      I1 => an_OBUF(7),
      I2 => final_result_reg(2),
      I3 => an_OBUF(5),
      I4 => an_OBUF(4),
      I5 => final_result_reg(3),
      O => \seg_OBUF[5]_inst_i_3_n_0\
    );
\seg_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => seg(6)
    );
start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => start,
      O => start_IBUF
    );
temporal_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temporal,
      I1 => temporal_reg_n_0_BUFG_inst_n_0,
      O => temporal_i_1_n_0
    );
temporal_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => temporal_i_1_n_0,
      Q => temporal_reg_n_0_BUFG_inst_n_0,
      R => '0'
    );
temporal_reg_n_0_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => temporal_reg_n_0_BUFG_inst_n_0,
      O => temporal_reg_n_0_BUFG
    );
end STRUCTURE;
