% Step 6

function out = softmax(in)
    a = 0;
    sum = 0;
    
    for k = 1:size(in,3)
        a = max(a,in(1,1,k));
    end
    
    for k = 1:size(in,3)
        sum = sum + exp(in(1,1,k) - a); 
    end
    
    for k = 1:size(in,3)     
        out(1,1,k) = exp(in(1,1,k) - a)/sum;
    end
end