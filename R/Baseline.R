library(tidyverse)
library(ggplot2)


wind_speed <- ggplot(data_correct, aes(knots, date, colour='blue'))
   + geom_histogram(binwidth = .1)
  
kt.pl <- plot(data_correct$knots, data_correct$time, 
     xlab='knots', ylab = 'Time')
print(kt.pl)
print(wind_speed)
