----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:15:52 04/18/2022 
-- Design Name: 
-- Module Name:    processor_sady_mohamed_19100178 - Behavioral 
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

entity processor_sady_mohamed_19100178 is
     Port ( clk : in  STD_LOGIC);
end processor_sady_mohamed_19100178;

architecture Behavioral of processor_sady_mohamed_19100178 is

  component reg_file_shady_mohamed_19100178 is
     Port ( readRegnum1 : in  STD_LOGIC_VECTOR (4 downto 0);
           readRegnum2 : in  STD_LOGIC_VECTOR (4 downto 0);
           writeregnum : in  STD_LOGIC_VECTOR (4 downto 0);
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           Regwrite : in  STD_LOGIC;
           readData1 : out  STD_LOGIC_VECTOR (31 downto 0);
           readData2 : out  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC);
  end component;
  
  component PC202_ShadyTarek_19100178 is
    Port ( inp : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           outp : out  STD_LOGIC_VECTOR (31 downto 0));
  end component;
  
  component InstructionMemory is
    Port ( Address : in  STD_LOGIC_VECTOR (31 downto 0);
           Instruction : out  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC);
  end component;
  
  component adder4_ShadyTarek19100178 is
    Port ( in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           outt : out  STD_LOGIC_VECTOR (31 downto 0));
   end component;

  component ShiftLeft_ShadyTarek_19100178 is
    Port ( inputt : in  STD_LOGIC_VECTOR (31 downto 0);
           outputt : out  STD_LOGIC_VECTOR (31 downto 0));
  end component;

  
  component SignExtend_ShadyTarek_19100178 is
    Port ( inputt : in  STD_LOGIC_VECTOR (15 downto 0);
           outputt : out  STD_LOGIC_VECTOR (31 downto 0));
  end component;
  
  component CONTROLUNIT_Shady_19100178 is
    Port ( operation : in  STD_LOGIC_VECTOR (5 downto 0);
           RegDst : out  STD_LOGIC;
           ALUSrc : out  STD_LOGIC;
           MemtoReg : out  STD_LOGIC;
			  RedWrite : out  STD_LOGIC;
			  MemRead : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
           ALUOp0 : out  STD_LOGIC_VECTOR (1 downto 0));
  end component;
  
  component DAtaMemory_shady_mohamed_19100178 is
    Port ( addr : in  STD_LOGIC_VECTOR (31 downto 0);
           w_data : in  STD_LOGIC_VECTOR (31 downto 0);
           r_data : out  STD_LOGIC_VECTOR (31 downto 0);
           mem_w : in  STD_LOGIC;
           mem_r : in  STD_LOGIC;
           clk : in  STD_LOGIC);
  end component;
  
  component ALU_Shady_Mohamed is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           alures : out  STD_LOGIC_VECTOR (31 downto 0);
           zeroflag : out  STD_LOGIC);
  end component;
  
   component alu_control_Shady_Mohamed_19100178 is
    Port ( funcfield : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUOp : in  STD_LOGIC_VECTOR (1 downto 0);
           ALUoperation : out  STD_LOGIC_VECTOR (3 downto 0));
   end component;
	
	component adde_2022_ShadyTarek_19100178 is
    Port ( input1 : in  STD_LOGIC_VECTOR (31 downto 0);
           input2 : in  STD_LOGIC_VECTOR (31 downto 0);
           outputt : out  STD_LOGIC_VECTOR (31 downto 0));
   end component;
	
	component mux32_ShadyTarek_19100178 is
    Port ( in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           in2 : in  STD_LOGIC_VECTOR (31 downto 0);
           s : in  STD_LOGIC;
           outt : out  STD_LOGIC_VECTOR (31 downto 0));
   end component;
	
	component mux5_ShadyTarek_19100178 is
    Port ( in1 : in  STD_LOGIC_VECTOR (4 downto 0);
           in2 : in  STD_LOGIC_VECTOR (4 downto 0);
           s : in  STD_LOGIC;
           outt : out  STD_LOGIC_VECTOR (4 downto 0));
   end component;
	
	component PcMux2to1 is
    Port ( in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           in2 : in  STD_LOGIC_VECTOR (31 downto 0);
           s : in  STD_LOGIC;
           outt : out  STD_LOGIC_VECTOR (31 downto 0));
    end component;
	
	component ALUMUX2to1 is
    Port ( in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           in2 : in  STD_LOGIC_VECTOR (31 downto 0);
           s : in  STD_LOGIC;
           outt : out  STD_LOGIC_VECTOR (31 downto 0));
   end component;
	
	
	









	signal ALUinput1: std_logic_vector(31 downto 0);
	signal ALUinput2: std_logic_vector(31 downto 0);
	signal ALUoutput: std_logic_vector(31 downto 0);
	signal ALUzeroFlag: std_logic;
	signal ALUselect: std_logic_vector(3 downto 0);
	signal PCoutput: std_logic_vector(31 downto 0);
	signal PCinput: std_logic_vector (31 downto 0);
	signal AdderOut: std_logic_vector (31 downto 0);
	signal inputInstruction: std_logic_vector (31 downto 0);
	signal readData2: std_logic_vector (31 downto 0);
	signal dataMemoryOut: std_logic_vector (31 downto 0);
	signal writeDataIn: std_logic_vector (31 downto 0);
	signal MUXregDstOut:std_logic_vector (4 downto 0);
	signal regDst: std_logic;
	signal branch: std_logic;
	signal memRead: std_logic;
	signal memToReg: std_logic;
	signal ALUopControl: std_logic_vector (1 downto 0);
	signal memWrite: std_logic;
	signal ALUSrc: std_logic;
	signal RegWrite: std_logic;
	signal sign_Extend: std_logic_vector (31 downto 0);
	signal shift_Left2: std_logic_vector (31 downto 0);
	signal ALUoutputToPCMUX: std_logic_vector (31 downto 0);
	--signal PCMUXcontrol: std_logic;
	
	
	
begin
  
  
  Inst_PC202_ShadyTarek_19100178: PC202_ShadyTarek_19100178 PORT MAP(
		inp =>PCinput ,
		outp => PCoutput,
		clk => clk
	);
	
	
	Inst_adder4_ShadyTarek19100178: adder4_ShadyTarek19100178 PORT MAP(
		in1 => PCoutput,
		outt => AdderOut
	);
	
	Inst_InstructionMemory: InstructionMemory PORT MAP(
		Address => PCoutput,
		Instruction => inputInstruction,
		clk => clk
	);
	
	Inst_mux5_ShadyTarek_19100178: mux5_ShadyTarek_19100178 PORT MAP(
		in1 => inputInstruction (20 downto 16),
		in2 => inputInstruction (15 downto 11),
		s => regDst,
		outt => MUXregDstOut
	);
	
	
	
	Inst_PcMux2to1: PcMux2to1 PORT MAP(
		in1 => AdderOut,
		in2 =>ALUoutputToPCMUX ,
		s => branch and ALUzeroFlag ,
		outt => PCinput
	);
	
	Inst_reg_file_shady_mohamed_19100178: reg_file_shady_mohamed_19100178 PORT MAP(
		readRegnum1 =>  inputInstruction (25 downto 21),
		readRegnum2 => inputInstruction (20 downto 16),
		writeregnum => MUXregDstOut,
		readData1 =>  ALUinput1,
		readData2 => readData2,
		write_data => writeDataIn,
		Regwrite => RegWrite,
		clk => clk
	);
	
  Inst_mux32_ShadyTarek_19100178: mux32_ShadyTarek_19100178 PORT MAP(
		in1 => ALUoutput,
		in2 => dataMemoryOut ,
		s => memToReg,
		outt => writeDataIn
	);
	
	
	Inst_ALU_Shady_Mohamed: ALU_Shady_Mohamed PORT MAP(
		A => ALUinput1,
		B => ALUinput2 ,
		aluop => ALUselect,
		zeroflag => ALUzeroFlag,
		alures => ALUoutput
	);
	
	Inst_alu_control_Shady_Mohamed_19100178: alu_control_Shady_Mohamed_19100178 PORT MAP(
		ALUop => ALUopControl,
		funcfield => inputInstruction (5 downto 0),
		ALUoperation => ALUselect
	);
	
	Inst_adde_2022_ShadyTarek_19100178: adde_2022_ShadyTarek_19100178 PORT MAP(
		input1 => AdderOut,
		input2 =>shift_Left2 ,
		outputt => ALUoutputToPCMUX
	);
	
	
	Inst_ShiftLeft_ShadyTarek_19100178: ShiftLeft_ShadyTarek_19100178 PORT MAP(
		inputt =>sign_Extend ,
		outputt => shift_Left2
	);
	
	Inst_SignExtend_ShadyTarek_19100178: SignExtend_ShadyTarek_19100178 PORT MAP(
			inputt =>inputInstruction (15 downto 0) ,
			outputt => sign_Extend
		);
		
		Inst_CONTROLUNIT_Shady_19100178: CONTROLUNIT_Shady_19100178 PORT MAP(
		operation => inputInstruction (31 downto 26),
		RegDst => regDst,
		ALUSrc =>ALUSrc ,
		MemtoReg =>memToReg ,
		RedWrite =>RegWrite ,
		MemRead =>memRead ,
		MemWrite  => memWrite,
		Branch =>branch ,
		ALUOp0 => ALUopControl
		
	);
	
	Inst_ALUMUX2to1: ALUMUX2to1 PORT MAP(
		in1 => readData2,
	   in2 => sign_Extend,
		s =>ALUSrc ,
		outt => ALUinput2
	);

  
	 
	 Inst_DAtaMemory_shady_mohamed_19100178: DAtaMemory_shady_mohamed_19100178 PORT MAP(
		addr => ALUoutput,
		mem_r =>memRead ,
		mem_w => memWrite,
		clk =>clk ,
		w_data => readData2,
		r_data => dataMemoryOut
	);


end Behavioral;

