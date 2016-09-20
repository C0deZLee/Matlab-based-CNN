% 
function out = CNNDriver(imrgb)
    load('CNNparameters');
    imrgb = double(imrgb);
    
    normalize = [1];
    convolve = [2,4,7,9,12,14,16]; 
    relu = [3,5,8,10,13,15];
    maxpool = [6,11,16];
    fullconnect = [17];
    softmax = [18];
    
    for n = 1:18
        
    end
    
end