function [out] = roman(s)
    if length(s) >= 3
        if length(unique(s)) == length(s) - 3 
           out = uint8(0);
           return
        end
        x = regexp(s, 'IV|IX|XL|XC|CD|CM');
        if any(x == 1)
            out = uint8(0);
            return
        end
    end
    
    if length(regexp(s, 'VV')) ~= 0
        out = uint8(0);
        return
    end
    
    out = 0; min = 0;
    rm = []; 
    temp = regexp(s, 'IV');
    out = out + length(temp) * 4;
    if length(temp) ~= 0
        min = 4; 
    end
    rm = [rm temp]; 
    temp = regexp(s, 'IX');
    out = out + length(temp) * 9;
    if length(temp) ~= 0
        min = 9;
    end
    rm = [rm temp];
    temp = regexp(s, 'XL');
    out = out + length(temp) * 40;
    if length(temp) ~= 0
        min = 40; 
    end
    rm = [rm temp];
    temp = regexp(s, 'XC');
    out = out + length(temp) * 90;
    if length(temp) ~= 0
        min = 90; 
    end
    rm = [rm temp];
    temp = regexp(s, 'CD');
    out = out + length(temp) * 400;
    if length(temp) ~= 0
        min = 400;
    end
    rm = [rm temp];
    temp = regexp(s, 'CM');
    out = out + length(temp) * 900;
    if length(temp) ~= 0
        min = 900; 
    end
    rm = [rm temp];
    
    k = 0;
    for i = 1:length(rm)
        s(rm(i)-k) = [];
        s(rm(i)-k) = []; 
        k = 2*i;
    end
    
    inc = 1000; 
    
    for i = 1:length(s)
        
        inc_old = inc; 
        out_old = out; 
        if s(i) == 'I'
            if 1 < min
                out = uint8(0);
                return
            end  
            out = out + 1;
        elseif s(i) == 'V'
            if 5 < min
                out = uint8(0);
                return
            end  
            out = out + 5;
        elseif s(i) == 'X'
            if 10 < min
                out = uint8(0);
                return
            end  
            out = out + 10; 
        elseif s(i) == 'L'
            if 50 < min
                out = uint8(0);
                return
            end  
            out = out + 50; 
        elseif s(i) == 'C'
            if 100 < min
                out = uint8(0);
                return
            end  
            out = out + 100;
        elseif s(i) == 'D'
            if 500 < min
                out = uint8(0);
                return
            end  
            out = out + 500; 
        elseif s(i) == 'M'
            if 1000 < min
                out = uint8(0);
                return
            end  
            out = out + 1000; 
        end
        inc = out - out_old; 
        if inc > inc_old
            out = uint8(0);
            return
        end      
    end
    
    if out > 20
        out = uint8(0); 
    end
    
    out = uint8(out)
end

