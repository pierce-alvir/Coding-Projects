function [y] = ErrorFunction(x)
% USAGE: checks a condition of x
% INPUT: x
% OUTPUT: y as a constant if the x condition is passed 
if (x<0)
    Error('Value of input x must be zero or greater. Please re-run!');
end
y=10;
end

