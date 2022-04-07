function [vecR] = R_Ladder_Inf(scaR, alpha, N)
% USAGE: Resistance ladder function for infinite resistors
% INPUT: scaR - single resistance value for all resistors
%        alpha - user specified value for checking the size of the change
%        N - holds large positive integer for max number of loops performed
% OUTPUT: vecR - holds the values of R at each number of stages computed

if (scaR<=0) %checks if inputs are proper sizes
    error('resistance value input is negative or zero');
end
if (alpha<=0)
    error('specified change threshold input is negative or zero');
end
if (N<=0)
    error('maximum number of loop iterations is negative or zero');
end

vecR = zeros(1,N);
vecR(1) = scaR + scaR;

for k=1:N
    vecR(k+1)=((vecR(k)*scaR)/(vecR(k)+scaR))+scaR;
    if abs(vecR(k+1)-vecR(k))< alpha %checks threshold of change
        break
    end
end
if k==N %checks if near max iterations
    warning('Loop has reached max number of iterations');
end

end

