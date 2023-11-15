`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:29:32 05/04/2022
// Design Name:   DAtaMemory_shady_mohamed_19100178
// Module Name:   D:/Term 6/Computer_arch/week 6 lab-20220404T095516Z-003/week 6 lab/MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178_sec2/Data_Memory_Test.v
// Project Name:  MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DAtaMemory_shady_mohamed_19100178
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Data_Memory_Test;

	// Inputs
	reg [31:0] addr;
	reg [31:0] w_data;
	reg mem_w;
	reg mem_r;
	reg clk;

	// Outputs
	wire [31:0] r_data;

	// Instantiate the Unit Under Test (UUT)
	DAtaMemory_shady_mohamed_19100178 uut (
		.addr(addr), 
		.w_data(w_data), 
		.r_data(r_data), 
		.mem_w(mem_w), 
		.mem_r(mem_r), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		addr = 0;
		w_data = 0;
		mem_w = 0;
		mem_r = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

