% Writes the input file for RIFFA

function input(steps, runs, mean, variance, mean_gen, standarddev_gen, standarddev_trans, seeds)

	output = fopen('data.txt','w');

	% Print steps
	fprintf('Steps : %d\n',steps);
	fprintf(output, '%d\n',steps);

	% Print runs
	fprintf('Runs : %d\n',runs);
	fprintf(output, '%d\n',runs);

	% Print input variables
	[msb,lsb] = splithex(mean);
	fprintf(output, '%d\n%d\n', msb,lsb);

	[msb,lsb] = splithex(variance);
	fprintf(output, '%d\n%d\n', msb,lsb);
	
	[msb,lsb] = splithex(mean_gen);
	fprintf(output, '%d\n%d\n', msb,lsb);
	
	[msb,lsb] = splithex(standarddev_gen);
	fprintf(output, '%d\n%d\n', msb,lsb);
	
	[msb,lsb] = splithex(standarddev_trans);
	fprintf(output, '%d\n%d\n', msb,lsb);

	% Print Betas
	for i = 1:steps
    	beta_out = i/steps;
    	[msb,lsb] = splithex(beta_out);
    	fprintf('%d\n%d\n', msb, lsb);
    	fprintf(output,'%d\n%d\n', msb, lsb);
	end

	if steps < 300
		for i = 1:(300-steps)*2
			fprintf(output,'0\n');
		end
	end

	% Print seeds
	A = rand(seeds,1, 'double')
    for i = 1:seeds
    	[msb, lsb] = splithex(A(i));
        fprintf('%d\n%d\n', msb, lsb);
        fprintf(output,'%d\n%d\n', msb, lsb);
    end

