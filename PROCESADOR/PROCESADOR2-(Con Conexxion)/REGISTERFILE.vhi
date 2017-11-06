
-- VHDL Instantiation Created from source file REGISTERFILE.vhd -- 17:28:21 10/11/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT REGISTERFILE
	PORT(
		rs1 : IN std_logic_vector(4 downto 0);
		rs2 : IN std_logic_vector(4 downto 0);
		rd : IN std_logic_vector(4 downto 0);
		datoEscrito : IN std_logic_vector(31 downto 0);
		rst : IN std_logic;          
		crs1 : OUT std_logic_vector(31 downto 0);
		crs2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_REGISTERFILE: REGISTERFILE PORT MAP(
		rs1 => ,
		rs2 => ,
		rd => ,
		datoEscrito => ,
		rst => ,
		crs1 => ,
		crs2 => 
	);


