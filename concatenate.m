%Concatenates output of RIFFA file into 64 bit variables and splits into LPR.out and x.out

function concatenate(steps, runs, chains, RIFFA)

	infile = fopen('log.txt');

	out_lpr = fopen('LPR.out','w');
	out_x = fopen('x.out','w');
	in = textscan(infile, '%s');

	if RIFFA == 0 
		for i = 1:2:runs*chains*2
			fprintf(out_x, '%s\n',strcat(in{1}{i}, in{1}{i+1}));
		end
		for i = runs*chains*2+1:2:(steps+1)*runs*chains*2
			fprintf(out_lpr, '%s\n',strcat(in{1}{i}, in{1}{i+1}));
		end
	else
		for i = 1:2:runs*chains*2
			fprintf(out_x, '%s\n',strcat(dec2hex(in{1}{i}), dec2hex(in{1}{i+1})));
		end
		for i = runs*chains*2+1:2:(steps+1)*runs*chains*2
			fprintf(out_lpr, '%s\n',strcat(dec2hex(in{1}{i}), dec2hex(in{1}{i+1})));
		end
	end

	fclose(infile);
	fclose(out_lpr);
	fclose(out_x);
