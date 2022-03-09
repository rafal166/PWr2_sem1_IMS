clear;
close all;

X = -1:0.01: 1;
u = 0;
b = 2;

F1 = @(x) -b * log(-2*(x-1));

Y3 = F1(X);

hold on;
grid on;
plot(X, Y3);

figure();
histogram(Y3)
xlabel('Warto�ci pr�bek')
ylabel('Ilo�� pr�bek danej warto�ci')
