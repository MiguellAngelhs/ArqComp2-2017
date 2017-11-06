----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:49:49 10/11/2017 
-- Design Name: 
-- Module Name:    ALU - MAHS 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( entrada1 : in  STD_LOGIC_VECTOR (31 downto 0);
           entrada2 : in  STD_LOGIC_VECTOR (31 downto 0);
           operacion : in  STD_LOGIC_VECTOR (5 downto 0);
			  carry : in STD_LOGIC;
           salidaALU : out  STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture MAHS of ALU is

begin
	process(entrada1, entrada2, operacion, carry)
	begin
		case (operacion) is 
		when "000000" => --Add
			salidaALU <= entrada1 + entrada2;
		when "010000" => --Addcc
			salidaALU <= entrada1 + entrada2;
		when "001000" => --Addx
			salidaALU <= entrada1 + entrada2 + carry;
		when "011000" => --Addxcc
			salidaALU <= entrada1 + entrada2 + carry;
			
		
		when "000100" => --Sub
			salidaALU <= entrada1 - entrada2;
		when "010100" => --Subcc
			salidaALU <= entrada1 - entrada2;
		when "001100" => --Subx
			salidaALU <= entrada1 - entrada2 - carry;
		when "011100" => --Subxcc
			salidaALU <= entrada1 - entrada1 - carry;
			
			
		when "000001" => --And
			salidaALU <= entrada1 and entrada2;
		when "010001" => --Andcc
			salidaALU <=entrada1 and entrada2;
		when "000101" => --AndN
			salidaALU <= entrada1 nand entrada2;
		when "010101" => --AndNcc
			salidaALU <= entrada1 nand entrada2;
			
		when "000010" => --Or
			salidaALU <= entrada1 or entrada2;
		when "010010" => --Orcc
			salidaALU <= entrada1 or entrada2;
			
		when "000110" => --OrN
			salidaALU <= entrada1 nor entrada2;
		when "010110" => --OrNcc
			salidaALU <= entrada1 nor entrada2;
			
		when "000011" => --Xor
			salidaALU <= entrada1 xor entrada2;
		when "010011" => --Xorcc
			salidaALU <= entrada1 xor entrada2;
			
		when "000111" => --Xnor
			salidaALU <= entrada1 xnor entrada2;	
		when "010111" => --Xnorcc
			salidaALU <= entrada1 xnor entrada2;	
				
		when others =>		
		 salidaALU <= (others=>'0');
end case;
end process;

end MAHS;

