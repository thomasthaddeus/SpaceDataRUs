#install.packages("janitor")
library(tidyverse)
library(tidyr)
library(janitor)
library(dplyr)

#change Working directory if you run this
setwd("D:/Repositories/CS251/Space_Data_R_US/Data_Raw/")
data <- read.csv2("data.csv",
                    header = FALSE,
                    sep = ",",
                    na.strings = "",
                    col.names = c("date",
                                  "time",
                                  "knots",
                                  "windDir",
                                  "gustKnots",
                                  "temp", 
                                  "pressure"))

# clean Data Set
data <- na.omit(data)

# Set Variables for data and time
as.Date(data$time, "%R")
as.Date(data$date, "%m/%d/%Y")

t1 <- as.Date(data$time, "%R")
d1 <- as.Date(data$date,"%m/%d/%Y")

# quick data set names
as.double(data$knots)
as.double(data$windDir)
as.double(data$gustKnots)
as.double(data$temp)
as.double(data$pressure)

#knots = 1.15 mph
knot     <- as.double(data$knots)
dir      <- as.double(data$windDir)
gust     <- as.double(data$gustKnots)
temp     <- as.double(data$temp)
pressure <- as.double(data$pressure)

data2 <- tibble(rows = TRUE, c(t1, d1, knot, dir, gust, temp, pressure))

write.csv(knot, 'knots.csv')
write.csv(dir, 'dir.csv')
write.csv(gust, 'gust.csv')
write.csv(temp, 'temp.csv')
write.csv(pressure, 'pressure.csv')
write.table(data2, "data2.csv")
