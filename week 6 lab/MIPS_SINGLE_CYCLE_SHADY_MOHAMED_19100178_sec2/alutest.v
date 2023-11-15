`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:25:01 03/07/2022
// Design Name:   ALU_Shady_Mohamed
// Module Name:   D:/Student/Downloads/MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178-20220307T104311Z-001/MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178/alutest.v
// Project Name:  MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_Shady_Mohamed
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alutest;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [3:0] aluop;

	// Outputs
	wire [31:0] alures;
	wire zeroflag;

	// Instantiate the Unit Under Test (UUT)
	ALU_Shady_Mohamed uut (
		.A(A), 
		.B(B), 
		.aluop(aluop), 
		.alures(alures), 
		.zeroflag(zeroflag)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		aluop = 0; #100;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
  A=6;
  B=3;
  aluop = 0; #100;
  aluop = 1; #100;
  aluop = 2; #100;
  aluop = 6; #100;
  aluop = 7; #100;
  aluop = 12; #100;
  B=7; #100;
  
	end
      
endmodule

