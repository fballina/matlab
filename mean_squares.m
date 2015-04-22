function [mm] = mean_squares(nn)
% returns mm, which is the mean of the squares of the first nn 
% positive integers, where nn is a positive integer and is the
% only input argument.
x = 1:nn;
x = x.^2;
mm = mean(x);
end

