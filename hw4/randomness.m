function [out1] = randomness(limit, n, m)
% returns an n-by-m matrix of uniformly distributed 
% random integers between 1 and limit inclusive. 
% not using [redacted]. Test function output by using
% built-in function hist. 
out1 = unidrnd(limit,n,m);
end

