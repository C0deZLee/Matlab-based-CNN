% Step 5
% Takes in an image and get the inner product with corresponding filter
% The output is an 1D array
function out = fullyconnected(in, biasvectors, filterbanks)
    for l = 1:size(filterbanks,4)
         sum = 0;
         
         for i = 1:size(in,1)
           for j = 1:size(in,2)
               for k = 1:size(in,3)
                   sum = sum + filterbanks(i,j,k,l)*in(i,j,k);
               end
           end
         end
         
         out(:,:,l) = sum + biasvectors(l);
    end
end