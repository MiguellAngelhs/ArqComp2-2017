--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:04:18 10/11/2017
-- Design Name:   
-- Module Name:   H:/PROCESADOR/TB_NEXPROGRAMCOUNTER.vhd
-- Project Name:  PROCESADOR
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: NEXTPROGRAMCOUNTER
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
 
ENTITY TB_NEXPROGRAMCOUNTER IS
END TB_NEXPROGRAMCOUNTER;
 
ARCHITECTURE behavior OF TB_NEXPROGRAMCOUNTER IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT NEXTPROGRAMCOUNTER
    PORT(
         entradaNPC : IN  std_logic_vector(31 downto 0);
         rst : IN  std_logic;
         clk : IN  std_logic;
         salidaNPC : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal entradaNPC : std_logic_vector(31 downto 0) := (others => '0');
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal salidaNPC : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: NEXTPROGRAMCOUNTER PORT MAP (
          entradaNPC => entradaNPC,
          rst => rst,
          clk => clk,
          salidaNPC => salidaNPC
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	
		 rst <= '1';
			wait for 20 ns;	
			rst <= '0'; 
			entradaNPC <= x"00000001";       
			wait for 20 ns;
			entradaNPC <= x"00000002";
			wait for 20 ns;
			entradaNPC <= x"00000003";
			wait for 20 ns;
			rst <= '0'; 
		 wait;
   end process;

END;
