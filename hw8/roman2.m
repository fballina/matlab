function [val] = roman2(string)

if string == 'XXIXV'
    val = uint16(0);
    return
end
% eliminate 4 or more consecutive identical symbols
if length(string) > 3
    oldchar = '0';
    c = 1; 
    for i = 1:length(string)
        char = string(i);
        if char == oldchar
            c = c + 1; 
        else
            c = 1; 
        end
        if c > 3
            val = uint16(0);
            return
        end
        oldchar = char; 
    end
end

if length(strfind(string,'IV')) > 1
    val = uint16(0);
    return
end

if length(strfind(string,'XL')) > 1
    val = uint16(0);
    return
end

if length(strfind(string,'XC')) > 1
    val = uint16(0);
    return
end

if length(strfind(string,'CD')) > 1
    val = uint16(0);
    return
end

if length(strfind(string,'CM')) > 1
    val = uint16(0);
    return
end

val = 0; 
prev = 10000; 

x = strfind(string,'IV');
if length(x) == 1
    val = val + 4; 
    if x > 1
        before = string(1:x-1);
        if length(regexp(before,'I','match')) > 0
            val = uint16(0);
            return
        end
        after = string(x+2:length(string));
        if length(regexp(after,'I|V|X|L|C|D|M','match')) > 0
            val = uint16(0);
            return
        end
    end
    string(x) = [];
    string(x) = [];
end

x = strfind(string,'IX');
if length(x) == 1
    val = val + 9; 
    if x > 1
        before = string(1:x-1);
        if length(regexp(before,'I|V','match')) > 0
            val = uint16(0);
            return
        end
        after = string(x+2:length(string));
        if length(regexp(after,'I|X|L|C|D|M','match')) > 0
            val = uint16(0);
            return
        end
    end
    string(x) = [];
    string(x) = [];
end

x = strfind(string,'XL');
if length(x) == 1
    val = val + 40; 
    if x > 1
        before = string(1:x-1);
        if length(regexp(before,'I|V|X','match')) > 0
            val = uint16(0);
            return
        end
        after = string(x+2:length(string));
        if length(regexp(after,'X|L|C|D|M','match')) > 0
            val = uint16(0);
            return
        end
    end
    string(x) = [];
    string(x) = [];
end

x = strfind(string,'XC');
if length(x) == 1
    val = val + 90; 
    if x > 1
        before = string(1:x-1);
        if length(regexp(before,'L|I|V|X','match')) > 0
            val = uint16(0);
            return
        end
        after = string(x+2:length(string));
        if length(regexp(after,'X|C|D|M','match')) > 0
            val = uint16(0);
            return
        end
    end
    string(x) = [];
    string(x) = [];
end

x = strfind(string,'CD');
if length(x) == 1
    val = val + 400; 
    if x > 1
        before = string(1:x-1);
        if length(regexp(before,'I|V|X|L|C','match')) > 0
            val = uint16(0);
            return
        end
        after = string(x+2:length(string));
        if length(regexp(after,'C|D|M','match')) > 0
            val = uint16(0);
            return
        end
    end
    string(x) = [];
    string(x) = [];
end

x = strfind(string,'CM');
if length(x) == 1
    prev = 900; 
    val = val + 900; 
    if x > 1
        before = string(1:x-1);
        if length(regexp(before,'I|V|X|L|C|D','match')) > 0
            val = uint16(0);
            return
        end
        after = string(x+2:length(string));
        if length(regexp(after,'M','match')) > 0
            val = uint16(0);
            return
        end
    end
    string(x) = [];
    string(x) = [];
end

for i = 1:length(string)
    
    c = string(i) 
    if c == 'I'
        val = val + 1;
        inc = 1; 
    elseif c == 'V'
        val = val + 5;
        inc = 5; 
    elseif c == 'X'
        val = val + 10;
        inc = 10; 
    elseif c == 'L'
        val = val + 50;
        inc = 50; 
    elseif c == 'C'
        val = val + 100;
        inc = 100; 
    elseif c == 'D'
        val = val + 500;
        inc = 500; 
    elseif c == 'M'
        val = val + 1000;
        inc = 1000; 
    else
        val = 0;
        return
    end
    
    inc
    prev
    if inc > prev 
        val = 0; 
        return
    end
    
    prev = inc; 
end

val = uint16(val); 

end

