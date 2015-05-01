function [out1] = replace_me(v,a,b,c)
% The first input v is a vector, while a,b,c are all scalars. 
% The function replaces every element of v that is equal to a
% with b and c. If c is omitted, it replaces occurrences of a
% with two copies of b. If b is also omitted, it replaces each 
% a with two zeros. 
index = find(v == a);
if isempty(index)
    out1 = v;
    return
end

for i = 1:length(index)
    replace = index(i);
    if i ~= 1
        replace = replace + i - 1; 
    end
    if replace == 1
        if nargin == 4
            temp1 = [b c];
        elseif nargin == 3
            temp1 = [b b]; 
        else
            temp1 = [0 0]; 
        end         
    else
        temp1 = v(1:replace-1); 
        if nargin == 4 
            temp1(replace) = b;
            temp1(replace+1) = c;
        elseif nargin == 3
            temp1(replace) = b; 
            temp1(replace+1) = b;
        else
            temp1(replace) = 0; 
            temp1(replace+1) = 0; 
        end
    end
    temp2 = v(replace+1:length(v)); 
    v = [temp1 temp2]; 
end 

out1 = v; 

end

