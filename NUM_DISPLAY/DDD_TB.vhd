--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:52:50 09/09/2013
-- Design Name:   
-- Module Name:   C:/Users/javierAle/Xilinx/NUM_DISPLAY/DDD_TB.vhd
-- Project Name:  NUM_DISPLAY
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DDD
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
 
ENTITY DDD_TB IS
END DDD_TB;
 
ARCHITECTURE behavior OF DDD_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DDD
    PORT(
         e : IN  std_logic_vector(2 downto 0);
         s : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal e : std_logic_vector(2 downto 0) := (others => '0');

  --Outputs
   signal s : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
  -- Instantiate the Unit Under Test (UUT)
   uut: DDD PORT MAP (
          e => e,
          s => s
        );


   -- Stimulus process
   stim_proc: process
   begin    
      -- hold reset state for 100 ns.
      
    e <= "000"; wait for 100 ns;  
    e <= "001"; wait for 100 ns;  
    e <= "010"; wait for 100 ns;  
    e <= "011"; wait for 100 ns;  
    e <= "111"; wait;
   end process;

END;
