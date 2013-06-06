library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.Pack.all;
use IEEE.NUMERIC_STD.ALL;

entity LPR_Total is
	port (
		clk: in std_logic;
		reset : in std_logic;
    dina_beta : in std_logic_vector(PRECISION-1 downto 0);
    dina_seed : in std_logic_vector(PRECISION-1 downto 0);
    doutb_x : out  std_logic_vector(PRECISION-1 downto 0);
--    x_complete : in std_logic;
    doutb_LPR: out std_logic_vector(PRECISION-1 downto 0);
    complete: out std_logic;
    --RIFFA SIGNALS
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

end entity LPR_Total;


architecture behavorial of LPR_Total is

component LPR_Chain is
  port (
      clk : in std_logic;
      reset : in std_logic;
      addra_seed : in std_logic_vector(31 downto 0);
      addra_beta : in std_logic_vector(31 downto 0);
      dina_seed : in std_logic_vector(PRECISION-1 downto 0);
      dina_beta : in std_logic_vector(PRECISION-1 downto 0);
      wea_seed : in std_logic_vector(7 downto 0);
      wea_beta : in std_logic_vector(7 downto 0);
      addrb_X : in std_logic_vector(31 downto 0);
      doutb_x : out  std_logic_vector(PRECISION-1 downto 0);
      x_complete : in std_logic;
--      addrb_LPR : in std_logic_vector(31 downto 0);
      doutb_LPR: out std_logic_vector(PRECISION-1 downto 0);
      complete: out std_logic;
      start : in std_logic;
      valid : in std_logic;
      busy : in std_logic;
      -- Run Parameters
      steps : in integer range 1 to MAX_STEPS;
      runs : in integer range  1 to MAX_RUNS;
      mean : in std_logic_vector(PRECISION-1 downto 0);
      variance : in std_logic_vector(PRECISION-1 downto 0);
      mean_gen : in std_logic_vector(PRECISION-1 downto 0);
      standarddev_Gen : in std_logic_vector(PRECISION-1 downto 0);
      standarddev_Trans : in std_logic_vector(PRECISION-1 downto 0)

   ) ;
end component ; -- LPR_Chain

  type address_array is array(CHAINS downto 1) of std_logic_vector(31 downto 0);
  type data_array is array(CHAINS downto 1) of std_logic_vector(PRECISION-1 downto 0);
  type single_wire_array is array(CHAINS downto 1) of std_logic;

  signal addra_seed_array , addrb_x_array: address_array;
  --signal addra_seed : std_logic_vector(31 downto 0);
  signal addra_beta :std_logic_vector( 31 downto 0);
  signal dina_seed_array , doutb_x_array: data_array;
  signal complete_array : single_wire_array;
  signal doutb_LPR_array : data_array;
  signal chain_counter_delay : integer range 0 to MAX_STEPS*MAX_RUNS := 0;
  signal chain_counter_lpr: integer range 1 to CHAINS := 1;
  signal chain_counter_delay_x: integer range 0 to MAX_RUNS := 0; 

  signal wea_seed : std_logic_vector(PRECISION/8 -1 downto 0);
  signal wea_beta : std_logic_vector(PRECISION/8 -1 downto 0);

  -- Counters
  signal seed_counter, x_counter : integer range 1 to MAX_RUNS*MAX_STEPS*8;
  signal seed_addr_counter : integer range 0 to 1024*BLOCKS;
  signal x_address_counter : integer range 0 to MAX_RUNS:=0;
  signal beta_addr_counter : integer range 0 to MAX_STEPS := 0;
  signal addrb_x: std_logic_vector(31 downto 0);

  --Conversion from slv to integer
  signal steps : integer range 1 to MAX_STEPS;
  signal runs : integer range 1 to MAX_RUNS;

  SIGNAL run_time : std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0) := (OTHERS => '0');
  signal start_core : std_logic;

  signal finished1 : std_logic;
  signal x_complete, x_complete_r: std_logic;
  signal valid_r: std_logic;

  -- RIFFA state machine signals
  TYPE core_state_type IS (
        idle,
        setup,
        beta_init,
        seed_init,
        --PROCESSING STATES
        output_state,
        wait_state,
        paused_state);
  SIGNAL core_state, core_nstate : core_state_type := idle;

begin 

  -- Convert input signal to integers
  steps <= to_integer(unsigned(steps_slv));
  runs <= to_integer(unsigned(runs_slv));

 Parallel_Chains: for i in 1 to CHAINS generate

  begin Chain: entity work.LPR_Chain PORT MAP (
          clk => clk,
          reset => reset,
          addra_seed => addra_seed_array(i),
          addra_beta => addra_beta,
          dina_beta => dina_beta,
          dina_seed => dina_seed_array(i),
          wea_beta => wea_beta,
          wea_seed => wea_seed,
          addrb_x => addrb_x,
          doutb_x => doutb_x_array(i),
          x_complete => x_complete,
--          addrb_LPR => addrb_LPR,
          doutb_LPR => doutb_LPR_array(i),
          complete => complete_array(i),
          start_core => start_core,
          valid => valid_r,
          busy => busy,
          --Parameters
          steps => steps,
          runs => runs,
          mean => mean,
          variance => variance,
          standarddev_Trans => standarddev_Trans,
          mean_gen => mean_gen,
          standarddev_Gen => standarddev_Gen          
        );
  end generate;

Load: Process
begin
  wait until clk'EVENT and clk='1';

      -- Load seed memory with seed from seed file
      if reset = '1' then
        seed_addr_counter <= 0;
        seed_counter <= 1;
      else
        if wea_seed = x"FF" then
          if seed_counter < CHAINS then
            seed_counter <= seed_counter + 1;
            if seed_counter = CHAINS-1 then
              seed_addr_counter <= seed_addr_counter + 1;
            end if;
          else
            seed_counter <= 1;
          end if;
        else
          seed_counter <= CHAINS;
        end if;
      end if;

      -- Read X values of chains
      if reset = '1' then
        x_counter <= CHAINS;
        x_address_counter <= 0;
      else
        if complete_array(CHAINS) = '1' and valid_r = '0' and busy = '0' then
          if x_counter < CHAINS then
            x_counter <= x_counter + 1;
            if x_counter = CHAINS -1 then
              x_address_counter <= x_address_counter + 1;
            end if;
          else
            x_counter <= 1;
          end if;
        end if;
      end if;
      
      --Read LPR values
      if reset = '1' then
        chain_counter_lpr <= 1;
        chain_counter_delay<= 0;
      else
        if x_complete = '1' and valid_r = '0' and busy = '0' then
          if chain_counter_delay < STEPS*RUNS then
            chain_counter_delay <= chain_counter_delay + 1;
          else
            chain_counter_delay <= 1;
            if chain_counter_lpr < CHAINS then
              chain_counter_lpr <= chain_counter_lpr + 1;
            else 
              chain_counter_lpr <= 1;
            end if;
          end if;
        end if;
      end if;
    

    dina_seed_array(seed_counter) <= dina_seed;
    addra_seed_array(seed_counter) <= std_logic_vector(to_unsigned(seed_addr_counter*PRECISION/8,32));

  end process;

  Write_beta: process
  begin
    WAIT until clk'EVENT and clk= '1';
      if reset = '1' then
        beta_addr_counter <= 0;
      else
        if wea_beta = x"FF" then
          beta_addr_counter <= beta_addr_counter + 1;
          addra_beta <= std_logic_vector(to_unsigned(beta_addr_counter*(PRECISION/8),addra_beta'length));

        end if;
      end if;

  end process ;
  

  Transfer: process(finished1, valid_r, x_address_counter , x_counter, beta_addr_counter, chain_counter_lpr, complete_array, addrb_x, doutb_x_array, dina_seed, seed_counter, x_counter, doutb_lpr_array)
  begin

    --Signal that x has finished transferring
    if x_counter = CHAINS and x_address_counter = runs then
      x_complete_r <= '1';   
    else
      x_complete_r <= '0';  
    end if ;

    valid <= valid_r;

    addrb_x <= std_logic_vector(to_unsigned(x_address_counter*(PRECISION/8),addrb_x'length)); 

    complete <= complete_array(CHAINS);

    doutb_x <= doutb_x_array(x_counter);

    doutb_LPR <= doutb_LPR_array(chain_counter_lpr);
    
    FINISHED <= finished1;
  end process;

Combinatorial_Assignments : PROCESS (core_state)
BEGIN
  IF (core_state = output_state) THEN
    VALID_r <= '1';
  ELSE
    VALID_r <= '0';
  END IF;
END PROCESS;
  
Nstate_assignment : PROCESS (core_state, reset, START, complete_array, finished1, BUSY, beta_addr_counter, seed_counter, seed_addr_counter)
BEGIN
  IF (reset = '1') THEN
    core_nstate <= idle;
  ELSE
    core_nstate <= core_state;
    CASE (core_state) IS
      WHEN idle =>
        IF (START = '1') THEN
          core_nstate <= beta_init;
        END IF;
      
      WHEN beta_init =>
        if beta_addr_counter = STEPS-1 then
          core_nstate <= seed_init;
        end if ;

      WHEN seed_init =>
        if seed_addr_counter = 1024 and seed_counter = CHAINS then
          core_nstate <= setup;
        end if;

      WHEN setup =>
        core_nstate <= wait_state;

      WHEN wait_state =>
        IF (finished1 = '1') THEN
          IF (BUSY = '0') THEN
            core_nstate <= idle;
          END IF;
        ELSE
          IF complete_array(CHAINS) = '1' THEN
            IF (BUSY = '1') THEN
              core_nstate <= paused_state;
            ELSE
              core_nstate <= output_state;
            END IF;         
          END IF;
        END IF;

      WHEN paused_state =>
        IF (BUSY /= '1') THEN
          core_nstate <= output_state;
        END IF;
      WHEN output_state =>
        core_nstate <= wait_state;
      WHEN OTHERS =>
        core_nstate <= idle;
    END CASE;   
  END IF;
END PROCESS;  

State_assignment : PROCESS
BEGIN
  WAIT UNTIL rising_edge(clk);
  IF (reset = '1') THEN
    core_state <= idle;
--    rOutput <= (OTHERS => '0');
    run_time <= (OTHERS => '0');
    finished1 <= '0';
    wea_beta <= (others => '0');
    wea_seed <= (others => '0');
    x_complete <= '0';
  ELSE
    core_state <= core_nstate;
    finished1 <= '0';

    if core_state = beta_init then
      wea_beta <= (others => '1');
    else
      wea_beta <= (others => '0');
    end if;

    if core_state = seed_init then
      wea_seed <= (others => '1');
    else
      wea_seed <= (others => '0');
    end if;

    IF (core_state = setup) THEN
      IF (unsigned(RUNTIME) <= 1) THEN
        run_time <= std_logic_vector(to_unsigned(1,C_SIMPBUS_AWIDTH));
      ELSE
        run_time <= std_logic_vector(unsigned(RUNTIME) - 1); --Initialise run_time to the input RUNTIME
      END IF;      
      start_core <= '1';
    else
      start_core <= '0';
    END IF;


    IF (core_state = wait_state) THEN
    END IF;
    
    IF (core_nstate = output_state) THEN
      if x_complete_r = '1' then
        x_complete <= '1';
      end if;
    --Output is simply a counter
--      rOutput <= std_logic_vector(unsigned(rOutput) + 1);
    END IF;
    
    IF (core_state /= idle and core_state /= beta_init and core_state /= seed_init AND core_state /= setup AND core_state /= paused_state) THEN
    --Only keep track of run_time when the state is not any of idle, setup or paused states
      -- if chain_counter_lpr = CHAINS and chain_counter_delay = STEPS*RUNS  then
      --   finished1 <= '1';
      -- else 
      --   finished1 <= '0';
      -- end if ;

    --   IF (unsigned(run_time) /= 0) THEN
    --     run_time <= std_logic_vector(unsigned(run_time) - 1);
    --   END IF;
      
    -- --Only check for run_time while in the processing states
    --   IF (unsigned(run_time) = 0) THEN
    --     finished1 <= '1';
    --   ELSE
    --     finished1 <= '0';
    --   END IF;     
    END IF;
  END IF;
END PROCESS;

end architecture;
