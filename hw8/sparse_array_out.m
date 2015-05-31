function [out] = sparse_array_out(a, outfile) 
    fileID = fopen(outfile, 'w');
    if fileID == -1
        out = 0;
        return
    else 
        out = 1; 
    end
    
    [r c] = size(a);
    nz = nnz(a);
    vec = [r c nz];
    fwrite(fileID, vec, 'uint32');
    
    for i = 1:r 
        for j = 1:c 
            if a(i,j) ~= 0
                fwrite(fileID, [i,j], 'uint32');
                fwrite(fileID, a(i,j), 'double');
            end
        end
    end
    fclose(fileID); 
end
    
    