clear;
close all;

result = generatorPseudoRandNumbers(0.72, 4000);

dziedzina = 0:0.01:(length(result)-1)/100;

plot(dziedzina, result, 'o');
