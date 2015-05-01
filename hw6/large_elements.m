function [out1] = large_elements(X)
% Takes as input an array named X that is a matrix or a vector. 
% Identifies those elements of X that are greater than the sum of 
% their two indexes. The output gives the indexes of such elements
% found in row major order. The first column contains the row 
% indexes, while the second column contains the column indexes. 
dim = size(X);
nrow = dim(1);
ncol = dim(2); 

out1 = []; 
for i = 1:nrow
    for j = 1:ncol
        if X(i, j) > i + j
          out1 = [out1; i j];   
        end
    end
end

end

