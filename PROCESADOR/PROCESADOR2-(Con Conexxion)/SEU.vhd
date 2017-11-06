----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:44:34 10/11/2017 
-- Design Name: 
-- Module Name:    SEU - MAHS 
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

entity SEU is
    Port ( inmediato : in  STD_LOGIC_VECTOR (12 downto 0);
           salidaSEU : out  STD_LOGIC_VECTOR (31 downto 0));
end SEU;

architecture MAHS of SEU is

begin
process(inmediato)
	begin
		SalidaSEU(12 downto 0) <= inmediato;
		if (inmediato(12) = '0')then
			SalidaSEU(31 	downto 13) <= (others=>'0');
		else
			SalidaSEU(31 downto 13) <= (others=>'1');
		end if;
	end process;


end MAHS;

