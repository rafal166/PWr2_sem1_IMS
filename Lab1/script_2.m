clear;
close all;

X = 0:0.001: 1;

f = @(x) eulergamma .^ (-x);
F = @(x) 1 - eulergamma .^ (-x);
F1 = @(x) -1 .* log(1-x);

Y1 = f(X);
Y2 = F(X);
Y3 = F1(X);

hold on;
grid on;
plot(X, Y1);
plot(X, Y2);
plot(X, Y3);

figure();

histogram(Y3)
