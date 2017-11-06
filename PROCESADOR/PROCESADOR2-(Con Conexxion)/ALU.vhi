
-- VHDL Instantiation Created from source file ALU.vhd -- 17:42:38 10/11/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		entrada1 : IN std_logic_vector(31 downto 0);
		entrada2 : IN std_logic_vector(31 downto 0);
		operacion : IN std_logic_vector(5 downto 0);          
		salidaALU : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		entrada1 => ,
		entrada2 => ,
		operacion => ,
		salidaALU => 
	);


