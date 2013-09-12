----------------------------------------------------------------------------------
-- Engineer: Javier Chavez
-- 
-- Create Date:    09/02/2013 
-- Design Name: 
-- Module Name:    Decimal Display Decoder(DDD) - Behavioral 
-- Project Name: Lab2 - ECE238L
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DDD is
    Port ( e : in  STD_LOGIC_VECTOR (2 downto 0);
           s : out  STD_LOGIC_VECTOR (7 downto 0));
end DDD;

architecture Behavioral of DDD is

begin

--chasing 1
s(7) <= (not(e(2)) and e(1) and not(e(0))) or 
            (not(e(2)) and e(1) and e(0));
            
--chasing 1
s(6) <= not(e(2)) and not(e(1)) and not(e(0));

--chasing 0
s(5) <= not(
                (not(e(2)) and not(e(1)) and e(0)) or
                (not(e(2)) and e(1) and e(0)) or
                (e(2) and e(1) and e(0))
                );
--chasing 1         
--s(5) <= (not(e(2)) or not(e(1)) or not(e(0))) and
--          (not(e(2)) or e(1) or not(e(0)));
                
--chasing 0
s(4) <= not(
                (not(e(2)) and not(e(1)) and e(0)) or
                (e(2) and e(1) and e(0))
                );
--chasing 0     
s(3) <= not(
                (not(e(2)) and e(1) and not(e(0))) or 
                (e(2) and e(1) and e(0)) 
                );
--chasing 0     
s(2) <= not(e(2) and e(1) and e(0));

--chasing 0
s(1) <= not(
                (not(e(2)) and not(e(1)) and e(0)) or
                (e(2) and e(1) and e(0))
                );
--decimal point is never on
s(0) <= not('1');


end Behavioral;

