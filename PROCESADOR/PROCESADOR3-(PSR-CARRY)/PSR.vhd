----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:11:39 10/13/2017 
-- Design Name: 
-- Module Name:    PSR - MAHS 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PSR is
    Port ( NZVC : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           carry : out  STD_LOGIC);
end PSR;

architecture MAHS of PSR is
signal PRS: STD_LOGIC_VECTOR(31 downto 0):=(others=>'0');

begin
process(clk, NZVC)
	begin
	if(rising_edge(clk))then
			if(rst = '1') then
				carry <= '0';
			else
				PRS(23 downto 20) <= NZVC;
				carry <= PRS(20);
			end if;
		end if;
end process;
end MAHS;

