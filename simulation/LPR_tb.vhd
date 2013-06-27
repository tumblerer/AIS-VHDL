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
			 signal 	activate_wire,acti: std_logic;
			 signal 	xState : STD_LOGIC_VECTOR (STATE_SIZE downto 0);
		    signal 	Output, Mem_Data_B_Out,   data_out : STD_LOGIC_VECTOR (STATE_SIZE downto 0);
			 signal 	Beta : STD_LOGIC_VECTOR (63 DOWNTO 0);
			 signal wea : std_logic_vector(7 downto 0) := (others => '0');
			 signal Mem_addr_b_out, addr_out, addra : std_logic_vector(31 downto 0) := (others => '0');
		    signal dina : std_logic_vector(63 downto 0) := (others => '0');
          constant clk_period : time := 10 ns;
 

  BEGIN

  -- Component Instantiation
         uut: ENTITY work.LPR PORT MAP(
            clk => clk,
				reset => reset,
				activate_in => activate_wire,
				xState => xState,
				Output => output,
				Beta_in => Beta,
				Mem_Addr_B_In => Mem_addr_b_out,
				Mem_Data_B_In => Mem_Data_B_Out,
				Mem_Addr_B_Out => addr_out,
				Mem_Data_B_Out => data_out,
				activate_out => acti
          );

		   BRAM: ENTITY work.Dual_Port_BRAM PORT MAP (
          clka => clk,
          wea => wea,
          addra => addra,
          dina => dina,
          clkb => clk,
          rstb => reset,
          addrb => Mem_addr_b_out,
          doutb => Mem_Data_B_Out
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
		activate_wire <= '0';
		wait for clk_period;
		xstate<= (OTHERS => '0');
		-- 	wea <= x"FF";
		-- wait for clk_period*10;
		-- addra(7 downto 0)<=  x"00";
		-- wait for clk_period;
		-- -- write 0.5 to mem location 0
		-- dina(63 downto 0) <= "0011111111000000000000000000000000000000000000000000000000000000";
		-- wait for clk_period;
		-- -- write 0.25 to mem location 8
		-- addra(31 downto 0)<=  std_logic_vector(to_unsigned(8,addra'length));
		-- wait for clk_period;
		-- dina(63 downto 0) <= "0011111110100000000000000000000000000000000000000000000000000000";

		wait for clk_period*2049;
	   activate_wire <= '1';
	   -- Input 0.5 to x
	   xstate <= "0011111111000000000000000000000000000000000000000000000000000000";
		beta(63 downto 52)<= "001111111111";
		beta (51 downto 0) <= (OTHERS=> '0');
		wait for clk_period;
		-- Input 0.1
		xstate<= "0011111101110011001100110011001100110011001100110011001100110011";
		-- Input 0.55
		xstate<= x"3fe199999999999a";
		wait for clk_period*1000;
	   wait; -- will wait forever 
      END PROCESS tb;
  --  End Test Bench 

  END;