% Output Mean and Standard deviation

function validate(runs, steps, chains)
    
    %   lpr = importdata('LPR.out');
    x_in = importdata('x.out');
    size_x = size(x_in);
    lpr = zeros(steps*runs*chains,1);
    x_num = zeros(runs,1);
    file =  fopen('LPR.out');
    
    lpr_sum = 0.0;
    temp_mean = 0.0;
    lpr_in = textscan(file, '%s');
    fclose(file);
    
    weights = zeros(runs,chains);
    
    mean_results = zeros(chains);

    beta_val = zeros(steps);
    beta_valT = lpr;

    % Calculate needed beta values
    for i=1:steps
        beta_val(i) = i/steps
    end

    for i = 1:size_x(1)
      x_num(i) = hex2num(x_in(i));
    end
   
    for i = 1:steps*runs*chains
        lpr(i) = hex2num(lpr_in{1}{i});
    end;

    for i = 1:runs*chains
        beta_valT((i-1)*steps+1 : i* steps) = beta_val
    end;

    lpr = lpr.*beta_valT;

    for i = 1:chains
        for j = 1:runs
            for k = 1:steps-1
                weights(i,j) = weights(i,j) + lpr(k+1+(j-1)*runs+(i-1)*chains)- lpr(k+(j-1)*runs+(i-1)*chains)
            end
        end
    end

    for i = 1:chains
        for j = 1:runs
            mean_results(i) = mean_results(i) + exp(weights(i,j))*x_num(i + (j-1)*runs)
        end
        mean_results(i) = mean_results(i) / sum (exp(weight(i,:)))
    end

   fprintf('Mean : %f\n', sum(mean_results)/chains);

    for i=1:chains
        for j=1:runs
            std_dev_results(i) = std_dev_results(i)+ exp(weights(i,j))*(x_num(i+runs*(j-1))-mean_results(i))^2;
        end
        std_dev_results(i) = sqrt(std_dev_results(i) / sum(exp(weights(i,:)));
    end


    % for j = 1:chains
    %     std_dev_results(j) = sqrt(sum(exp(weights(:,j))*(x_num(:)-mean_results(j))^2)/sum(exp(weights(:,j))));
    % end

    fprintf('Standard deviation : %f\n', sum(std_dev_results)/chains);

    
    
    
        

   