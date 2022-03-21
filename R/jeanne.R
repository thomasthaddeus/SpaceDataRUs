
library(xts)
library(tidyverse)
library(lubridate)
debby <- na.omit(debby)
#1 Debby 2000-08-19	2000-08-24
debby.days <- with(debby,is.interval(interval(ymd("2001-08-22/2001-08-23"))))
summary(debby)
debby.days = xts(debby[,c("")])               
                  
                  
#TS	Dean 2001-08-22 2001-08-23
dean <- na.omit(dean)
dean.days <- with(dean,is.interval(interval(ymd("2001-08-22/2001-08-23"))))
summary(dean)


#3 Jeanne 2004-09-14 2004-09-17 
jeanne <- na.omit(jeanne)
jeanne.days <- with(jeanne,is.interval(interval(ymd("2004-09-14/2004-09-17"))))
summary(jeanne)


data$MONTH = format(index(data), "%m")
months = split(as.numeric(data$pressure),data$ MONTH)
sapply(months, summary)

j <- summary(jeanne)

plot(j)
savePlot(j)

j

