----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:00:36 10/11/2017 
-- Design Name: 
-- Module Name:    PROCESADOR2 - Behavioral 
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
           salidaProcesador : out  STD_LOGIC_VECTOR (31 downto 0));
end PROCESADOR2;

architecture MAHS of PROCESADOR2 is

-----------------CONEXION SUMADOR
COMPONENT SUMADOR
	PORT(
		a : IN std_logic_vector(31 downto 0);
		b : IN std_logic_vector(31 downto 0);          
		salidaSumador : OUT std_logic_vector(31 downto 0));
		
	END COMPONENT;


-----------------CONEXION NEXT PROGRAM COUNTER
COMPONENT NEXTPROGRAMCOUNTER
	PORT(
		entradaNPC : IN std_logic_vector(31 downto 0);
		rst : IN std_logic;
		clk : IN std_logic;          
		salidaNPC : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;


-----------------CONEXION PROGRAM COUNTER

COMPONENT PROGRAMCOUNTER
	PORT(
		entradaPC : IN std_logic_vector(31 downto 0);
		rst : IN std_logic;
		clk : IN std_logic;          
		salidaPC : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

-----------------CONEXION MEMORIA

COMPONENT instructionMemory
	PORT(
		address : IN std_logic_vector(31 downto 0);
		reset : IN std_logic;          
		outInstruction : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

-----------------CONEXION UNIDAD CONTROL
COMPONENT UNIDADCONTROL
	PORT(
		op : IN std_logic_vector(1 downto 0);
		op3 : IN std_logic_vector(5 downto 0);          
		salidaUC : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

-----------------CONEXION REGISTER FILE

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

-----------------CONEXION MUX
	COMPONENT MUX
	PORT(
		entradaRF : IN std_logic_vector(31 downto 0);
		entrada_i : IN std_logic;
		entradaSEU : IN std_logic_vector(31 downto 0);          
		salidaMUX : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;


-----------------CONEXION SEU

COMPONENT SEU
	PORT(
		inmediato : IN std_logic_vector(12 downto 0);          
		salidaSEU : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;


-----------------CONEXION ALU
COMPONENT ALU
	PORT(
		entrada1 : IN std_logic_vector(31 downto 0);
		entrada2 : IN std_logic_vector(31 downto 0);
		operacion : IN std_logic_vector(5 downto 0); 
		carry : IN std_logic;
		salidaALU : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;


-----------------CONEXION PSR MODIFIER

COMPONENT PSR_MODIFIER
	PORT(
		operando1 : IN std_logic;
		operando2 : IN std_logic;
		resulAlu : IN std_logic_vector(31 downto 0);
		opPRS : IN std_logic_vector(5 downto 0);
		rst : IN std_logic;          
		NZVC : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

-----------------CONEXION PSR

COMPONENT PSR
	PORT(
		NZVC : IN std_logic_vector(3 downto 0);
		clk : IN std_logic;
		rst : IN std_logic;          
		carry : OUT std_logic
		);
	END COMPONENT;
	
----------------------------

signal dSumador_A_nProgran, dNexProgram_A_ProgramC, dProgramC_A_Memoria, dMemoria_A_UC_RF_SEU, DatoEcritoAlu, contenidoRf1_Alu, contenidoRf2_Mux, dSeu_A_Mux, dMux_A_Alu : STD_LOGIC_VECTOR (31 downto 0);
signal dUc_A_Alu  : STD_LOGIC_VECTOR (5 downto 0);
signal dPRS_MODIFIER_A_PRS: STD_LOGIC_VECTOR (3 downto 0);
signal dPRS_A_ALU: STD_LOGIC;
begin

-----------------CONEXION SUMADOR

Inst_SUMADOR: SUMADOR PORT MAP(
		a => x"00000001",
		b => dProgramC_A_Memoria,
		salidaSumador => dSumador_A_nProgran
	);

-----------------CONEXION NEXT PROGRAM COUNTER 

Inst_NEXTPROGRAMCOUNTER: NEXTPROGRAMCOUNTER PORT MAP(
		entradaNPC => dSumador_A_nProgran,
		rst => rst,
		clk => clk,
		salidaNPC =>dNexProgram_A_ProgramC 
	);

-----------------CONEXION PROGRAM COUNTER

	Inst_PROGRAMCOUNTER: PROGRAMCOUNTER PORT MAP(
		entradaPC =>dNexProgram_A_ProgramC ,
		rst =>rst ,
		clk => clk,
		salidaPC =>dProgramC_A_Memoria  
	);


-----------------CONEXION MEMORIA

	Inst_instructionMemory: instructionMemory PORT MAP(
		address => dProgramC_A_Memoria,
		reset =>rst,
		outInstruction => dMemoria_A_UC_RF_SEU
	);

-----------------CONEXION UNIDAD CONTROL

Inst_UNIDADCONTROL: UNIDADCONTROL PORT MAP(
		op => dMemoria_A_UC_RF_SEU(31 DOWNTO 30),
		op3 =>dMemoria_A_UC_RF_SEU(24 DOWNTO 19) ,
		salidaUC => dUc_A_Alu
	);

-----------------CONEXION REGISTER FILE

	Inst_REGISTERFILE: REGISTERFILE PORT MAP(
		rs1 => dMemoria_A_UC_RF_SEU(18 DOWNTO 14),
		rs2 => dMemoria_A_UC_RF_SEU(4 DOWNTO 0) ,
		rd => dMemoria_A_UC_RF_SEU(29 DOWNTO 25),
		datoEscrito => DatoEcritoAlu,
		rst => rst ,
		crs1 =>contenidoRf1_Alu,
		crs2 => contenidoRf2_Mux 
	);


-----------------CONEXION MUX

	Inst_MUX: MUX PORT MAP(
		entradaRF =>contenidoRf2_Mux ,
		entrada_i => dMemoria_A_UC_RF_SEU(13),
		entradaSEU => dSeu_A_Mux,
		salidaMUX =>dMux_A_Alu  
	);


-----------------CONEXION SEU

	Inst_SEU: SEU PORT MAP(
		inmediato => dMemoria_A_UC_RF_SEU(12 DOWNTO 0),
		salidaSEU =>dSeu_A_Mux 
	);
	
-----------------CONEXION ALU

	Inst_ALU: ALU PORT MAP(
		entrada1 =>contenidoRf1_Alu ,
		entrada2 =>dMux_A_Alu ,
		operacion => dUc_A_Alu,
 		carry => dPRS_A_ALU,
		salidaALU => DatoEcritoAlu
	);
	
-----------------CONEXION PSR MODIFIER

	Inst_PSR_MODIFIER: PSR_MODIFIER PORT MAP(
		operando1 =>contenidoRf1_Alu(31),
		operando2 =>dMux_A_Alu(31) ,
		resulAlu =>DatoEcritoAlu,
		opPRS => dUc_A_Alu,
		rst => rst,
		NZVC =>dPRS_MODIFIER_A_PRS
	);
	
-----------------CONEXION PSR

	Inst_PSR: PSR PORT MAP(
		NZVC =>dPRS_MODIFIER_A_PRS ,
		clk => clk,
		rst =>rst ,
		carry => dPRS_A_ALU
	);


-----------------------------

salidaProcesador <= DatoEcritoAlu;

end MAHS;

