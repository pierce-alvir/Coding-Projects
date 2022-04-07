%%Lab 5 - MATLAB Loops
%%Pierce Alvir

%%For Loop Example

for n = 3:10
    r(n)=rank(magic(n));
end

%%While Loop Example

n=3;
a=0;
while a < 15
    a = rank(magic(n));
    r(n)=a;
    n=n+1;
end

%%Nested Loops - Storing in an Array

for n=1:10
    for m=1:5
        H(n,m)=1/(n+m)
    end
end

%%Nested Loops - Inner Loop Depends on Outer Loop

for n=1:5
    a=1;
    for m=1:n
        a=a*(m^n);
    end
    r(n)=a;
end

%%Conditional Function Test
arr1 = input('Input first array(with []): ');
arr2 = input('Input second array(with []): ');

[dispArr1, dispArr2] = ConditionalFunction(arr1,arr2);

%%Error Function Test
inX = input('Input x as zero or greater for no error: ');

y = ErrorFunction(inX);

%%Resistor Ladder Fixed
inRs = input('Input array for Rs: ');
inRp = input('Input array for Rp: ');

[R] = R_Ladder_Fixed(inRs,inRp);

%%Resistor Ladder Infinite
inR = input('Input resistance value for circuit: ');
inAlpha = input('Input change threshold: ');
inN = input('Input max number of loop iteration: ');

[arrR] = R_Ladder_Inf(inR, inAlpha, inN);