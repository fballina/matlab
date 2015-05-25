function [indices] = saddle(M)
    [r c] = size(M); 

    indices = []; 
    for j = 1:c 
        mincol = min(M(:,j))
        rows = find(M(:,j) <= mincol)
        for i = 1:length(rows)
            row = rows(i); 
            maxrow = max(M(row,:));
            if M(row,j) >= maxrow
                indices = [indices; [row j]];
            end
        end
    end              
end

