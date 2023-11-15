`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:11:33 03/21/2022
// Design Name:   CONTROLUNIT_Shady_19100178
// Module Name:   D:/Term 6/Computer_arch/Lab/MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178-20220307T104311Z-001/MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178_sec2/controlunittest.v
// Project Name:  MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CONTROLUNIT_Shady_19100178
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module controlunittest;

	// Inputs
	reg [5:0] operation;

	// Outputs
	wire RegDst;
	wire ALUSrc;
	wire MemtoReg;
	wire RedWrite;
	wire MemRead;
	wire MemWrite;
	wire Branch;
	wire [1:0] ALUOp0;

	// Instantiate the Unit Under Test (UUT)
	CONTROLUNIT_Shady_19100178 uut (
		.operation(operation), 
		.RegDst(RegDst), 
		.ALUSrc(ALUSrc), 
		.MemtoReg(MemtoReg), 
		.RedWrite(RedWrite), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.Branch(Branch), 
		.ALUOp0(ALUOp0)
	);

	initial begin
		// Initialize Inputs
		operation = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
     operation=6'b100011; #100;
	  operation=6'b101011; #100;
	  operation=6'b000100; #100;
	end
      
endmodule

