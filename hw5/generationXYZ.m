function [out1] = generationXYZ(in1)
% takes as its input one positive integer specifying the 
% year of birth of a person as an input and returns as its only 
% output argument the name of the generation that the person is 
% part of: 
% O before 1966
% X 1966-1980
% Y 1981-1999
% Z 2000-2012
% K after 2012
if in1 < 1966
    out1 = 'O';
elseif in1 <= 1980
    out1 = 'X';
elseif in1 <= 1999
    out1 = 'Y';
elseif in1 <= 2012
    out1 = 'Z';
else
    out1 = 'K';
end

end

