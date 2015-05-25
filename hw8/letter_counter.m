function [out] = letter_counter(input)
    fileID = fopen(input);
    if fileID == -1
        out = -1;
        return
    end
    string = char(fread(fileID));
    out = sum(isletter(string)); 
end

