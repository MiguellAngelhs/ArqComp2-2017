----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:31:21 10/11/2017 
-- Design Name: 
-- Module Name:    PROGRAMCOUNTER - MAHS 
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

entity PROGRAMCOUNTER is
    Port ( entradaPC : in  STD_LOGIC_VECTOR (31 downto 0);
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           salidaPC : out  STD_LOGIC_VECTOR (31 downto 0));
end PROGRAMCOUNTER;

architecture MAHS of PROGRAMCOUNTER is

begin
process (clk, rst, entradaPC)
	begin
		if (rst = '1') then
			salidaPc <= (others => '0');
		else
			if(rising_edge(clk)) then
				salidaPc <= entradaPC;
			end if;
		end if;
end process;



end MAHS;

