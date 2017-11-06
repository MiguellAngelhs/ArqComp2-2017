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
           salidaALU : out  STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture MAHS of ALU is

begin
	process(entrada1, entrada2, operacion)
	begin
		if (operacion  = "000000") then      -- Add 
				salidaALU <= entrada1 + entrada2;
		elsif (operacion  = "000100") then   -- Sub 
				salidaALU <= entrada1 - entrada2;			
		elsif (operacion  = "000001") then	-- And 
				salidaALU <= entrada1 and entrada2;		
		elsif (operacion  = "000101")  then	-- andN 
				salidaALU <= entrada1 and  not (entrada2);			
		elsif (operacion  = "000010") then	-- Or 
				salidaALU <= entrada1 or entrada2;
		elsif (operacion  = "000110")  then	-- orN 
				salidaALU <= entrada1 or not (entrada2);
		elsif (operacion  = "000011")  then	-- Xor 
				salidaALU <= entrada1 xor entrada2;
		elsif (operacion  = "000111")  then	-- Xnor 
				salidaALU <= entrada1 xnor entrada1;
		else salidaALU <= (others=>'0');
		end if;
	end process;



end MAHS;

