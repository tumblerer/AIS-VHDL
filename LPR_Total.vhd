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
    addra_beta : in std_logic_vector(31 downto 0);
    wea_beta : in std_logic_vector(7 downto 0);
    dina_seed : in std_logic_vector(PRECISION-1 downto 0);
    wea_seed : in std_logic_vector(7 downto 0);
    addra_seed : in std_logic_vector(31 downto 0);
--    addrb_X : in std_logic_vector(31 downto 0);
    doutb_x : out  std_logic_vector(PRECISION-1 downto 0);
--    x_complete : in std_logic;
--    addrb_LPR : in std_logic_vector(31 downto 0);
    doutb_LPR: out std_logic_vector(PRECISION-1 downto 0);
--    complete: out std_logic
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
    BUSY      : IN std_logic
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
      start : in std_logic
   ) ;
end component ; -- LPR_Chain

  type address_array is array(CHAINS downto 1) of std_logic_vector(31 downto 0);
  type data_array is array(CHAINS downto 1) of std_logic_vector(PRECISION-1 downto 0);
  type single_wire_array is array(CHAINS downto 1) of std_logic;

  signal addra_seed_array , addrb_x_array: address_array;
  signal dina_seed_array , doutb_x_array: data_array;
  signal complete_array : single_wire_array;
  signal doutb_LPR_array : data_array;
  signal chain_counter_delay : integer range 0 to STEPS*RUNS := 0;
  signal chain_counter_lpr: integer range 1 to CHAINS := 1;
  signal chain_counter_delay_x: integer range 0 to RUNS := 0; 
  -- Counters
  signal seed_counter, x_counter : integer range 1 to RUNS*STEPS*8;
  signal x_address_counter : integer range 0 to RUNS:=0;

  signal addrb_x: std_logic_vector(31 downto 0);

  signal activate : std_logic;

  -- RIFFA state machine signals
  TYPE core_state_type IS (
        idle,
        setup,
        --PROCESSING STATES
        output_state,
        wait_state,
        paused_state);
  SIGNAL core_state, core_nstate : core_state_type := idle;

begin 

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
          start => activate
        );
  end generate;

Load: Process
begin
  wait until clk'EVENT and clk='1';

      if wea_seed = x"FF" then
        if seed_counter < CHAINS then
          seed_counter <= seed_counter + 1;
        else
          seed_counter <= 1;
        end if;
      else
        seed_counter <= CHAINS;
      end if;

      if reset = '1' then
        x_counter <= CHAINS;
        x_address_counter <= 0;
      else
        if complete_array(CHAINS) = '1' then
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
      
      if reset = '1' then
        chain_counter_lpr <= 1;
        chain_counter_delay<= 0;
      else
        if x_complete = '1' then
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
    addra_seed_array(seed_counter) <= addra_seed;

  end process;

  Transfer: process(x_address_counter , chain_counter_lpr, complete_array, addra_seed, addrb_x, doutb_x_array, dina_seed, seed_counter, x_counter, doutb_lpr_array)
  begin

    addrb_x <= std_logic_vector(to_unsigned(x_address_counter*8,addrb_x'length)); 

    complete <= complete_array(CHAINS);

    doutb_x <= doutb_x_array(x_counter);

    doutb_LPR <= doutb_LPR_array(chain_counter_lpr);

  end process;

  
Nstate_assignment : PROCESS (core_state, reset, output_counter, START, finished1, BUSY)
BEGIN
  IF (reset = '1') THEN
    core_nstate <= idle;
  ELSE
    core_nstate <= core_state;
    CASE (core_state) IS
      WHEN idle =>
        IF (START = '1') THEN
          core_nstate <= setup;
        END IF;
      WHEN setup =>
        core_nstate <= wait_state;
      WHEN wait_state =>
        IF (finished1 = '1') THEN
          IF (BUSY = '0') THEN
            core_nstate <= idle;
          END IF;
        ELSE
          IF (unsigned(output_counter) = 0) THEN
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
VARIABLE v_output_counter : std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
BEGIN
  WAIT UNTIL rising_edge(SYS_CLK);
  IF (SYS_RST = '1') THEN
    core_state <= idle;
    output_counter <= (OTHERS => '0');
    rOutput <= (OTHERS => '0');
    run_time <= (OTHERS => '0');
    finished1 <= '0';
  ELSE
    core_state <= core_nstate;
    finished1 <= '0';
    IF (core_state = setup) THEN
      IF (unsigned(RUNTIME) <= 1) THEN
        run_time <= std_logic_vector(to_unsigned(1,C_SIMPBUS_AWIDTH));
      ELSE
        run_time <= std_logic_vector(unsigned(RUNTIME) - 1); --Initialise run_time to the input RUNTIME
      END IF;
      --output_counter = max(1, OUTPUT_CYCLE-2)
      IF (to_unsigned(2, C_SIMPBUS_AWIDTH) <= unsigned(OUTPUT_CYCLE)) THEN
        v_output_counter := std_logic_vector(unsigned(OUTPUT_CYCLE) - 2);
      ELSE
        v_output_counter := std_logic_vector(to_unsigned(1,C_SIMPBUS_AWIDTH));
      END IF;
      
      output_counter <= v_output_counter;
    END IF;
    
    IF (core_state = wait_state) THEN
    --Wait in this state until the counter has reached desired value.
      IF (unsigned(output_counter) = 0) THEN
        output_counter <= v_output_counter;
      ELSE
        output_counter <= std_logic_vector(unsigned(output_counter) - 1);
      END IF;
    END IF;
    
    IF (core_nstate = output_state) THEN
    --Output is simply a counter
      rOutput <= std_logic_vector(unsigned(rOutput) + 1);
    END IF;
    
    IF (core_state /= idle AND core_state /= setup AND core_state /= paused_state) THEN
    --Only keep track of run_time when the state is not any of idle, setup or paused states
      IF (unsigned(run_time) /= 0) THEN
        run_time <= std_logic_vector(unsigned(run_time) - 1);
      END IF;
      
    --Only check for run_time while in the processing states
      IF (unsigned(run_time) = 0) THEN
        finished1 <= '1';
      ELSE
        finished1 <= '0';
      END IF;     
    END IF;
  END IF;
END PROCESS;

end architecture;
