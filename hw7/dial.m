function [out] = dial(s)

    x = regexp(s,'[A-Z]|-|[0-9]| |#|*|)|(');
    if length(x) ~= length(s)
        out = [];
        return
    end

    na = regexpi(s, 'Q|Z');
    if length(na) ~= 0
        out = [];
        return
    end
    
    if sum(isstrprop(s, 'lower')) ~= 0
        out = [];
        return
    end
    
    out = s; 
    
    x = regexpi(s, '-|)|(');
    two = regexpi(s, 'A|B|C');
    three = regexpi(s, 'D|E|F'); 
    four = regexpi(s, 'G|H|I'); 
    five = regexpi(s, 'J|K|L');
    six = regexpi(s, 'M|N|O'); 
    seven = regexpi(s, 'P|R|S');
    eight = regexpi(s, 'T|U|V'); 
    nine = regexpi(s, 'W|X|Y');
    out(x) = ' '; 
    out(two) = '2'; 
    out(three) = '3';
    out(four) = '4';
    out(five) = '5';
    out(six) = '6';
    out(seven) = '7';
    out(eight) = '8';
    out(nine) = '9';
end

