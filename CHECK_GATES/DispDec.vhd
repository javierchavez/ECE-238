----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Javier Chavez
-- 
-- Create Date:    18:21:55 09/11/2013 
-- Design Name: 
-- Module Name:    DispDec - Display Decoder 
-- Project Name: Lab3
------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity DispDec is
    Port ( MUX_OUT : in  STD_LOGIC;
           B : out  STD_LOGIC_VECTOR (7 downto 0));
end DispDec;

architecture Behavioral of DispDec is

begin

    -- array of not gates
    b(0) <=  '0'; --    top most seg        NOT NEEDED
    b(1) <=  MUX_OUT;  --   right top 
    b(2) <=  MUX_OUT;  --   right botton 
    b(3) <=  not MUX_OUT; -- bottom
    b(4) <=  '1'; --    left bottom always on
    b(5) <=  '1'; --    left top        always on
    b(6) <=  MUX_OUT; --    middle      
    b(7) <=  '0'; --    decimal point   NOT NEEDED


end Behavioral;

