--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.61xd
--  \   \         Application: netgen
--  /   /         Filename: top_synthesis.vhd
-- /___/   /\     Timestamp: Fri Apr 13 10:38:02 2012
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm top -w -dir netgen/synthesis -ofmt vhdl -sim top.ngc top_synthesis.vhd 
-- Device	: xc3s100e-4-tq144
-- Input file	: top.ngc
-- Output file	: C:\ece587\dap\netgen\synthesis\top_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: top
-- Xilinx	: C:\Xilinx\13.2\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity top is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    verif : out STD_LOGIC_VECTOR ( 31 downto 0 ); 
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 ); 
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end top;

architecture Structure of top is
  signal data_in_0_IBUF_32 : STD_LOGIC; 
  signal data_in_10_IBUF_33 : STD_LOGIC; 
  signal data_in_11_IBUF_34 : STD_LOGIC; 
  signal data_in_12_IBUF_35 : STD_LOGIC; 
  signal data_in_13_IBUF_36 : STD_LOGIC; 
  signal data_in_14_IBUF_37 : STD_LOGIC; 
  signal data_in_15_IBUF_38 : STD_LOGIC; 
  signal data_in_16_IBUF_39 : STD_LOGIC; 
  signal data_in_17_IBUF_40 : STD_LOGIC; 
  signal data_in_18_IBUF_41 : STD_LOGIC; 
  signal data_in_19_IBUF_42 : STD_LOGIC; 
  signal data_in_1_IBUF_43 : STD_LOGIC; 
  signal data_in_20_IBUF_44 : STD_LOGIC; 
  signal data_in_21_IBUF_45 : STD_LOGIC; 
  signal data_in_22_IBUF_46 : STD_LOGIC; 
  signal data_in_23_IBUF_47 : STD_LOGIC; 
  signal data_in_24_IBUF_48 : STD_LOGIC; 
  signal data_in_25_IBUF_49 : STD_LOGIC; 
  signal data_in_26_IBUF_50 : STD_LOGIC; 
  signal data_in_27_IBUF_51 : STD_LOGIC; 
  signal data_in_28_IBUF_52 : STD_LOGIC; 
  signal data_in_29_IBUF_53 : STD_LOGIC; 
  signal data_in_2_IBUF_54 : STD_LOGIC; 
  signal data_in_30_IBUF_55 : STD_LOGIC; 
  signal data_in_31_IBUF_56 : STD_LOGIC; 
  signal data_in_3_IBUF_57 : STD_LOGIC; 
  signal data_in_4_IBUF_58 : STD_LOGIC; 
  signal data_in_5_IBUF_59 : STD_LOGIC; 
  signal data_in_6_IBUF_60 : STD_LOGIC; 
  signal data_in_7_IBUF_61 : STD_LOGIC; 
  signal data_in_8_IBUF_62 : STD_LOGIC; 
  signal data_in_9_IBUF_63 : STD_LOGIC; 
  signal verif_31_OBUF_128 : STD_LOGIC; 
begin
  XST_GND : GND
    port map (
      G => verif_31_OBUF_128
    );
  data_in_31_IBUF : IBUF
    port map (
      I => data_in(31),
      O => data_in_31_IBUF_56
    );
  data_in_30_IBUF : IBUF
    port map (
      I => data_in(30),
      O => data_in_30_IBUF_55
    );
  data_in_29_IBUF : IBUF
    port map (
      I => data_in(29),
      O => data_in_29_IBUF_53
    );
  data_in_28_IBUF : IBUF
    port map (
      I => data_in(28),
      O => data_in_28_IBUF_52
    );
  data_in_27_IBUF : IBUF
    port map (
      I => data_in(27),
      O => data_in_27_IBUF_51
    );
  data_in_26_IBUF : IBUF
    port map (
      I => data_in(26),
      O => data_in_26_IBUF_50
    );
  data_in_25_IBUF : IBUF
    port map (
      I => data_in(25),
      O => data_in_25_IBUF_49
    );
  data_in_24_IBUF : IBUF
    port map (
      I => data_in(24),
      O => data_in_24_IBUF_48
    );
  data_in_23_IBUF : IBUF
    port map (
      I => data_in(23),
      O => data_in_23_IBUF_47
    );
  data_in_22_IBUF : IBUF
    port map (
      I => data_in(22),
      O => data_in_22_IBUF_46
    );
  data_in_21_IBUF : IBUF
    port map (
      I => data_in(21),
      O => data_in_21_IBUF_45
    );
  data_in_20_IBUF : IBUF
    port map (
      I => data_in(20),
      O => data_in_20_IBUF_44
    );
  data_in_19_IBUF : IBUF
    port map (
      I => data_in(19),
      O => data_in_19_IBUF_42
    );
  data_in_18_IBUF : IBUF
    port map (
      I => data_in(18),
      O => data_in_18_IBUF_41
    );
  data_in_17_IBUF : IBUF
    port map (
      I => data_in(17),
      O => data_in_17_IBUF_40
    );
  data_in_16_IBUF : IBUF
    port map (
      I => data_in(16),
      O => data_in_16_IBUF_39
    );
  data_in_15_IBUF : IBUF
    port map (
      I => data_in(15),
      O => data_in_15_IBUF_38
    );
  data_in_14_IBUF : IBUF
    port map (
      I => data_in(14),
      O => data_in_14_IBUF_37
    );
  data_in_13_IBUF : IBUF
    port map (
      I => data_in(13),
      O => data_in_13_IBUF_36
    );
  data_in_12_IBUF : IBUF
    port map (
      I => data_in(12),
      O => data_in_12_IBUF_35
    );
  data_in_11_IBUF : IBUF
    port map (
      I => data_in(11),
      O => data_in_11_IBUF_34
    );
  data_in_10_IBUF : IBUF
    port map (
      I => data_in(10),
      O => data_in_10_IBUF_33
    );
  data_in_9_IBUF : IBUF
    port map (
      I => data_in(9),
      O => data_in_9_IBUF_63
    );
  data_in_8_IBUF : IBUF
    port map (
      I => data_in(8),
      O => data_in_8_IBUF_62
    );
  data_in_7_IBUF : IBUF
    port map (
      I => data_in(7),
      O => data_in_7_IBUF_61
    );
  data_in_6_IBUF : IBUF
    port map (
      I => data_in(6),
      O => data_in_6_IBUF_60
    );
  data_in_5_IBUF : IBUF
    port map (
      I => data_in(5),
      O => data_in_5_IBUF_59
    );
  data_in_4_IBUF : IBUF
    port map (
      I => data_in(4),
      O => data_in_4_IBUF_58
    );
  data_in_3_IBUF : IBUF
    port map (
      I => data_in(3),
      O => data_in_3_IBUF_57
    );
  data_in_2_IBUF : IBUF
    port map (
      I => data_in(2),
      O => data_in_2_IBUF_54
    );
  data_in_1_IBUF : IBUF
    port map (
      I => data_in(1),
      O => data_in_1_IBUF_43
    );
  data_in_0_IBUF : IBUF
    port map (
      I => data_in(0),
      O => data_in_0_IBUF_32
    );
  verif_31_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(31)
    );
  verif_30_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(30)
    );
  verif_29_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(29)
    );
  verif_28_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(28)
    );
  verif_27_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(27)
    );
  verif_26_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(26)
    );
  verif_25_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(25)
    );
  verif_24_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(24)
    );
  verif_23_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(23)
    );
  verif_22_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(22)
    );
  verif_21_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(21)
    );
  verif_20_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(20)
    );
  verif_19_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(19)
    );
  verif_18_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(18)
    );
  verif_17_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(17)
    );
  verif_16_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(16)
    );
  verif_15_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(15)
    );
  verif_14_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(14)
    );
  verif_13_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(13)
    );
  verif_12_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(12)
    );
  verif_11_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(11)
    );
  verif_10_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(10)
    );
  verif_9_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(9)
    );
  verif_8_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(8)
    );
  verif_7_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(7)
    );
  verif_6_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(6)
    );
  verif_5_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(5)
    );
  verif_4_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(4)
    );
  verif_3_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(3)
    );
  verif_2_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(2)
    );
  verif_1_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(1)
    );
  verif_0_OBUF : OBUF
    port map (
      I => verif_31_OBUF_128,
      O => verif(0)
    );
  data_out_31_OBUF : OBUF
    port map (
      I => data_in_31_IBUF_56,
      O => data_out(31)
    );
  data_out_30_OBUF : OBUF
    port map (
      I => data_in_30_IBUF_55,
      O => data_out(30)
    );
  data_out_29_OBUF : OBUF
    port map (
      I => data_in_29_IBUF_53,
      O => data_out(29)
    );
  data_out_28_OBUF : OBUF
    port map (
      I => data_in_28_IBUF_52,
      O => data_out(28)
    );
  data_out_27_OBUF : OBUF
    port map (
      I => data_in_27_IBUF_51,
      O => data_out(27)
    );
  data_out_26_OBUF : OBUF
    port map (
      I => data_in_26_IBUF_50,
      O => data_out(26)
    );
  data_out_25_OBUF : OBUF
    port map (
      I => data_in_25_IBUF_49,
      O => data_out(25)
    );
  data_out_24_OBUF : OBUF
    port map (
      I => data_in_24_IBUF_48,
      O => data_out(24)
    );
  data_out_23_OBUF : OBUF
    port map (
      I => data_in_23_IBUF_47,
      O => data_out(23)
    );
  data_out_22_OBUF : OBUF
    port map (
      I => data_in_22_IBUF_46,
      O => data_out(22)
    );
  data_out_21_OBUF : OBUF
    port map (
      I => data_in_21_IBUF_45,
      O => data_out(21)
    );
  data_out_20_OBUF : OBUF
    port map (
      I => data_in_20_IBUF_44,
      O => data_out(20)
    );
  data_out_19_OBUF : OBUF
    port map (
      I => data_in_19_IBUF_42,
      O => data_out(19)
    );
  data_out_18_OBUF : OBUF
    port map (
      I => data_in_18_IBUF_41,
      O => data_out(18)
    );
  data_out_17_OBUF : OBUF
    port map (
      I => data_in_17_IBUF_40,
      O => data_out(17)
    );
  data_out_16_OBUF : OBUF
    port map (
      I => data_in_16_IBUF_39,
      O => data_out(16)
    );
  data_out_15_OBUF : OBUF
    port map (
      I => data_in_15_IBUF_38,
      O => data_out(15)
    );
  data_out_14_OBUF : OBUF
    port map (
      I => data_in_14_IBUF_37,
      O => data_out(14)
    );
  data_out_13_OBUF : OBUF
    port map (
      I => data_in_13_IBUF_36,
      O => data_out(13)
    );
  data_out_12_OBUF : OBUF
    port map (
      I => data_in_12_IBUF_35,
      O => data_out(12)
    );
  data_out_11_OBUF : OBUF
    port map (
      I => data_in_11_IBUF_34,
      O => data_out(11)
    );
  data_out_10_OBUF : OBUF
    port map (
      I => data_in_10_IBUF_33,
      O => data_out(10)
    );
  data_out_9_OBUF : OBUF
    port map (
      I => data_in_9_IBUF_63,
      O => data_out(9)
    );
  data_out_8_OBUF : OBUF
    port map (
      I => data_in_8_IBUF_62,
      O => data_out(8)
    );
  data_out_7_OBUF : OBUF
    port map (
      I => data_in_7_IBUF_61,
      O => data_out(7)
    );
  data_out_6_OBUF : OBUF
    port map (
      I => data_in_6_IBUF_60,
      O => data_out(6)
    );
  data_out_5_OBUF : OBUF
    port map (
      I => data_in_5_IBUF_59,
      O => data_out(5)
    );
  data_out_4_OBUF : OBUF
    port map (
      I => data_in_4_IBUF_58,
      O => data_out(4)
    );
  data_out_3_OBUF : OBUF
    port map (
      I => data_in_3_IBUF_57,
      O => data_out(3)
    );
  data_out_2_OBUF : OBUF
    port map (
      I => data_in_2_IBUF_54,
      O => data_out(2)
    );
  data_out_1_OBUF : OBUF
    port map (
      I => data_in_1_IBUF_43,
      O => data_out(1)
    );
  data_out_0_OBUF : OBUF
    port map (
      I => data_in_0_IBUF_32,
      O => data_out(0)
    );

end Structure;

