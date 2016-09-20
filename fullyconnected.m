% Step 5
% 
function out = fullyconnected(in, biasvectors, filterbanks)
    for l = 1:size(filterbanks,4)
         sum = azeros(size(in,1),size(in,2));
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