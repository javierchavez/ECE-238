----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Javier Chavez
-- 
-- Create Date:    18:21:55 09/11/2013 
-- Design Name: 
-- Module Name:    MUX8to1 - 8 to 1 Multiplexer Test 
-- Project Name: Lab3
------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY MUX8TO1_TB IS
END MUX8TO1_TB;
 
ARCHITECTURE behavior OF MUX8TO1_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX8to1
    PORT(
         D : IN  std_logic_vector(7 downto 0);
         S : IN  std_logic_vector(2 downto 0);
         MUX_OUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(7 downto 0) := (others => '0');
   signal S : std_logic_vector(2 downto 0) := (others => '0');

    --Outputs
   signal MUX_OUT : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: MUX8to1 PORT MAP (
          D => D,
          S => S,
          MUX_OUT => MUX_OUT
        );


   -- Stimulus process
   stim_proc: process
   begin        
        
        D(0) <= '0'; S <= "000"; wait for 10 ns;    
        D(0) <= '1'; S <= "000"; wait for 10 ns;    
        D(0) <= '0'; 
        D(1) <= '0'; S <= "100"; wait for 10 ns;    
        D(1) <= '1'; S <= "100"; wait for 10 ns;    
        D(1) <= '0'; 
        D(2) <= '0'; S <= "010"; wait for 10 ns;    
        D(2) <= '1'; S <= "010"; wait for 10 ns;    
        D(2) <= '0'; 
        D(3) <= '0'; S <= "110"; wait for 10 ns;    
        D(3) <= '1'; S <= "110"; wait for 10 ns;    
        D(3) <= '0'; 
        D(4) <= '0'; S <= "001"; wait for 10 ns;    
        D(4) <= '1'; S <= "001"; wait for 10 ns;    
        D(4) <= '0'; 
        D(5) <= '0'; S <= "101"; wait for 10 ns;    
        D(5) <= '1'; S <= "101"; wait for 10 ns;    
        D(5) <= '0'; 
        D(6) <= '0'; S <= "011"; wait for 10 ns;    
        D(6) <= '1'; S <= "011"; wait for 10 ns;    
        D(6) <= '0';
        D(7) <= '0'; S <= "111"; wait for 10 ns;    
        D(7) <= '1'; S <= "111"; wait;  

   end process;

END;
