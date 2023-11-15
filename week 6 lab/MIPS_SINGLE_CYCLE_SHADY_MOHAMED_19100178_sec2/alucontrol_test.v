`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:38:50 03/14/2022
// Design Name:   alu_control_Shady_Mohamed_19100178
// Module Name:   D:/Term 6/Computer_arch/Lab/MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178-20220307T104311Z-001/MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178_sec2/alucontrol_test.v
// Project Name:  MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_control_Shady_Mohamed_19100178
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alucontrol_test;

	// Inputs
	reg [5:0] funcfield;
	reg [1:0] ALUOp;

	// Outputs
	wire [3:0] ALUoperation;

	// Instantiate the Unit Under Test (UUT)
	alu_control_Shady_Mohamed_19100178 uut (
		.funcfield(funcfield), 
		.ALUOp(ALUOp), 
		.ALUoperation(ALUoperation)
	);

	initial begin
		// Initialize Inputs
		funcfield = 0;
		ALUOp = 0;
		#100;
		ALUOp=1; #100;
		ALUOp=2; #100;
		funcfield= 2; #100;
		funcfield= 4; #100;
		funcfield= 5; #100;
		funcfield= 10; #100;
		ALUOp=3 ; #100;
		funcfield= 2; #100;

        
		// Add stimulus here

	end
      
endmodule

