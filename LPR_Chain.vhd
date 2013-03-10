--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:40:59 03/09/2013
-- Design Name:   
-- Module Name:   /home/ct/VHDL/AIS/LPR_Chain.vhd
-- Project Name:  AIS
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: LPR
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
 
ENTITY LPR_Chain IS
END LPR_Chain;
 
ARCHITECTURE behavior OF LPR_Chain IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LPR
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         activate : IN  std_logic;
         xState : IN  std_logic_vector(63 downto 0);
         Output : OUT  std_logic_vector(63 downto 0);
         Beta_in : IN  std_logic_vector(63 downto 0);
         Mem_Addr_B_In : OUT  std_logic_vector(31 downto 0);
         Mem_Data_B_In : IN  std_logic_vector(63 downto 0);
         Mem_Addr_B_Out : IN  std_logic_vector(31 downto 0);
         Mem_Data_B_Out : OUT  std_logic_vector(63 downto 0)
        );
    END COMPONENT;
    
	COMPONENT Generate_Sample
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         activate : IN  std_logic;
         sample_output : OUT  std_logic_vector(63 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal activate_lpr1, activate_lpr2, activate_gen, acti : std_logic := '0';
   signal xState,output2 : std_logic_vector(63 downto 0) := (others => '0');
   signal Beta_in : std_logic_vector(63 downto 0) := (others => '0');
   signal Mem_Data_B_In : std_logic_vector(63 downto 0) := (others => '0');
   signal Mem_Addr_B_Out,Mem_Addr_B_Out2 : std_logic_vector(31 downto 0) := (others => '0');
	 signal activate: std_logic:='0';
	
 	--Outputs
   signal Output : std_logic_vector(63 downto 0);
   signal Mem_Addr_B_In : std_logic_vector(31 downto 0);
   signal Mem_Data_B_Out, Mem_Data_B_Out2 : std_logic_vector(63 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut1: LPR PORT MAP (
          clk => clk,
          reset => reset,
          activate => activate_lpr1,
          xState => xState,
          Output => Output,
          Beta_in => Beta_in,
          Mem_Addr_B_In => Mem_Addr_B_In,
          Mem_Data_B_In => (OTHERS => '0'),
          Mem_Addr_B_Out => Mem_Addr_B_Out,
          Mem_Data_B_Out => Mem_Data_B_Out,
          activate_out <= activate
        );
		  
   uut2: LPR PORT MAP (
          clk => clk,
          reset => reset,
          activate_in => activate,
          xState => Output,
          Output => Output2,
          Beta_in => Beta_in,
          Mem_Addr_B_In => Mem_Addr_B_Out,
          Mem_Data_B_In => Mem_Data_B_Out,
          Mem_Addr_B_Out => Mem_Addr_B_Out2,
          Mem_Data_B_Out => Mem_Data_B_Out2,
          activate_out <= acti
        );
	
	Gen: Generate_Sample PORT MAP (
          clk => clk,
          reset => reset,
          activate => activate_gen,
          sample_output => xState
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
   tb : PROCESS
     BEGIN
		reset <= '1';
      wait for 100 ns; -- wait until global set/reset completes
		reset<= '0';
		activate_gen <= '0';
		activate_lpr1 <= '0';
		activate_lpr2 <= '0';
		-- Set beta to 0.5
		Beta_In <= "0011111111000000000000000000000000000000000000000000000000000000";
		wait for clk_period*2050;
		
		activate_gen <= '1';
		wait for clk_period*130;
		activate_lpr1 <= '1';
--		wait for clk_period*106;
--		activate_lpr2 <= '1';
		wait for clk_period;
		
		wait;
	end process;
END;
