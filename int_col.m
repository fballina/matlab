function [out1] = int_col(n)
% has one input argument, a positive integer n that is 
% greater than 1, and one output argument v that is a column
% vector of length n containing all the positive integers 
% smaller than or equal to n, arranged in such a way that no 
% element of the vector equals its own index. 

v = 1:n;
v = v(end:-1:1);

% if odd number of elements, swap middle element with 
% first element 
if mod(length(v),2)~=0
    mid = ceil(length(v)/2);
    first = v(1);
    v(1) = mid;
    v(ceil(length(v)/2)) = first;
end

out1 = v'; 
end



