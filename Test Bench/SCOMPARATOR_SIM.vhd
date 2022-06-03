--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:42:25 03/24/2022
-- Design Name:   
-- Module Name:   C:/Users/Abdul-Rahman/Desktop/VHDL exercises/SCOMPARATOR/SCOMPARATOR_SIM.vhd
-- Project Name:  SCOMPARATOR
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SCOMPARATOR
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
 
ENTITY SCOMPARATOR_SIM IS
END SCOMPARATOR_SIM;
 
ARCHITECTURE behavior OF SCOMPARATOR_SIM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SCOMPARATOR
    PORT(
         C : IN  std_logic_vector(3 downto 0);
         D : IN  std_logic_vector(3 downto 0);
         E : OUT  std_logic;
         G_CD : OUT  std_logic;
         G_DC : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal C : std_logic_vector(3 downto 0) := (others => '0');
   signal D : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal E : std_logic;
   signal G_CD : std_logic;
   signal G_DC : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SCOMPARATOR PORT MAP (
          C => C,
          D => D,
          E => E,
          G_CD => G_CD,
          G_DC => G_DC
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		
		wait for clock_period*10;
		C(3)<='0';C(2)<='0';C(1)<='0';C(0)<='0'; D(3)<='0'; D(2)<='0'; D(1)<='0';D(0)<='0';
		wait for clock_period*10;
		C(3)<='0';C(2)<='0';C(1)<='0';C(0)<='1'; D(3)<='0'; D(2)<='0'; D(1)<='0';D(0)<='1';
		wait for clock_period*10;
		C(3)<='0';C(2)<='0';C(1)<='1';C(0)<='0'; D(3)<='0'; D(2)<='0'; D(1)<='1';D(0)<='0';
		wait for clock_period*10;
		C(3)<='0';C(2)<='0';C(1)<='1';C(0)<='1'; D(3)<='0'; D(2)<='0'; D(1)<='1';D(0)<='1';
		
				
		wait for clock_period*10;
		C(3)<='0';C(2)<='1';C(1)<='0';C(0)<='0'; D(3)<='0'; D(2)<='1'; D(1)<='0';D(0)<='0';
		wait for clock_period*10;
		C(3)<='0';C(2)<='1';C(1)<='0';C(0)<='0'; D(3)<='0'; D(2)<='1'; D(1)<='0';D(0)<='1';
		wait for clock_period*10;
		C(3)<='0';C(2)<='1';C(1)<='0';C(0)<='0'; D(3)<='0'; D(2)<='1'; D(1)<='1';D(0)<='0';
		wait for clock_period*10;
		C(3)<='0';C(2)<='1';C(1)<='0';C(0)<='0'; D(3)<='0'; D(2)<='1'; D(1)<='1';D(0)<='1';
		
				
		wait for clock_period*10;
		C(3)<='1';C(2)<='0';C(1)<='0';C(0)<='0'; D(3)<='1'; D(2)<='0'; D(1)<='0';D(0)<='0';
		wait for clock_period*10;
		C(3)<='1';C(2)<='0';C(1)<='0';C(0)<='0'; D(3)<='1'; D(2)<='0'; D(1)<='0';D(0)<='1';
		wait for clock_period*10;
		C(3)<='1';C(2)<='0';C(1)<='0';C(0)<='0'; D(3)<='1'; D(2)<='0'; D(1)<='1';D(0)<='0';
		wait for clock_period*10;
		C(3)<='1';C(2)<='0';C(1)<='0';C(0)<='0'; D(3)<='1'; D(2)<='0'; D(1)<='1';D(0)<='1';
		
		wait for clock_period*10;
		C(3)<='1';C(2)<='1';C(1)<='0';C(0)<='0'; D(3)<='1'; D(2)<='1'; D(1)<='0';D(0)<='0';
		wait for clock_period*10;
		C(3)<='1';C(2)<='1';C(1)<='0';C(0)<='0'; D(3)<='1'; D(2)<='1'; D(1)<='0';D(0)<='1';
		wait for clock_period*10;
		C(3)<='1';C(2)<='1';C(1)<='0';C(0)<='0'; D(3)<='1'; D(2)<='1'; D(1)<='1';D(0)<='0';
		wait for clock_period*10;
		C(3)<='1';C(2)<='1';C(1)<='0';C(0)<='0'; D(3)<='1'; D(2)<='1'; D(1)<='1';D(0)<='1';
		
      wait;
   end process;

END;
