
-- VHDL Instantiation Created from source file PSR_MODIFIER.vhd -- 16:33:49 10/13/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT PSR_MODIFIER
	PORT(
		operando1 : IN std_logic_vector(0 to 0);
		operando2 : IN std_logic;
		resulAlu : IN std_logic_vector(31 downto 0);
		opPRS : IN std_logic_vector(5 downto 0);
		rst : IN std_logic;          
		NZVC : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_PSR_MODIFIER: PSR_MODIFIER PORT MAP(
		operando1 => ,
		operando2 => ,
		resulAlu => ,
		opPRS => ,
		rst => ,
		NZVC => 
	);


