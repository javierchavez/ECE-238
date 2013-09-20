LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

ENTITY Module2_TB IS
END Module2_TB;
 
ARCHITECTURE behavior OF Module2_TB IS 

    COMPONENT Module_2
    PORT(
         SEL : IN  std_logic;
         AX : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal SEL : std_logic := '0';

 	--Outputs
   signal AX : std_logic_vector(3 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Module_2 PORT MAP (
          SEL => SEL,
          AX => AX
        );
   -- Stimulus process
   stim_proc: process
   begin
   
   SEL <= '1'; wait for 100 ns;
   SEL <= '0'; 
   wait;
   
   end process;

END;
