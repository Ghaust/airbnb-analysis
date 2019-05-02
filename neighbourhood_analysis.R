#Neighbourhood
library(questionr) 
paris.airbnb.listings <- read.csv("~/Desktop/Computer Science/Engineering School/2018-2019/S2/AirBnB_Analysis/paris-airbnb-listings.csv", header=TRUE, sep=";")
View(paris.airbnb.listings)

neigh <- table(paris.airbnb.listings$Neighbourhood)
sort(neigh) #trie selon la valeur de l'effectif

freq(paris.airbnb.listings$Neighbourhood)

barplot(sort(neigh), col = "gray",
        main = "Taux de location des Airbnb en fonction du quartier",
        xlab = "Ville",
        ylab = "Effectif") #graphique en barres


dotchart(sort(neigh)) #diagramme de Cleveland
