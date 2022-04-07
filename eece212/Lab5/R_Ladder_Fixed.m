function [Rab] = R_Ladder_Fixed(Rs,Rp)
% USAGE: Resistance ladder function for a fixed amt of stages (n)
% INPUT: Vector Rs
%        Vector Rp
% OUTPUT: Rab - the computed resistance between A and B
if (length(Rs) ~= length(Rp)) %checks the inputs are proper sizes
    error('vectors for resistors are not the same size');
end
if any(Rs<0)
    error('vector Rs has negative values');
end
if any(Rp<0)
    error('vector Rp has negative values');
end

n = length(Rs);
Rk = zeros(1,n); 
Re = zeros(1,n);

Re(n)=Rp(n);

if(n>1) %performs calculations for any resistor ladder greater than 1
    for k=n:2
        Rk(k)= Rs(k)+Re(k);
        Re(k-1) = (Rk(k)*Rp(k-1))/(Rk(k)+Rp(k-1));
    end
end

Rab = Rs(1)+Re(1);
end

