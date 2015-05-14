function [out1] = integerize(A)

m = max(max(A));
if m <= 2^8 - 1
    out1 = 'uint8';
elseif m <= 2^16 - 1
    out1 = 'uint16';
elseif m <= 2^32 - 1
    out1 = 'uint32';
elseif m <= 2^64 - 1
    out1 = 'uint64';
else
    out1 = 'NONE'; 
end

end
