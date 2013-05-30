% Output Mean and Standard deviation

function mean(runs, steps, chains)
    
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
    
    for i = 1:size_x(1)
      x_num(i) = hex2num(x_in(i));
    end
   
    for i = 1:steps*runs*chains
        lpr(i) = hex2num(lpr_in{1}{i});
    end;

    b=zeros(size(lpr));
    
    for i=1:length(b)
        b(i)=i;
    end
    
    for j = 1:chains
      for i = 1:runs
        index = (b<=j*(length(lpr)/chains)) & (b> (j-1)*length(lpr)/chains) & (mod(b-1,runs)+1 == i)
        
        weights(i,j) = sum(lpr(index))
      end
    end 
    
    for j=1:runs
       chain_results(j) = sum(exp(weights(:,j)))*x_num(j)/sum(exp(weights(:,j)))
    end
    
    sum(chain_results)/chains
    
    
    
        

   