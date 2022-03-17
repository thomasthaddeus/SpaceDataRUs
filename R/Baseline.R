library(tidyverse)
library(ggplot2)


wind_speed <- ggplot(data, aes(knots, date, colour='blue')) +
  geom_histogram(binwidth = .1)
  
kt.pl <- ggplot(data, aes(knots, xlab='knots', ylab = 'Time')) +
  geom_boxplot()
print(kt.pl)
print(wind_speed)
