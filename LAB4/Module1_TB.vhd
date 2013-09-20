LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

ENTITY Module1_TB IS
END Module1_TB;
 
ARCHITECTURE behavior OF Module1_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Module_1
    PORT(
         S : IN  std_logic_vector(4 downto 0);
         D : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
   --Inputs
   signal S : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal D : std_logic_vector(6 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Module_1 PORT MAP (
          S => S,
          D => D
        );

   -- Stimulus process
   stim_proc: process
   begin
   
   S <= S+1;
   wait for 10 ns;
  
   end process;

END;
