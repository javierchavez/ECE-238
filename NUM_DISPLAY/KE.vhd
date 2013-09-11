----------------------------------------------------------------------------------
-- Engineer: Javier Chavez
-- 
-- Create Date:    09/02/2013 
-- Design Name: 
-- Module Name:    Keypad Encoder(KE) - Behavioral 
-- Project Name: Lab2 - ECE238L
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity KE is
port (
    b : in  std_logic_vector(3 downto 0);
    e : out std_logic_vector(2 downto 0)
  );
end KE;

architecture Behavioral of KE is


begin
--chasing 0
e(0) <= not(
				(not(b(3)) and not(b(2)) and not(b(1)) and b(0)) or 
				(not(b(3)) and b(2) and not(b(1)) and not(b(0)))
				);
--chasing 0				
e(1) <= not(
				(not(b(3)) and not(b(2)) and b(1) and not(b(0))) or 
				(not(b(3)) and not(b(2)) and not(b(1)) and b(0))
				);
				
--chasing 1
e(2) <= not(b(3)) and not(b(2)) and not(b(1)) and not(b(0));


end Behavioral;

