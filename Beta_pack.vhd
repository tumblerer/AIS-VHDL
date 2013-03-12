library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Beta_pack is
	
	type beta_type is array (1 to 5) of std_logic_vector(63 downto 0);

	constant beta : beta_type:=(x"0000000000000000", x"3f747ae147ae147b", x"3f847ae147ae147b", x"3f8eb851eb851eb8", x"3f947ae147ae147b");
end package ; -- Beta 