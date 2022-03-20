library(tidyverse)
library(lubridate)
library(vistime)
library(dplyr)
setwd('D:/Repositories/CS251/SDRUS/scaling-guacamole/Data_Clean')
data<- read.csv('data_clean.csv', header = TRUE)
data <- na.omit(data)

knots <- data$knots

knots.sd <- sd(knots) 
knots.var <- var(knots) 
knots.range <-range(knots)
knots.quant <- quantile(knots, probs=1/1000)
knots.summ<- summary(knots)

knots.summ
knots.range
knots.var
knots.sd
knots.quant

df<-data

df %>% 
  summarise(
    with(df,
         temp.w.mean = mean(temp.w),
         temp.summ = summary(temp),
         data.mode = getmode(temp.w),
         summary.data <- summary(temp.w),
         data.var = var(temp.w),
         data.sd = sd(temp.w)))