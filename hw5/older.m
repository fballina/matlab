function [out1] = older(y1, m1, d1, y2, m2, d2)
% Input represents the birthdates of two persons. Returns 1 if 
% the first person is older, 0 if they have the same age, and -1
% if the first person is younger. 
if y1 > y2 
    out1 = -1; 
    return 
end

if y1 < y2 
    out1 = 1;
    return
end

% same years 
if m1 < m2 
    out1 = 1;
    return 
end

if m1 > m2
    out1 = -1; 
    return
end

% same year and month

if d1 < d2
    out1 = 1;
    return 
end

if d1 > d2 
    out1 = -1;
    return
end

out1 = 0; 
        
end

