function [out1, out2] = separate_by_two(A)
% Takes a matrix A of positive integers as input and returns two 
% row vectors. The first contains all the even elements of A, 
% and the second contains all the odd elements of A, both arranged
% according to column-major order of A. You are not allowed to use 
[r c] = find(mod(A, 2) == 0);
out1 = A(sub2ind(size(A), r, c))'; 

[r c] = find(mod(A, 2) == 1);
out2 = A(sub2ind(size(A), r, c))'; 

end

