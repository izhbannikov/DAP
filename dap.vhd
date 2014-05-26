----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:20:51 04/11/2012 
-- Design Name: 
-- Module Name:    dap - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dap is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (31 downto 0);
			  data_out_encoder : out STD_LOGIC_VECTOR (64 downto 0);
           data_out : out  STD_LOGIC_VECTOR (31 downto 0));
end dap;

architecture Behavioral of dap is

	component mux2_1 is 
		Port ( in0 : in  STD_LOGIC;
				in1 : in  STD_LOGIC;
				s : in  std_logic;
				mux_out : out  STD_LOGIC
			);
	end component;

	signal tmp_data_out_encoder : STD_LOGIC_VECTOR (64 downto 0);
	signal s_err : std_logic;
begin

	data_out_encoder <= tmp_data_out_encoder;
	
---Encoder--------
	--duplicating:
	tmp_data_out_encoder(0) <= data_in(0);
	tmp_data_out_encoder(1) <= data_in(0);
	tmp_data_out_encoder(2) <= data_in(1);
	tmp_data_out_encoder(3) <= data_in(1);
	tmp_data_out_encoder(4) <= data_in(2);
	tmp_data_out_encoder(5) <= data_in(2);
	tmp_data_out_encoder(6) <= data_in(3);
	tmp_data_out_encoder(7) <= data_in(3);
	tmp_data_out_encoder(8) <= data_in(4);
	tmp_data_out_encoder(9) <= data_in(4);
	tmp_data_out_encoder(10) <= data_in(5);
	tmp_data_out_encoder(11) <= data_in(5);
	tmp_data_out_encoder(12) <= data_in(6);
	tmp_data_out_encoder(13) <= data_in(6);
	tmp_data_out_encoder(14) <= data_in(7);
	tmp_data_out_encoder(15) <= data_in(7);
	tmp_data_out_encoder(16) <= data_in(8);
	tmp_data_out_encoder(17) <= data_in(8);
	tmp_data_out_encoder(18) <= data_in(9);
	tmp_data_out_encoder(19) <= data_in(9);
	tmp_data_out_encoder(20) <= data_in(10);
	tmp_data_out_encoder(21) <= data_in(10);
	tmp_data_out_encoder(22) <= data_in(11);
	tmp_data_out_encoder(23) <= data_in(11);
	tmp_data_out_encoder(24) <= data_in(12);
	tmp_data_out_encoder(25) <= data_in(12);
	tmp_data_out_encoder(26) <= data_in(13);
	tmp_data_out_encoder(27) <= data_in(13);
	tmp_data_out_encoder(28) <= data_in(14);
	tmp_data_out_encoder(29) <= data_in(14);
	tmp_data_out_encoder(30) <= data_in(15);
	tmp_data_out_encoder(31) <= data_in(15);
	tmp_data_out_encoder(32) <= data_in(16);
	tmp_data_out_encoder(33) <= data_in(16);
	tmp_data_out_encoder(34) <= data_in(17);
	tmp_data_out_encoder(35) <= data_in(17);
	tmp_data_out_encoder(36) <= data_in(18);
	tmp_data_out_encoder(37) <= data_in(18);
	tmp_data_out_encoder(38) <= data_in(19);
	tmp_data_out_encoder(39) <= data_in(19);
	tmp_data_out_encoder(40) <= data_in(20);
	tmp_data_out_encoder(41) <= data_in(20);
	tmp_data_out_encoder(42) <= data_in(21);
	tmp_data_out_encoder(43) <= data_in(21);
	tmp_data_out_encoder(44) <= data_in(22);
	tmp_data_out_encoder(45) <= data_in(22);
	tmp_data_out_encoder(46) <= data_in(23);
	tmp_data_out_encoder(47) <= data_in(23);
	tmp_data_out_encoder(48) <= data_in(24);
	tmp_data_out_encoder(49) <= data_in(24);
	tmp_data_out_encoder(50) <= data_in(25);
	tmp_data_out_encoder(51) <= data_in(25);
	tmp_data_out_encoder(52) <= data_in(26);
	tmp_data_out_encoder(53) <= data_in(26);
	tmp_data_out_encoder(54) <= data_in(27);
	tmp_data_out_encoder(55) <= data_in(27);
	tmp_data_out_encoder(56) <= data_in(28);
	tmp_data_out_encoder(57) <= data_in(28);
	tmp_data_out_encoder(58) <= data_in(29);
	tmp_data_out_encoder(59) <= data_in(29);
	tmp_data_out_encoder(60) <= data_in(30);
	tmp_data_out_encoder(61) <= data_in(30);
	tmp_data_out_encoder(62) <= data_in(31);
	tmp_data_out_encoder(63) <= data_in(31);
	---Parity bit:
	tmp_data_out_encoder(64) <= data_in(0) xor
							data_in(1) xor
							data_in(2) xor
							data_in(3) xor
							data_in(4) xor
							data_in(5) xor
							data_in(6) xor
							data_in(7) xor
							data_in(8) xor
							data_in(9) xor
							data_in(10) xor
							data_in(11) xor
							data_in(12) xor
							data_in(13) xor
							data_in(14) xor
							data_in(15) xor
							data_in(16) xor
							data_in(17) xor
							data_in(18) xor
							data_in(19) xor
							data_in(20) xor
							data_in(21) xor
							data_in(22) xor
							data_in(23) xor
							data_in(24) xor
							data_in(25) xor
							data_in(26) xor
							data_in(27) xor
							data_in(28) xor
							data_in(29) xor
							data_in(30) xor
							data_in(31);
	
	
---Decoder----
	---Parity bit calculating and comparing-----
	s_err <= tmp_data_out_encoder(64) xor (
												tmp_data_out_encoder(0) xor 
												tmp_data_out_encoder(2) xor
												tmp_data_out_encoder(4) xor
												tmp_data_out_encoder(6) xor
												tmp_data_out_encoder(8) xor
												tmp_data_out_encoder(10) xor
												tmp_data_out_encoder(12) xor
												tmp_data_out_encoder(14) xor
												tmp_data_out_encoder(16) xor
												tmp_data_out_encoder(18) xor
												tmp_data_out_encoder(20) xor
												tmp_data_out_encoder(22) xor
												tmp_data_out_encoder(24) xor
												tmp_data_out_encoder(26) xor
												tmp_data_out_encoder(28) xor
												tmp_data_out_encoder(30) xor
												tmp_data_out_encoder(32) xor
												tmp_data_out_encoder(34) xor
												tmp_data_out_encoder(36) xor
												tmp_data_out_encoder(38) xor
												tmp_data_out_encoder(40) xor
												tmp_data_out_encoder(42) xor
												tmp_data_out_encoder(44) xor
												tmp_data_out_encoder(46) xor
												tmp_data_out_encoder(48) xor
												tmp_data_out_encoder(50) xor
												tmp_data_out_encoder(52) xor
												tmp_data_out_encoder(54) xor
												tmp_data_out_encoder(56) xor
												tmp_data_out_encoder(58) xor
												tmp_data_out_encoder(60) xor
												tmp_data_out_encoder(62) );
												
		----MUXes-----
		d_mux0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(0),
						in1 => tmp_data_out_encoder(1),
						s => s_err,
						mux_out => data_out(0)
					);
					
		d_mux1 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(2),
						in1 => tmp_data_out_encoder(3),
						s => s_err,
						mux_out => data_out(1)
					);
		
		d_mux2 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(4),
						in1 => tmp_data_out_encoder(5),
						s => s_err,
						mux_out => data_out(2)
					);
					
		d_mux3 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(6),
						in1 => tmp_data_out_encoder(7),
						s => s_err,
						mux_out => data_out(3)
					);
					
		d_mux4 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(8),
						in1 => tmp_data_out_encoder(9),
						s => s_err,
						mux_out => data_out(4)
					);
					
		d_mux5 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(10),
						in1 => tmp_data_out_encoder(11),
						s => s_err,
						mux_out => data_out(5)
					);
		
		d_mux6 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(12),
						in1 => tmp_data_out_encoder(13),
						s => s_err,
						mux_out => data_out(6)
					);
					
		d_mux7 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(14),
						in1 => tmp_data_out_encoder(15),
						s => s_err,
						mux_out => data_out(7)
					);
					
		d_mux8 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(16),
						in1 => tmp_data_out_encoder(17),
						s => s_err,
						mux_out => data_out(8)
					);
					
		d_mux9 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(18),
						in1 => tmp_data_out_encoder(19),
						s => s_err,
						mux_out => data_out(9)
					);
		
		d_mux10 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(20),
						in1 => tmp_data_out_encoder(21),
						s => s_err,
						mux_out => data_out(10)
					);
					
		d_mux11 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(22),
						in1 => tmp_data_out_encoder(23),
						s => s_err,
						mux_out => data_out(11)
					);
					
		d_mux12 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(24),
						in1 => tmp_data_out_encoder(25),
						s => s_err,
						mux_out => data_out(12)
					);
					
		d_mux13 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(26),
						in1 => tmp_data_out_encoder(27),
						s => s_err,
						mux_out => data_out(13)
					);
		
		d_mux14 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(28),
						in1 => tmp_data_out_encoder(29),
						s => s_err,
						mux_out => data_out(14)
					);
					
		d_mux15 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(30),
						in1 => tmp_data_out_encoder(31),
						s => s_err,
						mux_out => data_out(15)
					);
					
		d_mux16 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(32),
						in1 => tmp_data_out_encoder(33),
						s => s_err,
						mux_out => data_out(16)
					);
					
		d_mux17 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(34),
						in1 => tmp_data_out_encoder(35),
						s => s_err,
						mux_out => data_out(17)
					);
		
		d_mux18 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(36),
						in1 => tmp_data_out_encoder(37),
						s => s_err,
						mux_out => data_out(18)
					);
					
		d_mux19 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(38),
						in1 => tmp_data_out_encoder(39),
						s => s_err,
						mux_out => data_out(19)
					);
					
		d_mux20 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(40),
						in1 => tmp_data_out_encoder(41),
						s => s_err,
						mux_out => data_out(20)
					);
					
		d_mux21 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(42),
						in1 => tmp_data_out_encoder(43),
						s => s_err,
						mux_out => data_out(21)
					);
		
		d_mux22 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(44),
						in1 => tmp_data_out_encoder(45),
						s => s_err,
						mux_out => data_out(22)
					);
					
		d_mux23 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(46),
						in1 => tmp_data_out_encoder(47),
						s => s_err,
						mux_out => data_out(23)
					);
					
		d_mux24 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(48),
						in1 => tmp_data_out_encoder(49),
						s => s_err,
						mux_out => data_out(24)
					);
					
		d_mux25 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(50),
						in1 => tmp_data_out_encoder(51),
						s => s_err,
						mux_out => data_out(25)
					);
		
		d_mux26 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(52),
						in1 => tmp_data_out_encoder(53),
						s => s_err,
						mux_out => data_out(26)
					);
					
		d_mux27 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(54),
						in1 => tmp_data_out_encoder(55),
						s => s_err,
						mux_out => data_out(27)
					);
					
		d_mux28 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(56),
						in1 => tmp_data_out_encoder(57),
						s => s_err,
						mux_out => data_out(28)
					);
					
		d_mux29 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(58),
						in1 => tmp_data_out_encoder(59),
						s => s_err,
						mux_out => data_out(29)
					);
		
		d_mux30 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(60),
						in1 => tmp_data_out_encoder(61),
						s => s_err,
						mux_out => data_out(30)
					);
					
		d_mux31 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(62),
						in1 => tmp_data_out_encoder(63),
						s => s_err,
						mux_out => data_out(31)
					);


end Behavioral;

