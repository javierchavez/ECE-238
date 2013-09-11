--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:50:58 09/09/2013
-- Design Name:   
-- Module Name:   C:/Users/javierAle/Xilinx/NUM_DISPLAY/KE_TB.vhd
-- Project Name:  NUM_DISPLAY
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: KE
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY KE_TB IS
END KE_TB;
 
ARCHITECTURE behavior OF KE_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT KE
    PORT(
         b : IN  std_logic_vector(3 downto 0);
         e : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal e : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: KE PORT MAP (
          b => b,
          e => e
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		b <= "0001"; wait for 100 ns;	
		b <= "0010"; wait for 100 ns;	
		b <= "0100"; wait for 100 ns;	
		b <= "1000"; wait for 100 ns;	
		b <= "0000"; wait;	

   end process;

END;
