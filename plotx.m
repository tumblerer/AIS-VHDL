% Plot final X values in a histogram

function plotx
    
   x = importdata('x.out')';
   size_x = size(x);
   
   for i = 1:size_x(2)
     x_num(i) = hex2num(x(i));
   end

   hist(x_num)
