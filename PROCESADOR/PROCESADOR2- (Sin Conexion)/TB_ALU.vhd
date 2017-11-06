--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:56:25 10/11/2017
-- Design Name:   
-- Module Name:   H:/PROCESADOR/TB_ALU.vhd
-- Project Name:  PROCESADOR
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_ALU IS
END TB_ALU;
 
ARCHITECTURE behavior OF TB_ALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         entrada1 : IN  std_logic_vector(31 downto 0);
         entrada2 : IN  std_logic_vector(31 downto 0);
         operacion : IN  std_logic_vector(5 downto 0);
         salidaALU : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal entrada1 : std_logic_vector(31 downto 0) := (others => '0');
   signal entrada2 : std_logic_vector(31 downto 0) := (others => '0');
   signal operacion : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal salidaALU : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
---   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          entrada1 => entrada1,
          entrada2 => entrada2,
          operacion => operacion,
          salidaALU => salidaALU
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      entrada1 <= x"00000003";
		entrada2 <= x"00000001";
	
      operacion <= "000100";
	
		
      wait;
   end process;

END;
