------------------------------------------------------------------------------
--	Copyright (c) 2012, Imperial College London
--	All rights reserved.
-------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE IEEE.math_real.log2;
USE IEEE.math_real.ceil;
LIBRARY work;
USE work.Pack.All;

ENTITY test_core IS
	GENERIC(
		C_SIMPBUS_AWIDTH 	: integer := 32
		--OUTPUT_CYCLE		: integer := 10 --CYCLES AFTER WHICH OUTPUT IS VALID (CANNOT BE 0)
	);
	PORT(
		SYS_CLK			: IN std_logic;
		SYS_RST 		: IN std_logic;
	
		--INPUT SIGNALS
		INPUT_1 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
		INPUT_2 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
		INPUT_3 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
		INPUT_4 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
		
		INPUT_5 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
		INPUT_6 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
		INPUT_7 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
		INPUT_8 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
		INPUT_9 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
		INPUT_10 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
		INPUT_11 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);

		OUTPUT			: OUT std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
		OUTPUT_2		: OUT std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
		OUTPUT_3		: OUT std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
		OUTPUT_4		: OUT std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
		
		--VALID SIGNAL FOR VALID OUTPUT
		VALID			: OUT std_logic;
		
		--START SIGNAL TO START PROCESSING
		START			: IN std_logic;
		
		--RUN TIME OF THE CORE
		RUNTIME 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
		
		--FINISHED SIGNAL
		FINISHED 		: OUT std_logic;
		
		--BUSY TO SIGNAL THE CORE TO PAUSE THE PROCESSING
		BUSY			: IN std_logic;
		
		--OUTPUT_CYCLE: Determines after how many cycles the output will be valid
		OUTPUT_CYCLE 	: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0)
	);
END test_core;

ARCHITECTURE synth OF test_core IS
    
    COMPONENT LPR_Total
    PORT(
	     clk : IN  std_logic;
	     reset : IN  std_logic;
	     dina_beta : IN  std_logic_vector(63 downto 0);
	     dina_seed : IN  std_logic_vector(63 downto 0);
	     doutb_x : OUT  std_logic_vector(63 downto 0);
	     doutb_LPR: out std_logic_vector(PRECISION-1 downto 0);
	     complete : OUT  std_logic;

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

    signal dina_seed
    signal dina_beta
   	signal steps_slv : in std_logic_vector(31 downto 0);
	signal runs_slv : in std_logic_vector(31 downto 0);
	signal mean : in std_logic_vector(PRECISION-1 downto 0);
	signal variance : in std_logic_vector(PRECISION-1 downto 0);
	signal mean_gen : in std_logic_vector(PRECISION-1 downto 0);
	signal standarddev_Gen : in std_logic_vector(PRECISION-1 downto 0);
	signal standarddev_Trans : in std_logic_vector(PRECISION-1 downto 0)

    begin

    core : LPR_Total Port Map (
		clk => clk,
        reset => reset,
        dina_beta => dina_beta,
        dina_seed => dina_seed,
        doutb_x => doutb_x,
        doutb_LPR => doutb_LPR,
        complete => complete,
    	   --RIFFA signals
        valid => valid,
        start => start,
        runtime => runtime,
        FINISHED => FINISHED,
        BUSY => BUSY,


    	)

    dina_beta <= INPUT_1 & INPUT_2;
    dina_seed <= INPUT_3 & INPUT_4;

    steps_slv <= INPUT_5;
    runs_slv <= INPUT_6;
    mean <= INPUT_7 & INPUT_8;
    variance <= INPUT_9 & INPUT_10;
    mean_gen <= INPUT_11 & INPUT_12;
    standarddev_Gen <= INPUT_13 & INPUT_14;
    standarddev_Trans <= INPUT_15 & INPUT_16;

    OUTPUT <= doutb_x(31 downto 0);
    OUTPUT_2 <= doutb_x(63 downto 32);
    OUTPUT_3 <= doutb_LPR(31 downto 0);
    OUTPUT_4 <= doutb_LPR(63 downto 32);

END ARCHITECTURE synth;
