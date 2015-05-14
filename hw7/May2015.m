function [out1] = May2015

s = struct;
for i = 1:31
    s(i).month = 'May';
    s(i).date = i; 
    temp = int2str(i); 
    [DayNumber,DayName] = weekday(strcat(temp,'-May-2015'));
    s(i).day = DayName;
end

out1 = s; 

end

