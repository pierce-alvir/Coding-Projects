function A = rmat(m,n)
% USAGE: create a random matrix
% INPUT: m is the number of rows
%        n is the number of columns
% OUTPUT: A is the created random matrix
A = fix(10*rand(m,n));
end

