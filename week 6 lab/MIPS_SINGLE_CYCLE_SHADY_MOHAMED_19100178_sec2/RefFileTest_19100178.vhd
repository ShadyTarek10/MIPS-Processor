--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:29:03 03/28/2022
-- Design Name:   
-- Module Name:   D:/Student/Downloads/Lab-20220321T112146Z-001/Lab/MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178-20220307T104311Z-001/MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178_sec2/RefFileTest_19100178.vhd
-- Project Name:  MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_Shady_Mohamed
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY RefFileTest_19100178 IS
END RefFileTest_19100178;
 
ARCHITECTURE behavior OF RefFileTest_19100178 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_Shady_Mohamed
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         aluop : IN  std_logic_vector(3 downto 0);
         alures : OUT  std_logic_vector(31 downto 0);
         zeroflag : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal aluop : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal alures : std_logic_vector(31 downto 0);
   signal zeroflag : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_Shady_Mohamed PORT MAP (
          A => A,
          B => B,
          aluop => aluop,
          alures => alures,
          zeroflag => zeroflag
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
