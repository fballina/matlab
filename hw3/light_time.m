function [out1, out2] = light_time(in1)
% takes as input a row vector of distances in miles and 
% returns two row vectors of the same length. Each element of 
% the first output argument is the time in minutes that light 
% would take to travel the distance specified by the corresponding
% element of the input vector. The second output contains the input 
% distances converted to km. Assume speed of light is 300,000 km/s
% and one mile equals 1.609 km. 

out2 = in1*1.609;
s = out2/300000;
out1 = s/60;

end

