function [out] = queen_check(board)

    q = find(board==1);
    [i,j] = ind2sub(size(board),q);
    if length(unique(i)) < length(i) || length(unique(j)) < length(j)
        out = 0; 
        return
    end
    
    for k = 1:(length(i) - 1) 
        m = 1; 
        while k + m <= length(i) 
            vdist = abs(i(k) - i(k + m));
            hdist = abs(j(k) - j(k + m)); 
            if vdist == hdist
                out = 0;
                return
            end
            m = m + 1;
        end
    end
   
    out = 1; 
    
end


