function [x_minmax,y_minmax] = quad(a,b,c,x_step)
% USAGE: get the min/max of the x and y values of a quadratic function
% INPUT: a, b, and c are the coefficients of the quadratic formula, y =
% ax^2 +bx + c, respectively
% x_step is the step between each x value 
% OUTPUT: x_minmax is the x value for the min/max
%         y_minmax is the y value for the min/max

x_minmax = -b/(2*a);
y_minmax = a*(x_minmax^2) + b*x_minmax + c;

x_center = x_step*100; %allows the graph to be a good distance away from the center for the step

x = (x_minmax-x_center):x_step:(x_minmax+x_center); %centers x around the min/max value
y = a*x.^2 + b*x + c; 
figure 
plot(x,y) %plots x and y 
title('Quadratic Function Graph') %labels graph
xlabel('X')
ylabel('Y')
xline(x_minmax,'r--') %adds the x_minmax and y_minmax lines
yline(y_minmax,'m-.')
xlim auto %automatically sets limits
ylim auto

end

