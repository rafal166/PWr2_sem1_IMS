clear;
close all;

result = generatorPseudoRandNumbers(0.33, 100, 3);

dziedzina = 0:(length(result)-1);

plot(dziedzina, result, 'o');
xlabel('Numer pr?bki')
ylabel('Warto?? pr?bki')

figure();
histogram(result)
xlabel('Warto?ci pr?bek')
ylabel('Ilo?? pr?bek danej warto?ci')
