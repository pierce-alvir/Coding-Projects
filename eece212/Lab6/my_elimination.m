function [U] = my_elimination(mat)
% USAGE: get upper elimination matrix of a given matrix
% INPUT: an input matrix
% OUTPUT: upper elimination form of the matrix
l=eye(3);
l(2,1)=-mat(2,1)/mat(1,1);
mat=l*mat;
l=eye(3);
l(3,1)=-mat(3,1)/mat(1,1);
mat=l*mat;
l=eye(3);
if (mat(2,2)~=0)
    l(3,2)=-mat(3,2)/mat(2,2);
else
    l(3,1)=-mat(3,2)/mat(1,2);
end
U=l*mat;
disp(U);
end

