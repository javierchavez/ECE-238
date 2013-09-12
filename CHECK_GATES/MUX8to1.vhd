----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Javier Chavez
-- 
-- Create Date:    18:21:55 09/11/2013 
-- Design Name: 
-- Module Name:    MUX8to1 - 8 to 1 Multiplexer 
-- Project Name: Lab3
------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX8to1 is
    Port ( D : in  STD_LOGIC_VECTOR (7 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           MUX_OUT : out  STD_LOGIC);
end MUX8to1;

architecture Behavioral of MUX8to1 is

begin
    MUX_OUT <=  D(0) when s= "000" else
                    D(1) when s= "001" else
                    D(2) when s= "010" else
                    D(3) when s= "011" else
                    D(4) when s= "100" else
                    D(5) when s= "101" else
                    D(6) when s= "110" else
                    D(7);
end Behavioral;

