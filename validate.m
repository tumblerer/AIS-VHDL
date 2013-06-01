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

    for i = 1:runs*steps
        if (i < runs*chain_count and i > runs*chain_count-1)
          lpr(i) = lpr(i)*beta_val(j)

    b=zeros(size(lpr));
    
    for i=1:length(b)
        b(i)=i;
    end
    
    for j = 1:chains
      for i = 1:runs
        index = (b<=j*(length(lpr)/chains)) & (b> (j-1)*length(lpr)/chains) & (mod(b-1,runs)+1 == i);
        
        weights(i,j) = sum(lpr(index));
      end
    end 
    
    for j=1:chains
        for i=1:runs
            mean_results(j) = mean_results(j)+ exp(weights(i,j))*x_num(i+runs*(j-1)));
        end
        mean_results(j) = mean_results(j) / sum(weights(:,j));
    end

    % for j=1:chains
    %    mean_results(j) = sum(exp(weights(:,j))*x_num(:))/sum(exp(weights(:,j)));
    % end
    
    % fprintf('Mean : %f\n', sum(mean_results)/chains);

    for j=1:chains
        for i=1:runs
            std_dev_results(j) = std_dev_results(j)+ exp(weights(i,j))*(x_num(i+runs*(j-1))-mean_results(j))^2;
        end
        std_dev_results(j) = sqrt(std_dev_results(j) / sum(weights(:,j)));
    end


    % for j = 1:chains
    %     std_dev_results(j) = sqrt(sum(exp(weights(:,j))*(x_num(:)-mean_results(j))^2)/sum(exp(weights(:,j))));
    % end

    fprintf('Standard deviation : %f\n', sum(std_dev_results)/chains);

    
    
    
        

   