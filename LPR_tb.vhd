-- TestBench Template 

  LIBRARY ieee;
  LIBRARY work;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;
	USE work.pack.all;
	
	
  ENTITY LPR_tb IS
  END LPR_tb;

  ARCHITECTURE behavior OF LPR_tb IS 

  -- Component Declaration
--          COMPONENT LPR
--          PORT(
--				clk : in std_logic;
--				reset : in std_logic;
--				activate: in std_logic;
--				xState : in  STD_LOGIC_VECTOR (STATE_SIZE downto 0);
--				Output : out  STD_LOGIC_VECTOR (STATE_SIZE downto 0);
--				Beta_in : in  STD_LOGIC_VECTOR (63 DOWNTO 0)
--			);
--          END COMPONENT;

          SIGNAL clk :  std_logic;
			 SIGNAL reset :  std_logic;
			 signal 	activate: std_logic;
			 signal 	xState : STD_LOGIC_VECTOR (STATE_SIZE downto 0);
		    signal 	Output : STD_LOGIC_VECTOR (STATE_SIZE downto 0);
			 signal 	Beta : STD_LOGIC_VECTOR (63 DOWNTO 0);
          constant clk_period : time := 10 ns;
 

  BEGIN

  -- Component Instantiation
          uut: ENTITY work.LPR PORT MAP(
            clk => clk,
				reset => reset,
				activate => activate,
				xState => xState,
				Output => output,
				Beta_in => Beta
          );

   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
  --  Test Bench Statements
     tb : PROCESS
     BEGIN
		reset <= '1';
        wait for 100 ns; -- wait until global set/reset completes
		reset<= '0';
			wait for clk_period;
        activate <= '0';
		  xstate (63 downto 52)<= "001111111110";
			beta(63 downto 52)<= "001111111111";
        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
