% Step 4
% Takes the input image (N*M*D1) and convolves with the corresponding channel's
% filter, the biasvector is added in the end
% The output size is (N*M*D2) 

function out = convolution(in, biasvectors, filterbanks)
    for l = 1:size(filterbanks,4)
         sum = 0;
         for k = 1:size(in,3)
             sum = sum + imfilter(in(:,:,k),filterbanks(:,:,k,l),'conv'); 
         end
         out(:,:,l) = sum + biasvectors(l);
    end
end