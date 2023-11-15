----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:53:48 02/28/2022 
-- Design Name: 
-- Module Name:    Mux2to1_19100178 - Behavioral 
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

entity Mux2to1_19100178 is
    Port ( s0 : in  STD_LOGIC;
           i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           y : out  STD_LOGIC);
end Mux2to1_19100178;

architecture Behavioral of Mux2to1_19100178 is

begin

   process(i0,i1,s0)
   begin
      if s0='0' then
         y<=i0;
      else
         y<=i1 ;
      end if;
end process;
end Behavioral;

