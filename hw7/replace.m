function [out] = replace(vec, c1, c2)
    out = vec; 
    if isrow(vec)
        y = size(vec); 
        y = y(2); 
        for i = 1:y
            rep = strfind(vec{1,i}, c1);            
            out{1,i}(rep) = c2;
        end
        return
    end
    
    y = size(vec);
    y = y(1); 
    for i = 1:y
        rep = strfind(vec{i,1}, c1);            
        out{i,1}(rep) = c2;
    end
end

