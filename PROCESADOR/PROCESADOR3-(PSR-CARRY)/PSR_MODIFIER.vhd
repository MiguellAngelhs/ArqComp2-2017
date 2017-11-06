----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:50:36 10/13/2017 
-- Design Name: 
-- Module Name:    PSR_MODIFIER - Behavioral 
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

entity PSR_MODIFIER is
    Port ( operando1 : in  STD_LOGIC;
           operando2 : in  STD_LOGIC;
           resulAlu : in  STD_LOGIC_VECTOR (31 downto 0);
           opPRS : in  STD_LOGIC_VECTOR (5 downto 0);
           rst : in  STD_LOGIC;
           NZVC : out  STD_LOGIC_VECTOR (3 downto 0));
end PSR_MODIFIER;

architecture MAHS of PSR_MODIFIER is

begin
process(resulAlu,operando1,operando2,opPRS)--rst
begin
	if(rst = '1')then
		NZVC <= "0000";
	else
		if(opPRS = "010001" or opPRS = "011000")then--ADDCC ADDXCC
			NZVC(3) <= resulAlu(31);	
			if(resulAlu = X"00000000")then
					NZVC(2) <= '1';
			else
					NZVC(2) <= '0';
			end if;
			NZVC(1) <= (operando1 and operando2 and (not resulAlu(31))) or ((not operando1) and (not operando2) and resulAlu(31));
			NZVC(0) <= (operando1 and operando2) or ((not resulAlu(31)) and (operando1 or operando2));
	else
			if(opPRS = "010100" or opPRS = "011100")then--SUBCC  SUBXCC
				NZVC(3) <= resulAlu(31);
				if(resulAlu = X"00000000")then
						NZVC(2) <= '1';
				else
						NZVC(2) <= '0';
				end if;
				NZVC(1) <= ((operando1 and (not operando2) and (not resulAlu(31))) or ((not operando1) and operando2 and resulAlu(31)));				
				NZVC(0) <= ((not operando1) and operando2) or (resulAlu(31) and ((not operando1) or operando2));
			else
				if(opPRS = "000101" or opPRS = "000111" or opPRS = "001001" or opPRS = "001011" or opPRS = "001101" or opPRS = "001111")then
					NZVC(3) <= resulAlu(31);
					if(resulAlu = X"00000000")then
						NZVC(2) <= '1';
					else
						NZVC(2) <= '0';
					end if;
					NZVC(1) <= '0';
					NZVC(0) <= '0';
				end if;
		end if;
	end if;
	end if;
end process;
end MAHS;

