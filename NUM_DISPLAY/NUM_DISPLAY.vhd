----------------------------------------------------------------------------------
-- Engineer: Javier Chavez
-- 
-- Create Date:    09/02/2013 
-- Design Name: 
-- Module Name:    NUM_DISPLAY - Behavioral 
-- Project Name: Lab2 - ECE238L
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity NUM_DISPLAY is
    Port ( b : in  std_logic_vector(3 downto 0);
			  EN: out std_logic_vector(3 downto 0);
			  s : out  STD_LOGIC_VECTOR (7 downto 0));
end NUM_DISPLAY;

architecture Behavioral of NUM_DISPLAY is
	--settting up DDD componant
   component DDD
    port(
         e : in  STD_LOGIC_VECTOR (2 downto 0);
         s : out  STD_LOGIC_VECTOR (7 downto 0));
    end component;
	 --settting up KE componant
	 component KE
    port(
         b : in  std_logic_vector(3 downto 0);
         e : out std_logic_vector(2 downto 0));
    end component;
	 --"variables"
	 signal e : std_logic_vector(2 downto 0);
	 signal led : std_logic_vector(7 downto 0);
begin

-- KE b is input for button e is output
kel : KE port map(
	b => b,
	e => e
);
-- e is input and s output get sent to led
didd : DDD port map(
		e => e,
		s => led
);

--setting which display to output to
EN <= "0000"; --here I have them all ON(0000)

--final output is inverted
s <= not(led);

end Behavioral;

