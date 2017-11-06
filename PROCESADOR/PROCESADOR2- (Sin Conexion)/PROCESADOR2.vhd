----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:48:30 10/11/2017 
-- Design Name: 
-- Module Name:    PROCESADOR2 - MAHS 
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

entity PROCESADOR2 is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           resultadoProcesador : out  STD_LOGIC_VECTOR (31 downto 0));
end PROCESADOR2;

architecture MAHS of PROCESADOR2 is

signal dSumadoAnProgra: STD_LOGIC_VECTOR (31 downto 0);

begin


end MAHS;

