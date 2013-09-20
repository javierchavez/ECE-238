library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Module_1 is
    Port ( S : in  STD_LOGIC_VECTOR (4 downto 0);
           D : out  STD_LOGIC_VECTOR (6 downto 0));
end Module_1;

architecture Behavioral of Module_1 is

begin

D<= "1000000" when s="00000" else
    "1111001" when s="00001" else
    "0100100" when s="00010" else
    "0110000" when s="00011" else
    "0011001" when s="00100" else
    "0010010" when s="00101" else
    "0000010" when s="00110" else
    "1111000" when s="00111" else
    "0000000" when s="01000" else
    "0010000" when s="01001" else
    "0001000" when s="01010" else
    "0000011" when s="01011" else
    "1000110" when s="01100" else
    "0100001" when s="01101" else
    "0000110" when s="01110" else
    "0001110" when s="01111" else
    "0000000";
    

end Behavioral;

