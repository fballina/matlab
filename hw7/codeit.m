function [coded] = codeit(txt)
    coded = txt; 
    x = cell(26,2); 
    for i = 1:26   
        x{i,1} = strfind(txt, char('a' + i - 1));
        x{i,2} = strfind(txt, char('A' + i - 1));
    end
    
    for i = 1:26
        coded(x{i,1}) = char('z' - i + 1);
        coded(x{i,2}) = char('Z' - i + 1);
    end

end

