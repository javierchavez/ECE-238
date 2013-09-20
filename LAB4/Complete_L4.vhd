library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Complete_L4 is
    Port ( S : in  STD_LOGIC_VECTOR (4 downto 0);
           SEL: in STD_LOGIC;
           AX : out  STD_LOGIC_VECTOR (3 downto 0);
           D : out STD_LOGIC_VECTOR (7 downto 0);
           L : out  STD_LOGIC);
end Complete_L4;

architecture Behavioral of Complete_L4 is
component Module_1 is
    Port ( S : in  STD_LOGIC_VECTOR (4 downto 0);
           D : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component Module_2 is
    Port ( SEL : in  STD_LOGIC;
           AX : out  STD_LOGIC_VECTOR (3 downto 0));
end component;


begin

L <= S(4);
D(7) <= not S(4);

Javier: Module_1 PORT MAP (
          S => S,
          D(0) => D(0),
          D(1) => D(1),
          D(2) => D(2),
          D(3) => D(3),
          D(4) => D(4),
          D(5) => D(5),
          D(6) => D(6)
        );
        
Matt: Module_2 PORT MAP (
          SEL => SEL,
          AX => AX
        );

end Behavioral;

