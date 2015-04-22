function [board] = checkerboard(n, m)
% takes as input two positive integer scalars, n and m. Create
% and return board, which is an n-by-m matrix. Every element of
% board is either 0 or 1. The first element, board(1,1) is 1. 
% No direct neighbors in the matrix, vertically, or horizontally
% can be equal. 
t = ceil(m/2);
v = repmat([1 0], [1 t]);
if mod(m, 2) ~= 0
    v(length(v)) = [];
end
board = v 

for i = 2:n 
    v = ~v
    board = [board; v]
end
end
