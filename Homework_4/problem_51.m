clc;clear;close all;
A = 1;
rho = 0.74;
l = 1;
x = -2:0.01:0;
plot(x,A * exp(rho * x),'-k');
hold on;
x = 0:0.01:l;
plot(x,A * (exp(-rho * x) + exp(-rho * (l - x))) / (exp(-rho * l) + 1),'-k');
x = 1:0.01:3;
plot(x,A * exp(rho * (l - x)),'-k');
grid on;
ylim([0,1.2])
xlabel('x');
ylabel('\phi');