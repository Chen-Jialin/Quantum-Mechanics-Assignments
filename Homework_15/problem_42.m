clc,clear,close all;
k = 0:0.01:15;
k0 = 1;
r0 = 1;
K = sqrt(k0^2 + k.^2);
B2 = k.^2 ./ (k.^2 + k0^2 * cos(K * r0).^2);
plot(k,B2)
xlabel('$k$','interpreter','latex')
ylabel('$B^2$','interpreter','latex')
ylim([0,1.2])
xticks([])