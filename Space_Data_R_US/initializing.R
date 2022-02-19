library(tidyverse)
library(readxl)
library("tidyr")

# Col Types date, date, numeric, numeric, numeric, numeric, numeric
data_00 <- read_xlsx(
  "D:/Repositories/CS251/Space_Data_R_US/scaling-guacamole/Data_Raw/2000-2005(Thad).xlsx", 
  sheet = "2000",
  na = "-")

data_01 <- read_xlsx(
  "D:/Repositories/CS251/Space_Data_R_US/scaling-guacamole/Data_Raw/2000-2005(Thad).xlsx", 
  sheet = "2001",
  na = "-")

data_02 <- read_xlsx(
  "D:/Repositories/CS251/Space_Data_R_US/scaling-guacamole/Data_Raw/2000-2005(Thad).xlsx", 
  sheet = "2002",
  na = "-")

data_03 <- read_xlsx(
  "D:/Repositories/CS251/Space_Data_R_US/scaling-guacamole/Data_Raw/2000-2005(Thad).xlsx", 
  sheet = "2003",
  na = "-")

data_04 <- read_xlsx(
  "D:/Repositories/CS251/Space_Data_R_US/scaling-guacamole/Data_Raw/2000-2005(Thad).xlsx", 
  sheet = "2004",
  na = "-")

data_05 <- read_xlsx(
  "D:/Repositories/CS251/Space_Data_R_US/scaling-guacamole/Data_Raw/2000-2005(Thad).xlsx", 
  sheet = "2005",
  na = "-")

clean <- na.omit(data_00, data_01, data_02, data_03, data_04, data_05)
df_00_05 <- c(data_00, data_01, data_02, data_03, data_04, data_05)



data_01$Date
(data_01)
length(data_01)

# write.pdf("2000.pdf")
