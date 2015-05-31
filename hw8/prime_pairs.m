function [p] = prime_pairs(n)
% Purpose: Returns smallest prime number p smaller than 100,000 such that 
% p + n is also prime. 
% Written by: Jessie Ye (junzhiye57@gmail.com)
    choices = primes(100000); 
    for i = 1:length(choices)
        if isprime(choices(i) + n)
            p = choices(i); 
            return
        end
    end
    
    p = -1;
end


