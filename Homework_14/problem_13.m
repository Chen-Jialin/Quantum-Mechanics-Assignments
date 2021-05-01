clc,clear,close all;
k = 1;
k1 = -1.5;
n = 3;
x = 0:0.01:pi / 2 / k - 0.01;
y = tan(x);
plot(x,y,'k')
hold on
grid on
for m = 1 / 2:(n - 3 / 2)
    x = m * (pi / k) + 0.01:0.01:(m + 1) * (pi / k) - 0.01;
    y = tan(x);
    plot(x,y,'k')
end
x = (n - 1 / 2) * (pi / k) + 0.01:0.01:n * (pi / k);
y = tan(k * x);
plot(x,y,'k')
x = 0:0.01:n * (pi / k);
y = - k1 * x;
plot(x,y,'r--')
text(6.5,-6,'$y=\tan(\frac{ka}{2})$','interpreter','latex')
text(5.5,7.5,'$y=-\frac{\hbar^2k}{maw_0}$','interpreter','latex')
text(0.2,-0.7,'$k_0$','interpreter','latex')
text(1,0.8,'$k_1$','interpreter','latex')
text(4.2,7.4,'$k_2$','interpreter','latex')
text(7.9,11,'$k_3$','interpreter','latex')
xlabel('k')
ylabel('y')
xlim([0,n * (pi / k)])
ylim([-12,12])
xticks([])
yticks([0])