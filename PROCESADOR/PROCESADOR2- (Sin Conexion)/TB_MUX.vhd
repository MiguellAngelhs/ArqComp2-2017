--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:59:47 10/11/2017
-- Design Name:   
-- Module Name:   H:/PROCESADOR/TB_MUX.vhd
-- Project Name:  PROCESADOR
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_MUX IS
END TB_MUX;
 
ARCHITECTURE behavior OF TB_MUX IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX
    PORT(
         entradaRF : IN  std_logic_vector(31 downto 0);
         entrada_i : IN  std_logic;
         entradaSEU : IN  std_logic_vector(31 downto 0);
         salidaMUX : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal entradaRF : std_logic_vector(31 downto 0) := (others => '0');
   signal entrada_i : std_logic := '0';
   signal entradaSEU : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal salidaMUX : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 --  constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX PORT MAP (
          entradaRF => entradaRF,
          entrada_i => entrada_i,
          entradaSEU => entradaSEU,
          salidaMUX => salidaMUX
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
----		<clock> <= '0';
	--	wait for <clock>_period/2;
	--	<clock> <= '1';
	--	wait for <clock>_period/2;
 --  end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      entradaRF <= x"00000008";
		entradaSEU <=x"00000003";
		entrada_i <= '1';
      wait for 20 ns;
   end process;

END;
