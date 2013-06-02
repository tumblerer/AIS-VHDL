library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Pack.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Comparator is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           activate_in : in  STD_LOGIC;
           LPR_In : in std_logic_vector(PRECISION-1 downto 0);
           CompResult : out  STD_LOGIC_VECTOR(0 downto 0);
           Mem_Addr_B_In : out  STD_LOGIC_VECTOR (31 downto 0);
           Mem_Data_B_In : in  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           Mem_Addr_B_Out : in  STD_LOGIC_VECTOR (31 downto 0);
           Mem_Data_B_Out : out  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           Beta : in  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           activate_out: out std_logic;
           seed: in std_logic;
           BlockID : in std_logic_vector(7 downto 0);
           complete : out std_logic
      );
end Comparator;

architecture Behavioral of Comparator is

-- States
  TYPE state_type is (idle, load_rng, running);
  signal state,nstate : state_type;
  
  signal Sub1Result : std_logic_vector(PRECISION-1 downto 0) := (others => '0');
  signal Mult1Result : std_logic_vector(PRECISION-1 downto 0) := (others => '0');
  signal Exp1Result : std_logic_vector(PRECISION-1 downto 0) := (others => '0');
  signal Mult1Result_Ext, Exp1Result_Ext : std_logic_vector (65 downto 0):= (others => '0');

  signal CompResult_reg :std_logic_vector(0 downto 0);
-- Pipeline
  signal Proposed_LPR : pipeline_type(1 to SMALL_PIPE);
  signal Old_LPR : pipeline_type(1 to SMALL_PIPE);
  signal old_lpr_output,Proposed_LPR_output : std_logic_vector(PRECISION-1 downto 0):= (others => '0');

  -- RNG Signal
  signal rng_mode_uni, rng_ce_uni : std_logic;
  signal rng_uni : std_logic_vector(PRECISION-1 downto 0); 
  signal rng_uni_pos : std_logic_vector(33 downto 0);
  signal rng_uni_out : std_logic_vector(31 downto 0);
  signal s_in_uni, s_out_uni : std_logic;
  signal rng_uni_ext, LnResult1_ext: std_logic_vector (PRECISION-1+2 downto 0);
  signal LnResult1: std_logic_vector(PRECISION-1 downto 0);

  -- Counters
  signal initial_counter : integer range 0 to (TOTAL_PIPE+1)*STEPS+RUNS+1:= 0;
  signal load_rng_counter : integer range 0 to 2049 := 0;
  signal LPR_old_counter : integer range 0 to 1024 := 0;
  signal Address_Counter_Wr, Address_Counter_Rd, Address_Counter_Wr_reg, Address_Counter_Rd_reg: integer range 0 to 8192 :=0;
  signal sample_counter : integer range 0 to TOTAL_PIPE*BLOCKS := 0;
  signal sample_counter_rd : integer range 0 to TOTAL_PIPE*BLOCKS := 0;

  --Memory signals
  signal  write_a : std_logic_vector(7 DOWNTO 0);
  signal data_in_a : std_logic_vector(PRECISION-1 downto 0):=(others => '0');
  signal addr_a : std_logic_vector (31 downto 0):=(others => '0');

  signal complete_reg : std_logic:= '0';

begin

-- LprNew - LprOld    
  -- 12 cycles
  SUB64: if PRECISION = 64 generate
  begin SUB1: ENTITY work.LPR_Subtract PORT MAP (
          a => LPR_In,
          b => Mem_Data_B_In,
          clk => clk,
          result => Sub1Result
        );
  end generate;

  SUB32: if PRECISION = 32 generate
  begin SUB1: ENTITY work.LPR_Subtract PORT MAP (
          a => LPR_In,
          b => Mem_Data_B_In,
          clk => clk,
          result => Sub1Result
        );
  end generate;


  -- (LPRNew-LPROld) * eta
  -- 15 cycles
  MULT64P: if PRECISION = 64 generate
  begin MULT1: ENTITY work.LPR_Mult PORT MAP(
          a => Sub1Result,
          b => Beta,
          clk => clk,
          result => Mult1Result
        );
  end generate;
  -- -- Exp ((LprNew-LprOld)*eta)
  -- -- Flopoco 2MSB are error bits
  -- -- 22 cycles
  -- EXP1: ENTITY work.FPExp_11_52_400 PORT MAP(
  --    clk => clk, 
  --    rst => reset,
  --        X => mult1Result_ext,
  --        R  => Exp1Result_ext
  -- );
  
  -- exp(d) > rng
  -- 2 cycles
  COMP1 : ENTITY work.LPR_ALessThanB PORT MAP ( 
      clk => clk,
      a => LnResult1,
      b => Mult1Result,
      result => CompResult_reg
   );

      
  --Dual Port BRAM
  -- 2 cycle write, 2 cycle read
  BRAM1: ENTITY work.Dual_Port_BRAM PORT MAP(
       clka => clk,
       wea => write_a,
       addra => addr_a,
       dina => data_in_a,
       clkb => clk,
       rstb => reset,
       addrb => Mem_Addr_B_Out,
       doutb => Mem_Data_B_Out
  );
  
  -- 2048 cycles to load

 RNG_UNIFORM: ENTITY work.rng_n1024_r32_t5_k32_s1c48 PORT MAP(
    clk => clk,
    ce => rng_ce_uni,
    mode => rng_mode_uni,
    s_in => s_in_uni,
    s_out => s_out_uni,
    rng => rng_uni_out
  );
  
  RNG_UNI_CONV: ENTITY work.RNG_FixedtoFloat_34to64 PORT MAP (
    a => rng_uni_pos,
    clk => clk,
    result => rng_uni
  );

  RNG_LN: ENTITY work.LPR_Ln PORT MAP(
    clk => clk,
    rst => reset,
    X => rng_uni_ext,
    R =>LnResult1_ext
  );

Control_sync: PROCESS
    begin
    WAIT UNTIL clk'EVENT AND clk='1';
      if  reset='1' then
        initial_counter <= 0;
        sample_counter <= TOTAL_PIPE;
        Address_Counter_Rd <= 0;
        Address_Counter_Wr <= 0;
        load_rng_counter <= 0;
      elsif reset = '0' AND activate_in = '0' then
        if load_rng_counter < 2048 then
          load_rng_counter <= load_rng_counter + 1;
        end if;

        write_a <= x"00";

      else --activate_in = 1
     -- LPR Value pipeline 
        Proposed_LPR(1) <= LPR_In;
        Proposed_LPR(2 to SMALL_PIPE) <= Proposed_LPR(1 to SMALL_PIPE-1); 
        Proposed_LPR_output <= Proposed_LPR(SMALL_PIPE-1); --(-2) from cost of loading into pipeline
        -- Pipe of previous LPR value
        Old_LPR(1) <= Mem_Data_B_In;
        Old_LPR(2 to SMALL_PIPE) <= Old_LPR(1 to SMALL_PIPE-1); 
        Old_LPR_output <= Old_LPR(SMALL_PIPE-1); -- Seems dubious - keep eye on

        initial_counter <= initial_counter + 1;

        if sample_counter < TOTAL_PIPE_INCR*BLOCKS-1 and initial_counter > TOTAL_PIPE-2 then
          sample_counter <= sample_counter + 1;
        else
          sample_counter <= 0;
        end if;

        -- Enable and disable write enable for local BRAM
        if initial_counter > TOTAL_PIPE-2 and sample_counter < RUNS and complete_reg = '0' then 
          Address_Counter_Wr_reg <= Address_Counter_Wr_reg + 8; 
          write_a <= x"FF";
        else
          write_a <= x"00";
        end if;


        if initial_counter > TOTAL_PIPE-SMALL_PIPE-2 and sample_counter_rd < TOTAL_PIPE_INCR*BLOCKS-1 then
          sample_counter_rd <= sample_counter_rd + 1;
        else
          sample_counter_rd <= 0;
        end if;

        if BlockID = x"01" and initial_counter < TOTAL_PIPE-SMALL_PIPE-2 + TOTAL_PIPE_INCR*BLOCKS then --delay read if first block
          Address_Counter_Rd <= 0;
        elsif initial_counter > TOTAL_PIPE-SMALL_PIPE-2 and sample_counter_rd < RUNS then -- Time 2 too long (hence -2)
          Address_Counter_Rd <= Address_Counter_rd + 8;
        end if;

        Address_Counter_Wr <= Address_Counter_Wr_reg;
      --  Address_Counter_Rd <= Address_Counter_Rd_reg;

      end if;
      
    end process Control_sync;

    State_Machine_clk: PROCESS
    begin
    WAIT UNTIL clk'EVENT AND clk='1';
      if reset='1' then
        state<= idle;
      else
        state<= nstate;
      end if;
    end process State_Machine_clk;  
    
    State_machine: PROCESS(state,nstate, initial_counter, activate_in, mult1result, Proposed_LPR_output, Old_LPR_output,CompResult_reg, Exp1Result_Ext,rng_uni,load_rng_counter,seed,Address_Counter_Wr,Address_Counter_Rd)
    
    begin

      case (state) is
      
        when idle =>
          if load_rng_counter < 2048 then
            nstate <= load_rng;
          elsif activate_in = '0' then
            nstate <= idle;
          else
            nstate <= running;
          end if;
            
          rng_ce_uni <= '0';
          rng_mode_uni <= '0';
          s_in_uni <= '1';
          Mem_Addr_B_In <= x"00000000";
          addr_a <= x"00000000";
          data_in_a <= (others=> '0');

        when load_rng => 
          nstate <= load_rng;
          rng_ce_uni <= '1';
          rng_mode_uni <= '1';
          Mem_Addr_B_In <= x"00000000";
          addr_a <= x"00000000";
          data_in_a <= (others=> '0');

          if load_rng_counter = 1 then
            s_in_uni <= seed;
          elsif load_rng_counter >= 2048 then
            rng_mode_uni <= '1';
            s_in_uni <= seed;

            if activate_in = '0' then
              nstate <= idle;
            else
              nstate <= running;           
            end if;
            
          else
            s_in_uni <= seed;
          end if; 

        when running =>
          rng_ce_uni <= '1';
          rng_mode_uni <= '0';
          s_in_uni <= '1';

          if activate_in = '0' then
            nstate <= idle;
          else
            nstate <= running;
          end if;

          Mem_Addr_B_In <= std_logic_vector(to_unsigned(Address_Counter_Rd,Mem_Addr_B_In'length));
          addr_a <= std_logic_vector(to_unsigned(Address_Counter_Wr,addr_a'length));

          if CompResult_reg = "1" or (BlockID = x"01" and initial_counter < TOTAL_PIPE+RUNS) then
          -- Save to LPR address
            data_in_a <= Proposed_LPR_output;
          else
            data_in_a <= Old_LPR_output;
          end if;
      end case;
    end process;

    Activate_Propagate: process(initial_counter)
    begin

      -- Propagate activate signal
      if initial_counter > TOTAL_PIPE then
        activate_out <= '1';
      else
        activate_out <= '0';
      end if;

      if initial_counter > (TOTAL_PIPE+1)*STEPS+RUNS then
        complete_reg <= '1';
      else
        complete_reg <= '0';
      end if;

      complete <= complete_reg;

    end process;

    Signal_Convert: process(mult1result, Exp1Result_ext, rng_uni, rng_uni_out, LnResult1, CompResult_reg)
    begin
      mult1Result_ext <= "01" & mult1result;
      Exp1Result <= Exp1Result_ext(PRECISION-1 downto 0);
      rng_uni_ext <= "01" & rng_uni;
      rng_uni_pos <= "00" & rng_uni_out;
      LnResult1 <= LnResult1_ext(PRECISION-1 downto 0);
      CompResult <= CompResult_reg;

    end process;
end Behavioral;

