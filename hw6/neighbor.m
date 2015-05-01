function [ret] = neighbor(v)
% takes as input a row vector called v and creates another row 
% vector as output that contains the absolve values of the 
% [*erences] between neighboring elements of v. Check that 
% the input v is indeed a vector and has at least two 
% elements. Return an empty array otherwise. You are not 
% allowed to use the built-in function. 
if ~(isvector(v) && length(v) >= 2)
    ret = []; 
    return
end

for i = 2:length(v)
    ret(i - 1) = abs(v(i) - v(i - 1));
end

end

