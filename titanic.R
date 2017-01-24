library(dplyr)
library(tidyr)

library(readr)
titanic_original <- read_csv("~/GitHub/titanic_original.csv")
toriginal <- titanic_original

# calculate the mean of the age column and use that value to populate missing values

age <- toriginal$age
age[is.na(age)] <- mean(age, na.rm=TRUE)
# this could also be done by excluding the outliers and taking the mean again

# change missing values in boat to string 'None'
 toriginal <- toriginal %>% 
   mutate(boat = ifelse(is.na(boat), "None", boat))

# create a new column has_cabin_number
 toriginal <- toriginal %>% 
   mutate(has_cabin_number = ifelse(is.na(cabin), "0", "1"))
 View(toriginal)
 