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
         addra_beta : IN  std_logic_vector(31 downto 0);
         wea_beta : IN  std_logic_vector(7 downto 0);
         dina_seed : IN  std_logic_vector(63 downto 0);
         wea_seed : IN  std_logic_vector(7 downto 0);
         addra_seed : IN  std_logic_vector(31 downto 0);
         addrb_X : IN  std_logic_vector(31 downto 0);
         doutb_x : OUT  std_logic_vector(63 downto 0);
         x_complete: in std_logic;
         addrb_LPR : in std_logic_vector(31 downto 0);
         doutb_LPR: out std_logic_vector(PRECISION-1 downto 0);
         complete : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal dina_beta : std_logic_vector(63 downto 0) := (others => '0');
   signal addra_beta : std_logic_vector(31 downto 0) := (others => '0');
   signal wea_beta : std_logic_vector(7 downto 0) := (others => '0');
   signal dina_seed : std_logic_vector(63 downto 0) := (others => '0');
   signal wea_seed : std_logic_vector(7 downto 0) := (others => '0');
   signal addra_seed : std_logic_vector(31 downto 0) := (others => '0');
   signal addrb_X : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal doutb_x : std_logic_vector(63 downto 0);
   signal complete : std_logic := '0';
   signal hold_address: integer range 0 to BLOCKS := 0;
   signal x_complete : std_logic:= '0';
   signal addrb_LPR : std_logic_vector(31 downto 0);
   signal doutb_LPR : std_logic_vector(PRECISION-1 downto 0);
   -- Clock period definitions
   constant clk_period : time := 10 ns;
  
  signal addr_count: integer :=0;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LPR_Total PORT MAP (
          clk => clk,
          reset => reset,
          dina_beta => dina_beta,
          addra_beta => addra_beta,
          wea_beta => wea_beta,
          dina_seed => dina_seed,
          wea_seed => wea_seed,
          addra_seed => addra_seed,
          addrb_X => addrb_X,
          doutb_x => doutb_x,
          x_complete => x_complete,
          addrb_LPR => addrb_LPR,
          doutb_LPR => doutb_LPR,
          complete => complete
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

      wait for clk_period*10;
      addra_beta <= (OTHERS => '0');
      
      -- Read Beta values into BRAM_Beta
      addr_count <= 0;
      wea_beta <= x"FF";
      wait for clk_period;
      while not endfile(beta_file) loop
        readline(beta_file, file_line);
        hread(file_line, temp_beta);
        dina_beta <= temp_beta;
        addr_count <= addr_count + 8;
        addra_beta <= std_logic_vector(to_unsigned(addr_count,addra_beta'length));
        wait for clk_period;
      end loop;
      wait for clk_period;
      wea_beta <= x"00";

      -- Read in seed values
      wea_seed <= x"FF"; 
      addr_count <= 0;
      wait for clk_period;
      while not endfile(seed_file) loop
        readline(seed_file, file_line);
        hread(file_line, temp_seed);
        dina_seed <= temp_seed;
        if hold_address < CHAINS-1 then
          hold_address <= hold_address + 1;
        else
          addr_count <= addr_count + 8;
          hold_address <= 0;
        end if;
        addra_seed <= std_logic_vector(to_unsigned(addr_count,addra_seed'length));
        wait for clk_period;
      end loop;
      wait for clk_period;
      wea_seed <= x"00";

      reset <= '0';

      wait for clk_period*100;
      while complete = '0' loop
        wait for clk_period;
      end loop;

    -- If complete, write out contents of BRAM_X to file

      FILEIO : for i in 1 to CHAINS loop  
        EACH_BRAM : for j in 1 to RUNS loop 
          hwrite(output_line, doutb_x);
          writeline(output_x, output_line);
          if j = RUNS then
            addrb_x <= std_logic_vector(to_unsigned(0, addrb_x'length));
          else
            addrb_x <= std_logic_vector(to_unsigned(j*8, addrb_x'length));
          end if;
          wait for clk_period;
        end loop;    
      end loop ; -- FILEIO
      x_complete <= '1';


     -- addrb_x <= std_logic_vector(to_unsigned(0, addrb_x'length));      
     --  FILEIO : for i in 1 to CHAINS loop  
     --    EACH_BRAM : for j in 0 to RUNS-1 loop 
     --      wait for clk_period;
     --      hwrite(output_line, doutb_x);
     --      writeline(output_x, output_line);
     --      if j = CHAINS-2 then
     --        addrb_x <= std_logic_vector(to_unsigned((i+1)*8, addrb_x'length));
     --      end if;
     --    end loop;    
     --  end loop ; -- FILEIO
     --  x_complete <= '1';

      EACH_CHAIN: for i in 1 to CHAINS loop
      addrb_LPR <= std_logic_vector(to_unsigned(0, addrb_LPR'length));
        EACH_BLOCK: for j in 0 to BLOCKS-1 loop
          EACH_LPR: for k in 0 to (STEPS/BLOCKS)*RUNS-1 loop
          addrb_LPR <= std_logic_vector(to_unsigned(k*8, addrb_LPR'length));
          wait for clk_period;
          hwrite(output_line, doutb_LPR);
          writeline(output_lpr, output_line);
          end loop;
        end loop;
      end loop;

      wait for clk_period;
      assert complete = '0'
        report "SUCCESS: Simulation stopped at completion"
        severity FAILURE;

   end process;

END;
