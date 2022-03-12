library(tidyr)
library(dplyr)
library(mice)
# 36526 = Jan 1, 2000

#change Working directory if you run this
setwd("D:/Repositories/CS251/SDRUS/scaling-guacamole/Data_Clean/")
df0 <- read.csv2("data.csv",
                  header = TRUE,
                  sep = ",",
                  na.strings = "")

df.null <- df0 %>% fill(knots, .direction = 'updown')
df.null <- df.null %>% fill(windDir, .direction = 'updown')
df.null <- df.null %>%fill(gustKnots, .direction = 'updown')
df.null <- df.null %>% fill(pressure, .direction = 'updown')
df.null <- df.null %>%fill(temp, .direction = 'updown')




# imp <- mice(df0, method = "norm.predict", m = 1) # Impute data
# data_det <- complete(imp) # Store data
# 
# # Stochastic regression imputation
# imp <- mice(data, method = "norm.nob", m = 1) # Impute data
# data_sto <- complete(imp)
# 
# # Set Variables for data and time
# # as.Date(data$time, "%R")
# # as.Date(data$date, "%m/%d/%Y")
# 
# # clean Data Set
# data <- na.omit(df0)
# 
# 
# # Graphical comparison of deterministic and stochastic regression imputation
# 
# par(mfrow = c(1, 2)) # Both plots in one graphic
# 
# # Deterministic regression imputation
# plot(data_det$time[!is.na(data_det$knots)], data_det$knots[!is.na(data_det$knots)],     # Plot of observed values
#      xlim = c(0, 20), ylim = c(- 15, 60),
#      main = "Deterministic Regression Imputation",
#      xlab = "X1", ylab = "Y")
# points(data_det$time[is.na(data_det$knots)], data_det$knots[is.na(data_det$knots)],     # Plot of missing values
#        col = "red")
# abline(lm(data$knots ~ x1, data_det), col = "#1b98e0", lwd = 1.5) # Regression slope
# legend("topleft",                                        # Legend
#        c("Observed Values", "Imputed Values", "Regression Y ~ X1"),
#        pch = c(1, 1, NA),
#        lty = c(NA, NA, 1),
#        col = c("black", "red", "#1b98e0"))
# 
# # Stochastic regression imputation
# plot(data$time[!is.na(data$knots)], data_sto$knots[!is.na(data$knots)],     # Plot of observed values
#      xlim = c(0, 20), ylim = c(- 15, 60),
#      main = "Stochastic Regression Imputation",
#      xlab = "X1", ylab = "Y")
# points(data$time[is.na(data$knots)], data_sto$knots[is.na(data$knots)],     # Plot of missing values
#        col = "red")
# abline(lm(data_det$knots ~ data_det$time, data_det), col = "#1b98e0", lwd = 1.5) # Regression slope
# legend("topleft",                                        # Legend
#        c("Observed Values", "Imputed Values", "Regression Y ~ X1"),
#        pch = c(1, 1, NA),
#        lty = c(NA, NA, 1),
#        col = c("black", "red", "#1b98e0"))
# 
