function [s1, s2, sums] = sines(pts, amp, f1, f2)
% pts is an integer. s1 is a vector whose length equals pts. Its 
% elements are the values of the sine fct when given equally spaced
% arguments that start at zero and extend through f1 periods of the 
% sine. amplitude of sine wave equals amp. s2 is the same as s1 
% except s2 contains f2 periods. The vector sums is the sum of s1
% and s2. If f2 is omitted, it should be set to 5% greater than f1. 
% If f1 is omitted, it should be set to 100. If amp is omitted, 
% default to 1. If pts is omitted, set to 1000. 
if nargin == 0 
    pts = 1000;
    amp = 1; 
    f1 = 100; 
    f2 = f1 * 1.05; 
    f2 = 1.05 * f1; 
end
if nargin == 1
    amp = 1; 
    f1 = 100; 
    f2 = f1 * 1.05; 
    f2 = 1.05 * f1;    
end
if nargin == 2
    f1 = 100;
    f2 = 1.05 * f1; 
end
if nargin == 3
    f2 = 1.05 * f1; 
end

interval = 2*pi*f1/(pts-1);
b = 0; 
for i = 1:pts   
    s1(i) = amp*sin(b); 
    b = b + interval; 
end

interval = 2*pi*f2/(pts-1); 
b = 0; 
for i = 1:pts
    s2(i) = amp*sin(b); 
    b = b + interval; 
end

sums = s1 + s2;

end
