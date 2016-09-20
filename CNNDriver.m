function out = CNNDriver(imrgb)
    % imrgb - 32x32x3 uint8, RGB image matrix
    load('CNNparameters');
    imrgb = double(imrgb);
    
    % normalization layer
    out{1} = normalization(imrgb);
       
    for layerIndex = 2:16
        if(any(layerIndex == [2,4,7,9,12,14])) 
            % convolution layer
            out{layerIndex} = convolution(out{layerIndex-1}, biasvectors{layerIndex}, filterbanks{layerIndex});
        end

        if(any(layerIndex == [3,5,8,10,13,15])) 
            % ReLU layer
            out{layerIndex} = relu(out{layerIndex-1});
        end

        if(any(layerIndex == [6,11,16])) 
            % maxpool layer
            out{layerIndex} = maxpool(out{layerIndex-1});
        end
    end
    
    % fully connection layer
    out{17} = fullyconnected(out{16}, biasvectors{17}, filterbanks{17});
    
    % softmax layer
    out{18} = softmax(out{17});
end