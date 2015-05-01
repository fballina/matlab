function [out1] = square_wave(n)
% Computes the sum for each of 1001 values of t uniformly spaced from 
% 0 to 4pi inclusive. Input is a positive scalar n, and output is a 
% row vector of 1001 such sums - one sum for each value of t. 
interval = 4*pi/(1000); 

t = 0; 
for i = 1:1001
    sum = 0; 
    for k = 1:n
        sum = sum + sin((2*k - 1)*t)/(2*k - 1); 
    end
    out1(i) = sum; 
    t = t + interval; 
end

end
