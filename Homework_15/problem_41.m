clc,clear,close all;
r0 = 1;
k0 = 4;
n = 2;
K = 0:0.01:pi / (2 * r0) - 0.01;
y = tan(K * r0);
plot(K,y,'k')
hold on
grid on
for m = 0:n
    K = (m + 1 / 2) * (pi / r0) + 0.01:0.01:(m + 3 / 2) * (pi / r0) - 0.01;
    y = tan(K * r0);
    plot(K,y,'k')
end
K = 0:0.01:k0;
y = - K ./ sqrt(k0^2 - K.^2);
plot(K,y)
text(8.5,2,'$y=\tan(Kr_0)$','interpreter','latex')
text(3,-1,'$y=-\frac{1}{\sqrt{\frac{k_0^2}{K^2}-1}}$','interpreter','latex')
xlim([0,(n + 3 / 2) * (pi / r0)])
ylim([-4,4])
xlabel('$K$','interpreter','latex')
ylabel('$y$','interpreter','latex')
xticks([])
yticks([0])