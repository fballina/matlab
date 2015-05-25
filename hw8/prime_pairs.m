function [p] = prime_pairs(n)

    choices = primes(100000); 
    for i = 1:length(choices)
        if isprime(choices(i) + n)
            p = choices(i); 
            return
        end
    end
    
    p = -1;
end


