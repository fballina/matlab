function [out1] = halfsum(A)
% Takes as input an at most two-dimensional matrix A and computes
% the sum of the elements of A that are in the diagonal or are to
% the right of it. 

out1 = sum(sum(triu(A,0))); 

end

