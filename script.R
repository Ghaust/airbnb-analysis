library(questionr) #we load the needed extensions

#import of the dataset
paris.airbnb.listings <- read.csv("~/Desktop/Computer Science/Engineering School/2018-2019/S2/AirBnB_Analysis/paris-airbnb-listings.csv", header=TRUE, sep=";")
View(paris.airbnb.listings) #visualization of the array

#nrow(paris.airbnb.listings) rows 
#ncol(paris.airbnb.listings) cols

#str(paris.airbnb.listings) structure

#paris.airbnb.listings$V7 access variable (columns) of array

