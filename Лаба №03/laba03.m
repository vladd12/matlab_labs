%Построение трёх графиков%
x = -100: pi/100 : 100;
f1 = sin(x)+x;
f2 = sin(x).*x;
f3 = sin(x)+exp(x);
hold on;
plot(x, f1, 'r');
plot(x, f2, 'b');
plot(x, f3, 'g');
legend('y = sin(x)+x','y = sin(x)*x','y = sin(x)+e^x');
xlim ([-20, 20]);
ylim ([-20, 20]);
grid on;
title('Графики функций');
xlabel('Ось X');
ylabel('Ось Y');
grid off;
hold off;
%Второе задание%
%Первый способ%
figure;
hold on;
x = -10: 0.1 : 100;
y = (1 + x.^2)/(1+(abs(sin(x)).^1/2)).*(x <= 0);
y = exp(-x).*cos(3.*x).*(x > 0);
subplot(2, 1, 1), plot(x, y, 'r')
h = legend ('$$y = \frac{1+x^2}{1+\sqrt{|sin(x)|}}$$');
set (h,'Interpreter','latex','fontsize',8);
xlim ([-4, 10]);
ylim ([-1, 1]);
grid on;
title('Первый способ');
xlabel('Ось X');
ylabel('Ось Y');
grid off;
%Второй способ%
for i = 1 : length(x) 
    if (x(i) > 0)
        y(i) = exp(-x(i)).*cos(3.*x(i));
    else
        y = (1 + x(i).^2)/(1+(abs(sin(x(i))).^1/2));
    end
end
subplot(2, 1, 2), plot(x, y, 'b');
h = legend ('$$y = \frac{1+x^2}{1+\sqrt{|sin(x)|}}$$');
set (h,'Interpreter','latex','fontsize',8);
xlim ([-4, 10]);
ylim ([-1, 1]);
grid on;
title('Второй способ');
xlabel('Ось X');
ylabel('Ось Y');
grid off;
hold off;

