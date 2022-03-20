library(readr)
ocean_temp <- read_csv("ocean_temp.csv")
View(ocean_temp)

right_join(x= ocean_temp, y=df, by = NULL, copy = FALSE,
           suffix = c(".x", ".y"), …, keep = FALSE,
           na_matches = "na")