library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Module_2 is
    Port ( SEL : in  STD_LOGIC;
           AX : out  STD_LOGIC_VECTOR (3 downto 0));
end Module_2;

architecture Behavioral of Module_2 is

begin

AX<= "1110" when SEL = '0' else
     "0111";

end Behavioral;

