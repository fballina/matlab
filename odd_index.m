function [out1] = odd_index(M)
% takes matrix M as input argument and returns a matrix that contains
% only those elements of M that are in odd rows and columns 

nrow = size(M, 1);
nrow = 1:nrow;
nrow = nrow(1:2:length(nrow));
ncol = size(M, 2);
ncol = 1:ncol;
ncol = ncol(1:2:length(ncol));
out1 = M(nrow, ncol);
end

