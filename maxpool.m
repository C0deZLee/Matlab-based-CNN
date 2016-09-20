% Step 3 
% takes an input image (3d array) and reduce the size of it by taking the 
% maximum value in each nonoverlapping 2x2 block.

function out = maxpool(in)
    a = max(in(1:2:end, 1:2:end, :), in(2:2:end, 1:2:end, :));
    b = max(in(1:2:end, 2:2:end, :), in(2:2:end, 2:2:end, :));
    out = max(a,b);
end