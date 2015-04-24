function [out1] = classify(x)
% If x is an empty matrix, the function returns -1. If x is a 
% scalar, it returns 0. If x is a vector, it returns 1. If x is
% none of these, it returns 2. You are allowed to use built-in
% functions except 
dim = size(x);
if dim(1) == 0 | dim(2) == 0
    out1 = -1;
elseif dim(1) == 1 && dim(2) == 1
    out1 = 0;
elseif dim(1) == 1 | dim(2) == 1
    out1 = 1;
else 
    out1 = 2;
end

end

