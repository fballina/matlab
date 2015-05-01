function [out1, k] = approximate_pi(delta)
% Stops at the smallest k for which the approximation differs from
% pi (i.e., the value returned by MATLAB's built-in function) by 
% no more than the positive scalar, delta, which is the only input
% argument. The first output is the approximately value of pi, 
% while the second is k. 
out1 = 0; 
for k = 0:100000
    out1 = out1 + sqrt(12) * (-3)^(-k)/(2*k + 1); 
    if abs(out1 - pi) <= delta 
        return
    end
end
end

