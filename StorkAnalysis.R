library(tidyverse)
StorkData <- read_csv("data/StorkData.csv")

#The basics
ggplot(StorkData, aes(x=Storks, y=Birth_rate)) + geom_point()

# making the the linear model
StorkData.lm <- lm(StorkData$Birth_rate~StorkData$Storks)

#viewing the model statistics
summary(StorkData.lm)

#plotting the regression (with std error)
ggplot(StorkData, aes(x=Storks, y=Birth_rate)) + 
  geom_point()+
  geom_smooth(method=lm)

#could use   geom_smooth(method=lm, se=FALSE)  to eliminate error
# see http://www.sthda.com/english/wiki/ggplot2-scatter-plots-quick-start-guide-r-software-and-data-visualization
# for more...
cor(StorkData$Storks,StorkData$Birth_rate, method= "pearson")

#"r" is the correlation coefficient, and tells you the correlation between the predicted 
#values and the observed values of Y. R2 is the square of this coeeficient, and indicates
#the percent of this variation explaned by your regression  out of the total variation


#-----------


#Do it again for area...


# making the the linear model
StorkDataArea.lm <- lm(StorkData$Birth_rate~StorkData$Area)

#viewing the model statistics
summary(StorkDataArea.lm)

#plotting the regression (with std error)
ggplot(StorkData, aes(x=Area, y=Birth_rate)) + 
  geom_point()+
  geom_smooth(method=lm)
