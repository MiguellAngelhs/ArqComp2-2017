----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:36:27 10/11/2017 
-- Design Name: 
-- Module Name:    REGISTERFILE - MAHS 
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

entity REGISTERFILE is
    Port ( rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           rd : in  STD_LOGIC_VECTOR (4 downto 0);
           datoEscrito : in  STD_LOGIC_VECTOR (31 downto 0);
           rst : in  STD_LOGIC;
           crs1 : out  STD_LOGIC_VECTOR (31 downto 0);
           crs2 : out  STD_LOGIC_VECTOR (31 downto 0));
end REGISTERFILE;

architecture MAHS of REGISTERFILE is

	type ram is array (0 to 31) of STD_LOGIC_VECTOR (31 downto 0);
	signal registro : ram :=(others => x"00000000");

begin
process(rst, rs1, rs2, rd, datoEscrito)
	begin
			if(rst = '1')then
				crs1 <= (others=>'0');
				crs2 <= (others=>'0');
				registro <= (others => x"00000000");
			else
 					crs1 <= registro(conv_integer(rs1));
					crs2 <= registro(conv_integer(rs2));
				if(rd /= "00000")then  
					registro(conv_integer(rd)) <= datoEscrito;
				end if;
			end if;
			
	end process;

end MAHS;

