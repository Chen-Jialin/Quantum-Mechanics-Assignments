clc;clear,close all;
i = 1;
n = 5;
while i <= n
    ka = pi / 2 * (2 * i - 1):0.01:pi / 2 * (2 * i);
    plot(ka,abs(sin(ka)),'k-');
    hold on;
    i = i + 1;
end
k_0a = 12;
ka = [0,pi / 2 * (2 * n)];
plot(ka,ka / k_0a,'--k')
grid on
text(0.02,0.25,'y = ka / k_0a')
text(2.6,0.6,'y = |sin ka|')
xlim([0,pi / 2 * (2 * n)])
ylim([0,1])
xlabel('ka')
ylabel('y')