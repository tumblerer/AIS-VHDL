function data2bin
	infile = fopen('data.txt');
	outfile = fopen('databin.txt','w');

	A = fscanf(infile, '%u');

	fclose(infile);

	for i = 1:size(A)
		fprintf(outfile, '%s\n' ,dec2bin(A(i),32));
	end

	fclose(outfile);
