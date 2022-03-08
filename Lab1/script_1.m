clear;
close all;

X = 0:0.001: 1;

f = @(x) (x+1) .* (x<0) .* (x>-1) + (-x+1) .* (x >= 0) .* (x < 1);
F = @(x) (0.5 + x+ (x.^2)/2) .* (x<0) .* (x>-1) + (0.5 +x - (x.^2)/2) .* (x>=0) .* (x<1) + (x>=1);
F1 = @(x) (sqrt(x*2)- 1) .* (x >= 0) .* (x <= 0.5) + (1 - sqrt(2-(x*2))) .* (x>0.5) .* (x <=1) - (x<-1);

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
