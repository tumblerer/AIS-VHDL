library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Pack is

--  Variable sizes (generics?)
constant VARS: integer := 1;
--constant STATE_SIZE: integer := 63; 	-- Number of bits for state values
constant PRECISION: integer := 64; -- Overall precision

-- Paramaters (again, generics?)
constant STEPS: integer := 6;
-- How many states
constant RUNS: integer := 3;
-- Blocks per chain
constant BLOCKS: integer:= 2;
--Number of parallel chains - effectively repetitions
constant CHAINS : integer := 2;
-- Mean 1
constant MEAN: std_logic_vector(PRECISION-1 downto 0) := x"3ff0000000000000";
-- 1/Sd 1/(2*0.1^2)
constant VARIANCE: std_logic_vector(PRECISION-1 downto 0) := x"4049000000000000";
constant MEAN_Gen: std_logic_vector(PRECISION-1 downto 0):= (OTHERS => '0');

-- 1/2*SD^2 -- SD = 1
constant STANDARDDEV_Gen :std_logic_vector(PRECISION-1 downto 0):=x"3fe0000000000000";

--1/2*SD^2 -- SD = 0.05
constant STANDARDDEV_Trans : std_logic_vector(PRECISION-1 downto 0):=x"4068ffffffffffff";
--
TYPE pipeline_type IS ARRAY(natural RANGE <>) OF std_logic_vector(PRECISION-1 DOWNTO 0);

constant TOTAL_PIPE : integer := 12+12+15+15+12+15+22+2; -- 105
constant SMALL_PIPE : integer := 12+15+22+2; -- 51
constant BETA_PIPE : integer := TOTAL_PIPE - SMALL_PIPE +12;
constant TOTAL_PIPE_INCR : integer := TOTAL_PIPE+1;


type StateArray is Array (VARS-1 downto 0) of std_logic_vector(PRECISION-1-1 downto 0);
--type etas is Array (STEPS-1 downto 0) of std_logic_vector(ETA_SIZE-1 downto 0);

 
end Pack;
