--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:29:03 05/27/2013
-- Design Name:   
-- Module Name:   /home/ct/VHDL/AIS/GS_tb.vhd
-- Project Name:  AIS
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Generate_Sample
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
LIBRARY work;
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE std.textio.ALL;
use ieee.std_logic_textio.all;
use work.Pack.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY GS_tb IS
END GS_tb;
 
ARCHITECTURE behavior OF GS_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Generate_Sample
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         activate : IN  std_logic;
         seed : IN  std_logic;
         sample_output : OUT  std_logic_vector(63 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal activate : std_logic := '0';
   signal seed : std_logic := '0';

 	--Outputs
   signal sample_output : std_logic_vector(63 downto 0);
   signal done : std_logic:= '1';
   -- Clock period definitions
   constant clk_period : time := 10 ns;
    signal seed_i : std_logic_vector(63 downto 0):= x"3fec9f50e6448fd1";
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Generate_Sample PORT MAP (
          clk => clk,
          reset => reset,
          activate => activate,
          seed => seed,
          sample_output => sample_output
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process

   file outputter : TEXT open WRITE_MODE is "gs.out";
   file seed_file : TEXT open READ_MODE is "seed";
    variable output_line: line;
    variable temp_beta, temp_seed: std_logic_vector(PRECISION-1 downto 0);

   begin		
    reset <= '1';
      -- hold reset state for 100 ns.
    wait for 100 ns;	
    reset <= '0';
    wait for clk_period;

    LOAD: for i in 0 to 63 loop
      seed <= seed_i(i);
      wait for clk_period;
    end loop;

    wait for 15000 ns;

    wait for clk_period*10;

    PRINT:for i in 1 to 100 loop
      hwrite(output_line, sample_output);
      writeline(outputter, output_line);
      wait for clk_period;
    end loop;

    wait for clk_period;
    assert done = '0'
      report "SUCCESS: Simulation stopped at completion"
      severity FAILURE;

   end process;

END;
