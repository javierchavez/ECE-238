----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Javier Chavez
-- 
-- Create Date:    18:21:55 09/11/2013 
-- Design Name: 
-- Module Name:    Check Gates
-- Project Name: Lab3
------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity CHECK_GATES is
    Port ( SW : in  STD_LOGIC_VECTOR (1 downto 0);
        SWSEL : in  STD_LOGIC_VECTOR (2 downto 0);
           AX : out  STD_LOGIC_VECTOR (3 downto 0);
        LED : out  STD_LOGIC_VECTOR (4 downto 0);
           DISP : out  STD_LOGIC_VECTOR (7 downto 0));
end CHECK_GATES;

architecture Behavioral of CHECK_GATES is


component MUX8to1 is
    Port ( D : in  STD_LOGIC_VECTOR (7 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           MUX_OUT : out  STD_LOGIC);
end component;


component DispDec is
    Port ( MUX_OUT : in  STD_LOGIC;
           B : out  STD_LOGIC_VECTOR (7 downto 0));
end component;


signal D : STD_LOGIC_VECTOR (7 downto 0);
signal mo : STD_LOGIC;
signal segs : STD_LOGIC_VECTOR (7 downto 0);


begin

-- GATES Mod 1
D(0) <= SW(0);
D(1) <= not(SW(0));
D(2) <= SW(0) and SW(1);
D(3) <= SW(0) or SW(1);
D(4) <= not(SW(0) and SW(1));
D(5) <= SW(0) nor SW(1);
D(6) <= SW(0) xor SW(1);
D(7) <= SW(0) xnor SW(1);

-- MUX Mod 2
MUX : MUX8to1 port map(
  D => D,
  S => SWSEL,
  MUX_OUT => mo
);
-- DispDec Mod3
DD : DispDec port map(
    MUX_OUT => mo,
    B => segs
);

-- Active LOW display
DISP <= not (segs);

-- Helps show what switches are active.
LED <= "11111";

--activate the first segment
AX <= "0111";


end Behavioral;

