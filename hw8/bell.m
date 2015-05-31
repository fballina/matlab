function [triangle] = bell(n)
% Purpose: Returns first n rows of Bell triangle
% Written by: Jessie Ye (junzhiye57@gmail.com)
% Date: 5/31/15

    % positive, non-zero, integer 
    if n < 0 || n == 0 || ~(mod(n,2) == 0 || mod(n,2) == 1)
        triangle = [];
        return
    end

    % initialize 
    triangle = zeros(n,n);
    triangle(1,1) = 1; 

    for i = 2:n
        % fill first column for row
        triangle(i,1) = max(triangle(1,:));
    
        k = 2; 
        j = i-1;      
        % diagonal fill toward upper right 
        for k = 2:i
            triangle(j,k) = triangle(j,k-1)+triangle(j+1,k-1);
            j = j - 1; 
        end
    end
end

