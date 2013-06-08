function [msb, lsb] = splithex(input)

	input_hex = num2hex(input);

	msb = hex2dec(input_hex(1:8))
	lsb = hex2dec(input_hex(9:16))