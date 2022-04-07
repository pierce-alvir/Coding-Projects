function [outArr1,outArr2] = ConditionalFunction(inArr1,inArr2)
% USAGE: check the conditions of the input arrays
% INPUT: two different arrays
% OUTPUT: two different arrays

if all(inArr1<3) %will run code if every element in vector A is less than 3
    outArr1 = inArr1; %return value if true in first array
    outArr2 = 0;
elseif any(xor(inArr1,inArr2)) %will run code if any value in exclusive or
%between the arrays results in 1
    outArr1 = 0;
    outArr2 = xor(inArr1,inArr2); %return value of the xor in the 2nd array
else
    outArr1 = inArr2; %else just put the arrays in the opposing out array
    outArr2 = inArr1;
end

end

