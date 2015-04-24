function [out1] = letter_grade(score)
% takes a positive integer called score as its input argument
% and returns a letter grade according to the scale: A: 91 and
% above; B: 81-90; C: 71-80; D: 61-70; F: below 61 

if score < 61
    out1 = 'F';
elseif score <= 70
    out1 = 'D';
elseif score <= 80
    out1 = 'C';
elseif score <= 90
    out1 = 'B';
else 
    out1 = 'A'; 
end

end

