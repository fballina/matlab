function [row,col,numrows,numcols,summa] = maxsubsum(A)

    if isscalar(A)
        row = 1; 
        col = 1; 
        numrows = 1; 
        numcols = 1;
        summa = A; 
        return
    end
    [r c] = size(A);
    summa = 0; 
    for dim1 = 0:r
        for dim2 = 0:c
            
            for b1 = 1:r
                
                if b1 + dim1 > r
                    break
                end
                
                for b2 = 1:c
                    
                    if b2 + dim2 > c
                        break
                    end
                    
                    subA = A(b1:b1+dim1,b2:b2+dim2);
                    sumsubA = sum(sum(subA));
                    sumsubA
                    summa
                    if sumsubA > summa
                        row = b1; 
                        col = b2; 
                        numrows = dim1+1;
                        numcols = dim2+1;
                        summa = sumsubA; 
                    end
                end
            end
        end
    end   
end


