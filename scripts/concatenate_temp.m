%Concatenates output of RIFFA file into 64 bit variables and splits into LPR.out and x.out
% Handles variables when they're returned as 64 bit floating point
function concatenate_temp(steps, runs, chains, RIFFA)

	infile = fopen('test_samples.txt');

	out_lpr = fopen('LPR.out','w');
	out_x = fopen('x.out','w');

	if RIFFA == 0
		in = textscan(infile, '%s');
	else
		in = fscanf(infile, '%f');
	end

	if RIFFA == 0 
		for i = 1:2:runs*chains*2
			fprintf(out_x, '%s\n',strcat(in{1}{i}, in{1}{i+1}));
		end
		for i = runs*chains*2+1:2:(steps+1)*runs*chains*2
			fprintf(out_lpr, '%s\n',strcat(in{1}{i}, in{1}{i+1}));
		end
	else
		for i = 1:runs*chains
			fprintf(out_x,  '%f\n',in(i));
		end
		for i = runs*chains+1:(steps+1)*runs*chains
			fprintf(out_lpr, '%f\n',in(i));
		end
	end

	fclose(infile);
	fclose(out_lpr);
	fclose(out_x);
