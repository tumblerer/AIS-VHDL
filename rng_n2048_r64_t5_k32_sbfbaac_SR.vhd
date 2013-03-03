LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity rng_n2048_r64_t5_k32_sbfbaac_SR is
  generic(K:integer);
  port(clk:in std_logic; ce:in std_logic; din:in std_logic; dout:out std_logic);
end entity;

architecture RTL of rng_n2048_r64_t5_k32_sbfbaac_SR is
  signal bits : std_logic_vector(0 to K);
begin
	bits(0) <= din;
	process(clk) begin
		if(rising_edge(clk) and (ce='1')) then
			bits(1 to K) <= bits(0 to K-1);
		end if;
	end process;
	dout <= bits(K);
end;