% Output beta values in hex for input into FPGA

function beta(steps)
fileID = fopen('beta','w');

for i = 1:steps
    beta_out = (1/steps)*i;
    fprintf('%s\n', num2hex(beta_out));
    fprintf(fileID,'%s\n', num2hex(beta_out));
end

fclose(fileID);