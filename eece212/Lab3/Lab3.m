% EECE 212
% Lab 3
% Pierce Alvir

%% Task 2
load('lab3_data.mat')
D = datenum(2015,1,1:1/24/4:365+1);
D(:,35041) = [];

figure
plot(D,E_union)
datetick('x')
ylabel('Energy (kWh)')
title('2015 Union Energy Usage Plot')

figure
plot(D(1:2880),E_union(1:2880));
datetick('x',2,'keepticks')
ylabel('Energy (kWh)')
title('2015(Jan) Union Energy Usage Plot')

%% Task 3
figure
histogram(E_union,20)
xlabel('Energy (kWh)')
title('2015 Union Energy Usage Histogram')

%% Task 4
E_union_matrix=zeros(96,365);
for k=1:365
    E_union_matrix(:,k)=E_union((k-1)*96+1:(k-1)*96+96);
end
figure
s = surf(E_union_matrix);
s.EdgeColor = 'none';
s.FaceAlpha = 0.5;
xlabel('Days')
yticks([1 24 48 72 96])
yticklabels({'00:00','06:00','12:00','18:00','24:00'})
zlabel('Energy (kWh)')
xlim([1 365])
ylim([1 96])
title('2015 Union Energy Usage 3D Model')

%% Task 5
figure
h = heatmap(E_union_matrix);
grid off
colormap(flipud(autumn));
xlabel('Days')
title('2015 Union Energy Usage Heatmap')