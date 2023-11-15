----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:05:53 02/28/2022 
-- Design Name: 
-- Module Name:    Mux4to1 - Behavioral 
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

entity Mux4to1 is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           i3 : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
			  outp : out  STD_LOGIC );
end Mux4to1;

architecture Behavioral of Mux4to1 is
component Mux2to1_19100178 is
    Port ( s0 : in  STD_LOGIC;
           i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           y : out  STD_LOGIC);
end component;

signal sig1: STD_LOGIC;
signal sig2 : STD_LOGIC;

begin

m1: Mux2to1_19100178 port map(
 i0=>i0,
 i1=>i1,
 s0=>s0,
 y=>sig1);
 
m2: Mux2to1_19100178 port map(
 i0=>i2,
 i1=>i3,
 s0=>s0,
 y=>sig2); 

m3: Mux2to1_19100178 port map(
 i0=>sig1,
 i1=>sig2,
 s0=>s1,
 y=>outp);  

end Behavioral;

