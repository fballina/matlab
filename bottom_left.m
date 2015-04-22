function [out1] = bottom_left(N, n)
% takes two inputs: matrix N and scalar n, where each dimension
% of N is greater than or equal to n. Returns the n-by-n square
% array at the bottom left corner of N
nrow = size(N, 1); 
out1 = N(nrow - n + 1 : nrow, 1 : n)
end

