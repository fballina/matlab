function [out] = letter_counter(input)
% Purpose: Takes the name of a text file as input and returns number
% of letters file contains.
% Written by: Jessie Ye (junzhiye57@gmail.com)
    fileID = fopen(input);
    if fileID == -1
        out = -1;
        return
    end
    string = char(fread(fileID));
    out = sum(isletter(string)); 
end

