----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:48:03 10/11/2017 
-- Design Name: 
-- Module Name:    MUX - MAHS 
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

entity MUX is
    Port ( entradaRF : in  STD_LOGIC_VECTOR (31 downto 0);
           entrada_i : in  STD_LOGIC;
           entradaSEU : in  STD_LOGIC_VECTOR (31 downto 0);
           salidaMUX : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX;

architecture MAHS of MUX is

begin
process (entradaRF, entradaSEU, entrada_i) 
	begin 
		if(entrada_i = '0')then
			salidaMUX <= entradaRF;
		else
			salidaMUX <= entradaSEU;
		end if;
	end process;


end MAHS;

