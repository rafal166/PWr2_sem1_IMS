clear;
close all;

result = generatorPseudoRandNumbers(0.33, 100, 3);

dziedzina = 0:(length(result)-1);

plot(dziedzina, result, 'o');
xlabel('Numer próbki')
ylabel('Wartoœæ próbki')

figure();
histogram(result)
xlabel('Wartoœci próbek')
ylabel('Iloœæ próbek danej wartoœci')
