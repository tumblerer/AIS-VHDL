library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Pack.ALL;

entity LPR is
    Port (	clk : in std_logic,
				reset : in std_logic,
				activate: in std_logic,
				State : in  STD_LOGIC_VECTOR (STATE_SIZE downto 0);
				Output : out  STD_LOGIC_VECTOR (STATE_SIZE downto 0);
	); 
		  
end LPR;

architecture Behavioral of LPR is
   --Inputs
   signal a : std_logic_vector(63 downto 0) := (others => '0');
   signal b : std_logic_vector(63 downto 0) := (others => '0');
	
	signal Sub1Result : std_logic_vector(63 downto 0) := (others => '0');
 	--Outputs
   signal result : std_logic_vector(63 downto 0);
	
	--Control Signals
	
begin
	-- Xi - Mean
   SUB1: ENTITY work.LPR_Subtract PORT MAP (
          a => a,
          b => b,
          clk => clk,
          result => Sub1Result
        );

	-- LprNew - LprOld	  
	SUB2: ENTITY work.LPR_Subtract PORT MAP (
          a => a,
          b => b,
          clk => clk,
          result => Sub1Result
        );
		  
	-- (Xi - Mean)^2	  
	MULT1: ENTITY work.LPR_Mult PORT MAP(
          a => Sub1Result,
          b => Sub1Result,
          clk => clk,
          result => Sub1Result
        );
		  
	-- Sigma^2(Possibly not needed)
	MULT2: ENTITY work.LPR_Mult PORT MAP(
          a => Sub1Result,
          b => Sub1Result,
          clk => clk,
          result => Sub1Result
        );
		  
	-- (Xi - Mean)^2 / Sigma^2	  
	DIV1: ENTITY work.LPR_Divide PORT MAP(
          a => ,
          b => ,
          clk => clk,
          result => 
        );

	C1: PROCESS()
		begin
		WAIT UNTIL clk'EVENT AND clk='1';
		
			a(63 downto 54)<= std_logic_vector(signed(MEAN));
			b(63 downto 54)<= std_logic_vector(signed(VARIANCE));
		
		end
end Behavioral;

