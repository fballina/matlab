function [mt, s] = mtable(n, m)
% returns mt an n-by-m matrix corresponding to the 
% multiplication table. s equals the sum of all 
% elements of mt.
for r = 1:n
      for c = 1:m
        mt(r, c) = r * c; 
      end 
end

s = sum(sum(mt)); 
 
end

