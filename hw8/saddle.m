function [indices] = saddle(M)
% Purpose: Finds saddle points in M, defined as element whose value is 
% greater or equal to every element in its row, less than or equal to 
% every element in its column. 
% Written by: Jessie Ye (junzhiye57@gmail.com)
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

