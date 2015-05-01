function [out1] = myprime(n)
% Takes n, a positive integer, as an input and returns true if n 
% is prime or returns false otherwise. Do not use functions.. 
% You can use rem or fix functions. 

if n <= 3
    if n > 1 
        out1 = 1; 
        return
    end
elseif mod(n, 2) == 0 | mod(n, 3) == 0
    out1 = 0; 
    return
else
    i = 5;
    while i*i <= n
        if mod(n, i) == 0 | mod(n, i + 2) == 0
            out1 = 0;
            return
        end
        i = i + 6;
    end
    out1 = 1;
    return
end

end

