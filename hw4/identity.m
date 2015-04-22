function [out1] = identity(n)
% Creates a square identity matrix. Takes one positive 
% integer input argument which is the size of the matrix, 
% and returns itself as an output argument. Not allowed
% to use [redacted] or [redacted] functions. 
x = zeros(n); 

for j = 1:n
    x(j,j) = 1; 
end

out1 = x; 
end
