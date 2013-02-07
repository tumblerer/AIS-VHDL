library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Pack is

constant VARS: integer := 1;
constant STEPS: integer := 200;

Type StateArray is Array (VARS-1 downto 0) of std_logic_vector(7 downto 0);
Type etas is Array (STEPS-1 downto 0) of std_logic_vector(7 downto 0);

type AisResult is
	record
    state	       : std_logic_vector( 7 downto 0);
    ratio		 	 : std_logic_vector( 7 downto 0);
	end record;


end Pack;

package body Pack is

 
end Pack;
