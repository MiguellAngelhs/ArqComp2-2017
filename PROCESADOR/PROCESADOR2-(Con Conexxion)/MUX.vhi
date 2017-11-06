
-- VHDL Instantiation Created from source file MUX.vhd -- 17:36:53 10/11/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT MUX
	PORT(
		entradaRF : IN std_logic_vector(31 downto 0);
		entrada_i : IN std_logic;
		entradaSEU : IN std_logic_vector(31 downto 0);          
		salidaMUX : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_MUX: MUX PORT MAP(
		entradaRF => ,
		entrada_i => ,
		entradaSEU => ,
		salidaMUX => 
	);


