function [out1] = June2015

c = cell(30, 3);
for i = 1:30
    c{i,1} = 'June'; 
    c{i,2} = i;
    temp = int2str(i);
    [DayNumber,DayName] = weekday(strcat(temp,'-Jun-2015'));
    c{i,3} = DayName; 
end

out1 = c; 

end

