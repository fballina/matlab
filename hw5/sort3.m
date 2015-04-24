function [out1] = sort3(in1, in2, in3)
% Takes three scalar arguments. Uses if-statements to return the 
% three values of these arguments in a single row-vector in 
% increasing order. Element one of the output vector equals the 
% smallest input argument and element three of the output vector
% equals the largest input argument. Your function may most use 
% any built in functions.
if in1 <= in2 && in2 <= in3
    out1 = [in1 in2 in3]
elseif in1 <= in3 && in3 <= in2
    out1 = [in1 in3 in2]
elseif in3 <= in1 && in1 <= in2
    out1 = [in3 in1 in2] 
elseif in2 <= in1 && in1 <= in3
    out1 = [in2 in1 in3]
elseif in2 <= in3 && in3 <= in1
    out1 = [in2 in3 in1]
else 
    out1 = [in3 in2 in1]
end           

end

