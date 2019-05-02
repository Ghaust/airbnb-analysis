#Neighbourhood
library(questionr) #we load the needed extensions

#import of the dataset
paris.airbnb.listings <- read.csv("~/Desktop/Computer Science/Engineering School/2018-2019/S2/AirBnB_Analysis/paris-airbnb-listings.csv", header=TRUE, sep=";")
View(paris.airbnb.listings) #visualization of the array

cities <- table(paris.airbnb.listings$Neighbourhood)
sort(cities) #trie selon la valeur de l'effectif

freq(paris.airbnb.listings$Neighbourhood)