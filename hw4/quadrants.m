function [Q] = quadrants(n)
% takes as input scalar integer n. Returns Q, a 2n-by-2n matrix. Q 
% consists of four n-by-n submatrices. The elements of the submatrix
% in the top left corner are all 1s, the elements of the submatrix at
% the top right are 2s, the elements in the bottom left are 3s, and 
% the elements in the bottom right are 4s
tl = repmat(1,[n n]);
tr = repmat(2,[n n]);
bl = repmat(3,[n n]);
br = repmat(4,[n n]);
Q = [tl tr; bl br]; 
end

