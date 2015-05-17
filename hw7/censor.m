function [out] = censor(cellvec,s)
    out = cellvec;
    rm = 0; 
    for i = 1:max(size(cellvec))
        x = cellvec{i};
        id = strfind(x,s);
        if length(id) ~= 0 
            j = i - rm; 
            out(j) = [];
            rm = rm + 1;
        end
    end
end

