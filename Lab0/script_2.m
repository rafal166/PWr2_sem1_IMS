clear;
close all;

X0 = 5; %warto�� startowa
A = 1:1:1000; %wektor do przemna�ania
c = 2; % sta�a
m = 16.56;


result = randomGenerator(X0, A, m, c)

dziedzina = 0:(length(result)-1);

plot(dziedzina, result, 'o');
xlabel('Numer pr�bki')
ylabel('Warto�� pr�bki')

figure();
histogram(result)
xlabel('Warto�ci pr�bek')
ylabel('Ilo�� pr�bek danej warto�ci')


function result = randomGenerator(startValue, wektor, m, c)
    wketorSize = size(wektor);
    result = zeros(1, wketorSize(2));
    result(1) = startValue;
    
    for i = 1:wketorSize(2)-1
        wektor(wketorSize(2)-i)
        result(i+1) = mod(result(i) * wektor(wketorSize(2)-i) + c, m); 
    end
    
end