function [out1] = rich(in1)
% takes one input argument that is a row vector
% whose 4 elements specify the number of pennies
% (1 cent), nickels (5 cents), dimes (10 cents), and 
% quarters (25 cents) that we have in the order listed. 
% Output is the value of the total in dollars. 
 
pennies = in1(1);
nickels = in1(2);
dimes = in1(3);
quarters = in1(4);

total = pennies*.01 + nickels*.05 + dimes*.1 + quarters*.25;
out1 = total
end

