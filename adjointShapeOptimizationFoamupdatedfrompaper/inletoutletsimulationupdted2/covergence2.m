MM=csvread('cost.csv');
disp(MM);
plot(MM(1:100,1),MM(1:100,2));
%plot(MM(:,1),MM(:,2))