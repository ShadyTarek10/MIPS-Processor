--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:37:22 03/28/2022
-- Design Name:   
-- Module Name:   D:/Student/Downloads/Lab-20220321T112146Z-001/Lab/MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178-20220307T104311Z-001/MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178_sec2/REgFileTest_Shady19100178.vhd
-- Project Name:  MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: reg_file_shady_mohamed_19100178
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
 
ENTITY REgFileTest_Shady19100178 IS
END REgFileTest_Shady19100178;
 
ARCHITECTURE behavior OF REgFileTest_Shady19100178 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reg_file_shady_mohamed_19100178
    PORT(
         readRegnum1 : IN  std_logic_vector(4 downto 0);
         readRegnum2 : IN  std_logic_vector(4 downto 0);
         writeregnum : IN  std_logic_vector(4 downto 0);
         write_data : IN  std_logic_vector(31 downto 0);
         Regwrite : IN  std_logic;
         readData1 : OUT  std_logic_vector(31 downto 0);
         readData2 : OUT  std_logic_vector(31 downto 0);
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal readRegnum1 : std_logic_vector(4 downto 0) := (others => '0');
   signal readRegnum2 : std_logic_vector(4 downto 0) := (others => '0');
   signal writeregnum : std_logic_vector(4 downto 0) := (others => '0');
   signal write_data : std_logic_vector(31 downto 0) := (others => '0');
   signal Regwrite : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal readData1 : std_logic_vector(31 downto 0);
   signal readData2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg_file_shady_mohamed_19100178 PORT MAP (
          readRegnum1 => readRegnum1,
          readRegnum2 => readRegnum2,
          writeregnum => writeregnum,
          write_data => write_data,
          Regwrite => Regwrite,
          readData1 => readData1,
          readData2 => readData2,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		readRegnum1 <= "00000";
		readRegnum2 <= "00001";
		wait for 100 ns;
		Regwrite<='1';
		writeregnum <= "01101";
		write_data<= x"12470000";


      wait;
   end process;

END;
