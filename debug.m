% debug

load('debuggingTest.mat');
out = CNNDriver(imrgb);

for i = 1:size(out,2)
    if isequal(out{i},layerResults{i}) == 1
        fprintf('Layer %d - Pass\n',i);
    else
        fprintf('Layer %d - Fail\n',i);
    end
end