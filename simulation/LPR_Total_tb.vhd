LIBRARY work;
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE std.textio.ALL;
use ieee.std_logic_textio.all;
use work.Pack.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY LPR_Total_tb IS
END LPR_Total_tb;
 
ARCHITECTURE behavior OF LPR_Total_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LPR_Total
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         dina_beta : IN  std_logic_vector(63 downto 0);
         dina_seed : IN  std_logic_vector(63 downto 0);
         doutb_x : OUT  std_logic_vector(63 downto 0);
         doutb_LPR: out std_logic_vector(PRECISION-1 downto 0);
         x_complete : OUT  std_logic;
             --VALID SIGNAL FOR VALID OUTPUT
          VALID     : OUT std_logic;
          --START SIGNAL TO START PROCESSING
          START     : IN std_logic;
          --RUN TIME OF THE CORE
          RUNTIME     : IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
          --FINISHED SIGNAL
          FINISHED    : OUT std_logic;
          --BUSY TO SIGNAL THE CORE TO PAUSE THE PROCESSING
          BUSY      : IN std_logic;
              -- Run Parameters
          steps_slv : in std_logic_vector(31 downto 0);
          runs_slv : in std_logic_vector(31 downto 0);
          mean : in std_logic_vector(PRECISION-1 downto 0);
          variance : in std_logic_vector(PRECISION-1 downto 0);
          mean_gen : in std_logic_vector(PRECISION-1 downto 0);
          standarddev_Gen : in std_logic_vector(PRECISION-1 downto 0);
          standarddev_Trans : in std_logic_vector(PRECISION-1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal dina_beta : std_logic_vector(63 downto 0) := (others => '0');
   signal dina_seed : std_logic_vector(63 downto 0) := (others => '0');

  -- Mean 1
   signal MEAN: std_logic_vector(PRECISION-1 downto 0) := x"3ff0000000000000";
  -- 1/Sd 1/(2*0.1^2)
   signal VARIANCE: std_logic_vector(PRECISION-1 downto 0) := x"4049000000000000";
   signal MEAN_Gen: std_logic_vector(PRECISION-1 downto 0):= (OTHERS => '0');

  -- 1/2*SD^2 -- SD = 1
   signal STANDARDDEV_Gen :std_logic_vector(PRECISION-1 downto 0):=x"3fe0000000000000";

  --1/2*SD^2 -- SD = 0.05
    signal STANDARDDEV_Trans : std_logic_vector(PRECISION-1 downto 0):=x"3f747ae147ae147b";

    signal steps : std_logic_vector(32-1 downto 0):= std_logic_vector(to_unsigned(const_steps,32));
 	  signal runs : std_logic_vector(32-1 downto 0):= std_logic_vector(to_unsigned(const_runs, 32));
  

  --Outputs
   signal doutb_x : std_logic_vector(63 downto 0);
   signal complete : std_logic := '0';
   signal hold_address: integer range 0 to BLOCKS := 0;
   signal x_complete : std_logic:= '0';
   signal addrb_LPR : std_logic_vector(31 downto 0):=(others => '0');
   signal doutb_LPR : std_logic_vector(PRECISION-1 downto 0);
   -- Clock period definitions
   constant clk_period : time := 10 ns;
  
  --RIFFA
  signal  VALID     : std_logic:='0';
  --START SIGNAL TO START PROCESSING
   signal START     : std_logic:='0';
  --RUN TIME OF THE CORE
   signal RUNTIME     : std_logic_vector(32- 1 DOWNTO 0):=(others=> '0');
  --FINISHED SIGNAL
   signal FINISHED    :  std_logic:='0';
  --BUSY TO SIGNAL THE CORE TO PAUSE THE PROCESSING
   signal BUSY      : std_logic:='0';

  signal addr_count: integer :=0;

  signal i : integer :=0;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LPR_Total PORT MAP (
          clk => clk,
          reset => reset,
          dina_beta => dina_beta,
          dina_seed => dina_seed,
          doutb_x => doutb_x,
          doutb_LPR => doutb_LPR,
          x_complete => x_complete,
          --RIFFA signals
          valid => valid,
          start => start,
          runtime => runtime,
          FINISHED => FINISHED,
          BUSY => BUSY,
          --Parameters
          steps_slv => steps,
          runs_slv => runs,
          mean => mean,
          variance => variance,
          standarddev_Trans => standarddev_Trans,
          mean_gen => mean_gen,
          standarddev_Gen => standarddev_Gen    
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

   file beta_file : TEXT open READ_MODE is "beta";
   file output_x : TEXT open WRITE_MODE is "x.out";
   file seed_file : TEXT open READ_MODE is "seed";
   file output_lpr : TEXT open WRITE_MODE is "LPR.out";
   variable file_line: line;
   variable output_line: line;
   variable temp_beta, temp_seed: std_logic_vector(PRECISION-1 downto 0);
   variable temp_output: std_logic_vector(PRECISION-1 downto 0);

   begin		
      reset <= '1';
      wait for 0.5*clk_period;
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      reset <= '0';
      wait for clk_period*10;
      start <= '1';
      wait for clk_period;
      start <= '0';
      wait for clk_period*2;
      -- Read Beta values into BRAM_Beta
      
--      wea_beta <= x"FF";
--      wait for clk_period;
      while not endfile(beta_file) loop
        readline(beta_file, file_line);
        hread(file_line, temp_beta);
        dina_beta <= temp_beta;
--        addr_count <= addr_count + 8;
--        addra_beta <= std_logic_vector(to_unsigned(addr_count,addra_beta'length));
        wait for clk_period;
      end loop;
      wait for clk_period;
 --     wea_beta <= x"00";

      -- Read in seed values
 --     wea_seed <= x"FF"; 
      wait for clk_period;
      while not endfile(seed_file) loop
        readline(seed_file, file_line);
        hread(file_line, temp_seed);
        dina_seed <= temp_seed;
        wait for clk_period;
      end loop;
      wait for clk_period;
--      wea_seed <= x"00";



      -- wait for clk_period*100;
      -- while complete = '0' loop
      --   wait for clk_period;
      -- end loop;

    -- If complete, write out contents of BRAM_X to file
      --wait for 2*clk_period;
      while i < to_integer(unsigned(RUNS))*CHAINS loop
        if VALID = '1' then
          i <= i +1;
          hwrite(output_line, doutb_x);
          writeline(output_x, output_line);
        end if;
        wait for clk_period;
      end loop ; 

      -- FILEIO : for i in 1 to to_integer(unsigned(RUNS)) loop  
      --   EACH_BRAM : for j in 1 to CHAINS loop 
      --     wait for clk_period;
      --     hwrite(output_line, doutb_x);
      --     writeline(output_x, output_line);
      --   end loop;    
      -- end loop ; -- FILEIO
 --     x_complete <= '1';
      i <= 0;
      
      while i < (to_integer(unsigned(STEPS))/BLOCKS)*to_integer(unsigned(RUNS))*CHAINS*BLOCKS loop
        if VALID = '1' and x_complete = '1' then
          i <= i +1;
          hwrite(output_line, doutb_LPR);
          writeline(output_lpr, output_line);
        end if;
        wait for clk_period;
      end loop ;

--      wait for clk_period;
--       EACH_CHAIN: for i in 1 to CHAINS loop
-- --      addrb_LPR <= std_logic_vector(to_unsigned(0, addrb_LPR'length));
--         EACH_BLOCK: for j in 0 to BLOCKS-1 loop
--           EACH_LPR: for k in 1 to (to_integer(unsigned(STEPS))/BLOCKS)*to_integer(unsigned(RUNS)) loop
--           hwrite(output_line, doutb_LPR);
--           writeline(output_lpr, output_line);
--           -- if k = (STEPS/BLOCKS)*RUNS then
--           --   addrb_LPR <= std_logic_vector(to_unsigned(0, addrb_LPR'length));
--           -- else
--           --   addrb_LPR <= std_logic_vector(to_unsigned(k*8, addrb_LPR'length));
--           -- end if;
--           wait for clk_period;
--           end loop;
--         end loop;
--       end loop;

      wait for clk_period;
      while true loop
        assert FINISHED = '0'
          report "SUCCESS: Simulation stopped at completion"
          severity FAILURE;
        wait for clk_period;
      end loop;

   end process;

END;
