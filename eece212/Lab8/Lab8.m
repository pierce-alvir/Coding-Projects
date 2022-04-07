%% Lab 8 
% Pierce Alvir

%% A. Generating Random Matrices and Vectors

rand('seed', 2397);

%% B. Ax=b when A is square
A = rmat(5,5);
disp(A);
b = rvect(5);
disp(b);
Arank = rank(A);
disp(Arank);

A_aug = [A b];
disp(A_aug);
R = rref(A_aug);
disp(R);
x_rref = R(:,6);
disp(x_rref);
b_check = cast(A*x_rref,'int8');
if (all(b_check==b))
    disp('x_rref is the solution to Ax=b');
else
    disp('x_rref is not the solution to Ax=b');
end

A_inv = inv(A);
if(det(A)==0)
    error('Matrix A has no inverse')
end
I = eye(5);
if (A_inv*A~=I)
    error('Matrix A has no inverse')
end
x_inv = A_inv*b;
disp(x_inv);
% the solutions are the same
disp('Same solution as found using rref');

a5 = A(:,1) + A(:,2) + A(:,3) + A(:,4);
A1 = [A(:,1) A(:,2) A(:,3) A(:,4) a5];
disp(A1);
% hyperplane is the linear combination of all columns, so
% copy all columns into A1 for the first four columns and 
% then the linear combo of the columns into the fifth column of A1
A1rank = rank(A1);
disp(A1rank);
%new rank should be 4
if (A1rank ==4)
    disp('A1 rank is correct')
else 
    disp('A1 rank is wrong')
end

A_aug1 = [A1 b];
R1 = rref(A_aug1);
disp(A_aug1);
disp(R1);

x1 = rvect(5);
disp(x1);
b1 = A1*x1;
disp(b1);

A_aug2 = [A1 b1];
disp(A_aug2);
R2 = rref(A_aug2);
disp(R2);
x2 = R2(:,6);
disp(x2);

b2check = A1*x2;
if (all(b1==b2check))
    disp('x2 is a solution to b1')
else
    disp('x2 is not a solution to be b1')
end

%% C. Ax=b when A is Short Rectangular
clear;

A = rmat(3,5);
b = rvect(3);
Arank = rank(A);
disp(Arank);

A_aug = [A b];
disp(A_aug);
R = rref(A_aug);
disp(R);
x1 = [R(:,6);0;0];
disp(x1);

b1 = cast(A*x1,'int8');
if (all(b1 == b))
    disp('x1 is the solution to Ax=b');
else
    disp('x1 is not the solution to Ax=b');
end

x0 = [R(:,4);-1;0];
disp(x0);

b0 = A*x0;
b0 = cast(b0,'int8');
disp(b0);
if (all(b0==0))
    disp('Result is approximately 0');
else
    disp('Result is not approximately 0');
end

b_check = A*(x1+x0);
b_check = cast(b_check,'int8');
if (all(b_check==b))
    disp('x1+x0 is also a solution');
else
    disp('x1+x0 is not a solution');
end

for a = 2:3:10
    disp(a);
    b_check = A*(x1+(a*x0));
    b_check = cast(b_check,'int8');
    if (all(b_check==b))
        disp('Above a works as a solution for x1+a*x0');
    else
        disp('Above a does not work as a solution for x1+a*x0');
    end
end

%% D. Ax=b when A is Tall Rectangular
clear;
A = rmat(5,3);
Arank = rank(A);
disp(Arank);

b = A(:,1)+A(:,2)+A(:,3);

A_aug = [A b];
disp(A_aug);
R = rref(A_aug);
disp(R);
x_sol = R(1:3,4);
disp(x_sol);

b_check = A*x_sol;
b_check = cast(b_check,'int8');
if (all(b_check==b))
    disp('x is a solution');
else
    disp('x is not a solution');
end