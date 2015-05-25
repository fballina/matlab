function [out] = sparse_array_in(infile)
    fileID = fopen(infile);
    if fileID == -1
        out = [];
        return
    end
    
    r = fread(fileID, 1, 'uint32');
    c = fread(fileID, 1, 'uint32');
    if r == 0 || c == 0
        out = zeros(r, c); 
        return;
    end
    
    out = zeros(r, c); 
    fread(fileID, 1, 'uint32');
    
    while ~feof(fileID)
        i = fread(fileID, 1, 'uint32');
        j = fread(fileID, 1, 'uint32');
        x = fread(fileID, 1, 'double');
        out(i,j) = x;
    end
    fclose(fileID); 
end
    
    