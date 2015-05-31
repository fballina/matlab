function [score] = bowl(in)
% Purpose: North American bowling - takes a vector of integers specifying 
% the sequence of pins down after each ball and returns the final score. 
% Written by: Jessie Ye (junzhiye57@gmail.com)
    sequence = in;     
    score = 0; 
    frame = 0; 
    spare = 0; 
    strike = 0; 
    if length(in) < 12 || length(in) > 21 || length(in(in == 10)) > 12
        score = -1;
        return
    end 
        
    while ~isempty(sequence) 
        frame = frame + 1; 
        if frame > 10 
            if ~(strike || spare)
                score = -1;
                return
            elseif strike
                if length(sequence) ~= 2
                    score = -1;
                    return
                end
            elseif spare
                if length(sequence) ~= 1
                    score = -1;
                    return
                end
            end
            
            return
        end
       
        if length(sequence) < 2
            score = -1;
            return
        end
        strike = 0; 
        spare = 0;
        
        a = sequence(1);
        sequence(1) = [];
        if a ~= 10
            b = sequence(1);
            sequence(1) = [];
        else 
            b = 0; 
        end
        if a < 0 || b < 0
            score = -1;
            return
        end
        
        if a + b > 10
            score = -1;
            return
        elseif a + b < 10
            score = score + a + b;
        elseif a == 10
            if length(sequence) < 2
                score = -1;
                return
            end   
            score = score + 10 + sequence(1) + sequence(2);
            strike = 1; 
        elseif a + b == 10
            if length(sequence) < 1
                score = -1;
                return
            end
            score = score + 10 + sequence(1); 
            spare = 1; 
        end
    end
              
end


