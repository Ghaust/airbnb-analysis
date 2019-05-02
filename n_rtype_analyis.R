#analyse bivariée entre le type d'Airbnb et le quartier
library(questionr)

paris.airbnb.listings <- read.csv("~/Desktop/Computer Science/Engineering School/2018-2019/S2/AirBnB_Analysis/paris-airbnb-listings.csv", header=TRUE, sep=";")
View(paris.airbnb.listings)

biv <- table(paris.airbnb.listings$Neighbourhood, paris.airbnb.listings$Room.Type)

#on passe le tableau en effectifs en tableau en pourcentages ligne ou colonne
lprop(biv) #en ligne cprop en colonne

#on travaille sur un échantillon
#On va faire un test d'indépendence du χ² : permet de rejeter l'hypothèse d'indépendance
#des lignes et des colonnes du tableau càd de rejeter l'hypothèse que les écarts à l'indépendance obversés
#seraient uniquement dus au biais d'échantillonnage

chisq.test(biv)
#X-squared correspond à la valeur statistique du χ²
#df au nombre de degrés de libertés du test
#p-value le fameux p qui indique la probabilité d'obtenir une valeur χ² 
#au moins aussi extrême sous l'hypothèse d'indépendance
#Si p-value < 2.2e-16, il est en dessous du seuil de décision (5% soit 0.05)
#On peut donc rejeter l'hypothèse d'indépendance des lignes et des colonnes du tableau

#On va regarder aussi les résidus de ce test pour affiner la lecture du tableau
chisq.residuals(biv)

#si la valeur du résidu pour une case est inférieure à -2, alors il y a une sous-représentation de cette case dans le tableau : les effectifs sont significativement plus faibles que ceux attendus sous l’hypothèse d’indépendance
#à l’inverse, si le résidu est supérieur à 2, il y a sur-représentatation de cette case
#si le résidu est compris entre -2 et 2, il n’y a pas d’écart à l’indépendance significatif
#Les résidus peuvent être une aide utile à l’interprétation, notamment pour des tableaux de grande dimension.

mosaicplot(biv, las = 3, shade = TRUE)
