function [out1] = movies(hr1, min1, durmin1, hr2, min2, durmin2)
% Decides whether we can binge and watch both movies. The movies
% must not overlap and we are not going to wait more than 30 minutes
% between the end of one and the beginning of the next. Returns true
% if the criteria are both met and false otherwise. Movie start times
% are always after 1pm and before midnight. First one starts earlier. 

% start time error 
if hr2 < hr1 
    out1 = false
    return
end

% movie 1 start time
b1 = (hr1 - 1) * 60 + min1
% movie 1 end time
e1 = b1 + durmin1
% movie 2 start time
b2 = (hr2 - 1) * 60 + min2

if b2 > b1 && b2 < e1 
    out1 = false; 
    return
end

if e1 + 30 < b2 
    out1 = false; 
    return 
end

out1 = true; 
end

