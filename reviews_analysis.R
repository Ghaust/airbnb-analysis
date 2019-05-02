#Number of reviews
library(questionr) #we load the needed extensions

#import of the dataset
paris.airbnb.listings <- read.csv("~/Desktop/Computer Science/Engineering School/2018-2019/S2/AirBnB_Analysis/paris-airbnb-listings.csv", header=TRUE, sep=";")
View(paris.airbnb.listings) #visualization of the array

min_val<-min(paris.airbnb.listings$Reviews.per.Month, na.rm = TRUE)

max_val<-max(paris.airbnb.listings$Reviews.per.Month, na.rm = TRUE)

range(paris.airbnb.listings$Reviews.per.Month, na.rm = TRUE)

#moyenne
mean(paris.airbnb.listings$Reviews.per.Month, na.rm = TRUE)

median(paris.airbnb.listings$Reviews.per.Month, na.rm = TRUE)

#indicateurs de dispersion : permet de mesurer si les valeurs sont regroupées ou plutôt dispersées
diff_val<- max_val - min_val

variance <- var(paris.airbnb.listings$Reviews.per.Month, na.rm = TRUE)
ecart_type <- sd(paris.airbnb.listings$Reviews.per.Month, na.rm = TRUE)

##premier quartile et troisième quartile
f_quant<- quantile(paris.airbnb.listings$Reviews.per.Month, prob = 0.25)
t_quant<- quantile(paris.airbnb.listings$Reviews.per.Month, prob = 0.75)

summary(paris.airbnb.listings$Reviews.per.Month)

hist(paris.airbnb.listings$Reviews.per.Month, col = "gray",
     main = "Répartition des notes mensuelles des Airbnb de Paris",
     xlab = "Note",
     ylab = "Effectif") #histogramme
