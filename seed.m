% Output beta values in hex for input into FPGA

function seed(number)
    fileID = fopen('seed','w');

    A = rand(number,1, 'double')
    for i = 1:number
        fprintf('%s\n', num2hex(A(i)));
        fprintf(fileID,'%s\n', num2hex(A(i)));
    end
    fclose(fileID);