% Step 4
% 
function out = convolution(in, biasvectors, filterbanks)
    for l = 1:size(filterbanks,4)
         sum = azeros(size(in,1),size(in,2));
         
         for k = 1:size(in,3)
              sum = sum + imfilter(in(:,:,k),filterbanks(:,:,k,l),'conv'); 
         end
         
         out(:,:,l) = sum + biasvectors(l);
    end