function [n] = one_per_n(x)
% Returns the smallest positive integer n for which the sum
% 1 + 1/2 + 1/3 + ... + 1/n is greater than or equal to x. 
% Limit the maximum number n of terms in the sum to 10,000 
% and return -1 if exceeded. 
sum = 0; 
for i = 1:10000
    sum = sum + 1/i; 
    if sum >= x 
        n = i; 
        return
    end
end

n = -1 
end

