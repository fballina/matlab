function [out1] = pitty(in1)
% takes matrix ab as input argument. ab has 2 columns. 
% returns a column vector c that contains positive 
% values each of which satisifies the pythagorean 
% theorem, for the corresponding row of ab assuming 
% that the two elements on each row of ab correspond 
% to one pair, a and b respectively. 
col1 = in1(:,1); 
col2 = in1(:,2); 
out1 = sqrt(col1.^2 + col2.^2); 
end

