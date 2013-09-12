----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Javier Chavez
-- 
-- Create Date:    18:21:55 09/11/2013 
-- Design Name: 
-- Module Name:    Display decoder Test
-- Project Name: Lab3
------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Disp_TB IS
END Disp_TB;
 
ARCHITECTURE behavior OF Disp_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DispDec
    PORT(
         MUX_OUT : IN  std_logic;
         B : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal MUX_OUT : std_logic := '0';

 	--Outputs
   signal B : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DispDec PORT MAP (
          MUX_OUT => MUX_OUT,
          B => B
        );


 

   -- Stimulus process
   stim_proc: process
   begin		

	wait for 100 ns;
	MUX_OUT <= '1'; wait for 100 ns;
	MUX_OUT <= '0'; wait;

   end process;

END;
