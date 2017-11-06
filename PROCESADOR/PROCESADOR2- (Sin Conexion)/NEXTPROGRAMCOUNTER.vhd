----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:30:11 10/11/2017 
-- Design Name: 
-- Module Name:    NEXTPROGRAMCOUNTER - MAHS 
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

entity NEXTPROGRAMCOUNTER is
    Port ( entradaNPC : in  STD_LOGIC_VECTOR (31 downto 0);
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           salidaNPC : out  STD_LOGIC_VECTOR (31 downto 0));
end NEXTPROGRAMCOUNTER;

architecture MAHS of NEXTPROGRAMCOUNTER is

begin
process (clk, rst, entradaNPC)
	begin
		if (rst = '1') then
			salidaNPC <= (others => '0');
		else
			if(rising_edge(clk)) then
				salidaNPC <= entradaNPC;
			end if;
		end if;
end process;


end MAHS;

