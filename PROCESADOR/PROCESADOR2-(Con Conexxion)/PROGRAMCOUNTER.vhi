
-- VHDL Instantiation Created from source file PROGRAMCOUNTER.vhd -- 17:15:03 10/11/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT PROGRAMCOUNTER
	PORT(
		entradaPC : IN std_logic_vector(31 downto 0);
		rst : IN std_logic;
		clk : IN std_logic;          
		salidaPC : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_PROGRAMCOUNTER: PROGRAMCOUNTER PORT MAP(
		entradaPC => ,
		rst => ,
		clk => ,
		salidaPC => 
	);


