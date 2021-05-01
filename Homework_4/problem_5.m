clc;clear;close all;
subplot(1,2,1)
l = 1;
mu = 1;
rho = -0.2:0.01:1;
plot(rho,exp(-rho * l),'-k');
hold on;
plot(rho,(1 - 2 * rho / mu),'--k');
plot(rho,-(1 - 2 * rho / mu),'-.k');
grid on;
xlim([-0.2,1]);
ylim([-1.5,1.5]);
text(0.4,0.8,'y = e^{-\rho l}')
text(0.65,0.9,'y = (1 - 2\rho/\mu)')
text(0.65,-0.9,'y = -(1 - 2\rho/\mu)');
title('when l is small')
xlabel('\rho');
ylabel('y')
subplot(1,2,2)
l = 4;
mu = 1;
rho = -0.2:0.01:1;
plot(rho,exp(-rho * l),'-k');
hold on;
plot(rho,(1 - 2 * rho / mu),'--k');
plot(rho,-(1 - 2 * rho / mu),'-.k');
grid on;
xlim([-0.2,1]);
ylim([-1.5,1.5]);
text(0,0.45,'y = e^{-\rho l}')
text(0.65,0.9,'y = (1 - 2\rho/\mu)')
text(0.65,-0.9,'y = -(1 - 2\rho/\mu)');
title('when l is large enough')
xlabel('\rho');
ylabel('y')