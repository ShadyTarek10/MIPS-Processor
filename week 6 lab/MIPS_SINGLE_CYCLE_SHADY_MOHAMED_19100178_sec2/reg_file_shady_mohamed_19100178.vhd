----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:57:11 03/28/2022 
-- Design Name: 
-- Module Name:    reg_file_shady_mohamed_19100178 - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reg_file_shady_mohamed_19100178 is
    Port ( readRegnum1 : in  STD_LOGIC_VECTOR (4 downto 0);
           readRegnum2 : in  STD_LOGIC_VECTOR (4 downto 0);
           writeregnum : in  STD_LOGIC_VECTOR (4 downto 0);
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           Regwrite : in  STD_LOGIC;
           readData1 : out  STD_LOGIC_VECTOR (31 downto 0);
           readData2 : out  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC);
end reg_file_shady_mohamed_19100178;

architecture Behavioral of reg_file_shady_mohamed_19100178 is

type registerfile is array (0 to 31 ) of STD_LOGIC_VECTOR (31 downto 0);

signal registers: registerfile := (

  x"00000000" , x"00000000",
  x"00000000" , x"00000000",
  x"00000005" , x"00000007",
  x"00000000" , x"00000000",
  x"00000000" , x"00000000",
  x"00000000" , x"00000000",
  x"00000000" , x"00000000",
  x"00000000" , x"00000000",
  x"00000000" , x"00000000",
  x"00000000" , x"00000000",
  x"00000000" , x"00000000",
  x"00000000" , x"00000000",
  x"00000000" , x"00000000",
  x"00000000" , x"00000000",
  x"00000000" , x"00000000",
  x"00000000" , x"00000000");


begin
 
 process(Regwrite,clk,readRegnum1,readRegnum2,writeregnum,write_data)
begin
  readData1 <= registers (to_integer(unsigned( readRegnum1)));
    readData2 <= registers (to_integer(unsigned( readRegnum2)));

if rising_edge(clk) and Regwrite='1' then
registers(to_integer(unsigned(writeregnum)))<= write_data;
end if;
end process;
end Behavioral;

