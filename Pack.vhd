library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Pack is

--  Variable sizes (generics?)
constant VARS: integer := 1;
constant ETA_SIZE: integer := 32;   	-- Number of bits for Eta values
constant STATE_SIZE: integer := 32; 	-- Number of bits for state values
constant RATIO_SIZE: integer := 32;		-- Number of bits for ratio values
constant LPR_SIZE:	integer := 32;

-- Paramaters (again, generics?)
constant STEPS: integer := 200;

type StateArray is Array (VARS-1 downto 0) of std_logic_vector(7 downto 0);
type etas is Array (STEPS-1 downto 0) of std_logic_vector(ETA_SIZE-1 downto 0);

type AisResult is
	record
    state	       : std_logic_vector( STATE_SIZE-1 downto 0);
    ratio		 	 : std_logic_vector( RATIO_SIZE-1 downto 0);
	end record;


end Pack;

package body Pack is

 
end Pack;
