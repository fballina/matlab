function [out1] = moving_average(x)
% Takes a scalar called x as an input argument and returns
% a scalar. The value it returns depends not only on the input
% but also on previous inputs to this same function when it's 
% called repeatedly. The returned value is a moving avg of those
% inputs. Use a buffer to hold previous inputs, maximum of 25. 
% Save the most recent 25 inputs in a vector that is a persistent 
% variable inside the fct...
persistent buf;  
if isempty(buf) 
    buf = x; 
    out1 = x; 
    return
end

if length(buf) < 25
    buf = [buf x]; 
    out1 = mean(buf); 
    return
end

buf(1) = []
buf = [buf x]; 
out1 = mean(buf); 

end

