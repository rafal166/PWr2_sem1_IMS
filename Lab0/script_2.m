clear;
close all;

X0 = 5; %wartoœæ startowa
A = 1:1:1000; %wektor do przemna¿ania
c = 2; % sta³a
m = 16.56;


result = randomGenerator(X0, A, m, c)

dziedzina = 0:(length(result)-1);

plot(dziedzina, result, 'o');
xlabel('Numer próbki')
ylabel('Wartoœæ próbki')

figure();
histogram(result)
xlabel('Wartoœci próbek')
ylabel('Iloœæ próbek danej wartoœci')


function result = randomGenerator(startValue, wektor, m, c)
    wketorSize = size(wektor);
    result = zeros(1, wketorSize(2));
    result(1) = startValue;
    
    for i = 1:wketorSize(2)-1
        wektor(wketorSize(2)-i)
        result(i+1) = mod(result(i) * wektor(wketorSize(2)-i) + c, m); 
    end
    
end