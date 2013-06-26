% Output Mean and Standard deviation

function validate(steps, runs, blocks, chains)
    
    %   lpr = importdata('LPR.out');
    file_x = fopen('x.out');
    
    lpr = zeros(steps*runs*chains,1);
    x_num = zeros(runs,1);
    file =  fopen('LPR.out');
    
    lpr_sum = 0.0;
    temp_mean = 0.0;
    lpr_in = textscan(file, '%s');
    fclose(file);
    x_in = textscan(file_x, '%s');
    weights = zeros(chains,runs);
    fclose(file_x);
    
    mean_results = zeros(chains,1);
    std_dev_results = mean_results;
    beta_val = zeros(steps,1);
    beta_valT = lpr;

    % Calculate needed beta values
    for i=1:steps
        beta_val(i) = i/steps;
    end
    count = 1;
    for j= 1:chains
        for i = 1:chains:runs*chains
          x_num(count) = hex2num(x_in{1}{i+(j-1)});
          count = count + 1;
        end
    end

    for i = 1:steps*runs*chains
        lpr(i) = hex2num(lpr_in{1}{i});
    end;

    for k=1:chains
        for i=1:steps/blocks
            for j =1:runs
                beta_valT(((j-1)*blocks+1) +(i-1)*blocks*runs +(k-1)*steps*runs: j*blocks + (i-1)*blocks*runs + (k-1)*steps*runs)  = beta_val((i-1)*blocks+1 : i*blocks);
            end
        end
     end

    lpr = lpr.*beta_valT;

    for i = 1:chains
        for j = 1:runs
            weights(i,j) = weights(i,j) + lpr((j-1)*blocks+1+runs*(steps-blocks)+blocks-1+(i-1)*runs*steps) - lpr((j-1)*blocks+1+(i-1)*runs*steps);
        end
    end
    


    % for i = 1:chains
    %     for j = 1:runs
    %         for k = 1:steps-1
    %             weights(i,j) = weights(i,j) + lpr(k+1+(j-1)*steps+(i-1)*runs*steps)- lpr(k+(j-1)*steps+(i-1)*runs*steps);
    %            % fprintf('Pair')
    %            % lpr(k+1+(j-1)*steps+(i-1)*runs*steps)
    %            % lpr(k+(j-1)*steps+(i-1)*runs*steps)
    %         end
    %     end
    % end
    weights
    x_num
    for i = 1:chains
        for j = 1:runs
            mean_results(i) = mean_results(i) + exp(weights(i,j))*x_num(j + (i-1)*runs);
        end
        mean_results(i) = mean_results(i) / sum (exp(weights(i,:)));
    end

   fprintf('Mean : %f\n', sum(mean_results)/chains);

    for i=1:chains
        for j=1:runs
            std_dev_results(i) = std_dev_results(i)+ exp(weights(i,j))*(x_num(j+runs*(i-1))-mean_results(i))^2;
        end
        std_dev_results(i) = sqrt(std_dev_results(i) / sum(exp(weights(i,:))));
    end


    % for j = 1:chains
    %     std_dev_results(j) = sqrt(sum(exp(weights(:,j))*(x_num(:)-mean_results(j))^2)/sum(exp(weights(:,j))));
    % end

    fprintf('Standard deviation : %f\n', sum(std_dev_results)/chains);
	
    
    
    
        

   
