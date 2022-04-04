import pandas as pd
import numpy as np

# Przygotowanie danych do redukcji wymiarów
def getDataToReduce():
	df = pd.DataFrame(columns=['kalorie', 'sniadanie', 'obiad', 'kolacja', 'cialo'])
	df.loc[0] = [1341, 1, 0, 0, 'Chudy']
	df.loc[1] = [2924, 1, 1, 1, 'Normalny']
	df.loc[2] = [3623, 2, 2, 1, 'Gruby']
	df.loc[3] = [1524, 0, 1, 0, 'Chudy']
	df.loc[4] = [5193, 2, 2, 2, 'Gruby']
	df.loc[5] = [1482, 0, 0, 1, 'Chudy']
	df.loc[6] = [3134, 1, 0, 1, 'Normalny']
	df.loc[7] = [4294, 2, 2, 2, 'Gruby']
	df.loc[8] = [2793, 0, 2, 0, 'Normalny']
	df.loc[9] = [3134, 1, 2, 1, 'Gruby']
	
	return df


def splitData(etykiety, dane):
	result = []
	etykietyNPY = etykiety.to_numpy()
	idx = range(0 , len(etykietyNPY))

	for elabel in np.unique(etykietyNPY):
		dataToPush = []
		for i in idx: 
			if elabel == etykietyNPY[i]:
				dataToPush.append(dane[i])
		result.append({'label': elabel, 'results': dataToPush})

	return result
