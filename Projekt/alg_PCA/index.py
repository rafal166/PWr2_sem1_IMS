import pandas as pd
from dataManipulation import *
from sklearn.preprocessing import StandardScaler
import numpy as np
import matplotlib.pyplot as plt

#pobieranie danych "dtm - data to manipulate"
dtm  = getDataToReduce()

dane = dtm[['kalorie', 'sniadanie', 'obiad', 'kolacja']]
etykiety = dtm[['cialo']]

# Standaryzacja danych
#z = (x - u) / s
# z - wynik
# x - wartość początkowa
# u - średnia
# s - odchylenie standardowe
dane_standardowe = StandardScaler().fit_transform(dane)

# obliczanie macierzy kowariancji
macierz_kowariancji = np.cov(dane_standardowe.T)

# pobieranie wektorów własnych macierzy kowariancji
wartosci_wlasne, wektory_wlasne = np.linalg.eig(macierz_kowariancji)

#obliczanie iloczynu skalarnego wartości z danymi ustandaryzowanymi
dane_zredukowane = dane_standardowe.dot(wektory_wlasne.T[0])

dataToPlot = splitData(etykiety, dane_zredukowane)

fig = plt.figure()
plot = fig.add_subplot(111)
for elem in dataToPlot:
	plot.scatter(elem['results'], np.zeros(len(elem['results'])), marker="o" , label=elem['label'])

plt.legend(loc='upper left');
plt.grid(color='k', linestyle='-', linewidth=.1)
plt.xlabel('Znormalizowane wartości zredukowanego zbioru danych')
plt.ylabel('Oś Y')
plt.show()