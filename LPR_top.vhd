library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.Pack.all;
--use work.Seed.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LPR_top is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Beta : in  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           activate_in : in  STD_LOGIC;
           activate_out : out  STD_LOGIC;
           X_in : in  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           X_out : out  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           Mem_Addr_B_In : out  STD_LOGIC_VECTOR (31 downto 0);
           Mem_Data_B_In : in  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           Mem_Addr_B_Out : in  STD_LOGIC_VECTOR (31 downto 0);
           Mem_Data_B_Out : out  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           seed : in std_logic;
           start_core : in std_logic;
           BlockID : in std_logic_vector(7 downto 0);
           complete: out std_logic;
          -- Run Parameters
          steps : in integer range 1 to MAX_STEPS;
          runs : in integer range  1 to MAX_RUNS;
          mean : in std_logic_vector(PRECISION-1 downto 0);
          variance : in std_logic_vector(PRECISION-1 downto 0);
          standarddev_Trans : in std_logic_vector(PRECISION-1 downto 0)
           );
end LPR_top;

architecture Behavioral of LPR_top is

component Evaluator is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           xState : in  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           Comp_In : in std_logic_vector(0 downto 0);
           Proposed_LPR : out  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           x_out : out std_logic_vector(PRECISION-1 downto 0);
           seed: in std_logic;
           -- Run Parameters
           mean : in std_logic_vector(PRECISION-1 downto 0);
           variance : in std_logic_vector(PRECISION-1 downto 0);
           standarddev_Trans : in std_logic_vector(PRECISION-1 downto 0)
    );
end component;

component Comparator is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           active : in  STD_LOGIC;
           LPR_In : in std_logic_vector(PRECISION-1 downto 0);
           CompResult : out  STD_LOGIC;
           Mem_Addr_B_In : out  STD_LOGIC_VECTOR (31 downto 0);
           Mem_Data_B_In : in  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           Mem_Addr_B_Out : in  STD_LOGIC_VECTOR (31 downto 0);
           Mem_Data_B_Out : out  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           Beta : in  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           seed: in std_logic;
           BlockID: in std_logic_vector(7 downto 0);
           complete: out std_logic;
           -- Run Parameters
           steps : in integer range 1 to MAX_STEPS;
           runs : in integer range  1 to MAX_RUNS
      );
end component;
  
  signal Proposed_LPR : std_logic_vector(PRECISION-1 downto 0);
  
  signal Comp_In : std_logic_vector(0 downto 0);
begin
LPR1: for i in 1 to VARS generate
  begin
    Evaluator: entity work.Evaluator Port Map (
          clk => clk,
          reset => reset,
          xState => X_in,   --(i*PRECISION-1 downto i*(VARS-1)),
          Comp_In => Comp_In,
          Proposed_LPR => Proposed_LPR,
          x_out => x_out,
          seed => seed,
          mean => mean,
          variance => variance,
          standarddev_Trans => standarddev_Trans
      );

end generate; 

--LPR2 : for i in 1 to VARS generate
      Comparator1: entity work.Comparator Port Map (
         clk => clk,
         reset => reset,
         activate_in => activate_in,
         LPR_In => Proposed_LPR,
         CompResult => Comp_In,
         Mem_Addr_B_In => Mem_Addr_B_In,
         Mem_Data_B_In =>  Mem_Data_B_In,
         Mem_Addr_B_Out => Mem_Addr_B_Out,
         Mem_Data_B_Out =>  Mem_Data_B_Out,
         Beta => Beta,
         activate_out => activate_out,
         seed => seed,
         start_core => start_core,
         BlockID => BlockID,
         complete => complete,
         steps => steps,
         runs => runs
        );
--end generate ; -- LPR2


end Behavioral;

