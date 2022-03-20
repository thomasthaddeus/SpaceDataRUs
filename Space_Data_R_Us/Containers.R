library(tidyverse)
library(tidyr)
library(dbplyr)
library(dplyr)
hur_data <- read.csv("data.csv", header=TRUE)

## Section-1 (Thad)
##
####################################
##
## Aug 2000 Hurricane Debby
debby <- filter(data, 2000-08-18 < date)



# Aug 2001 Tropical Storm Dean
dean <- filter(data)

# Sept 2004 Hurricane Jeanne
jeanne <- c()


## Section-2 (Shelby)
##
# ###################################
# ##
# ## Oct 2008 Hurricane Omar 
# omar <- c()
# 
# # Aug 2010 Hurricane Earl 
# earl <- c()
# 
# # Oct 2010 Tropical Storm Otto  
# otto <- c()
# 
# 
# ## Section-3(Griffin)
# ##
#####################################
##
## Oct 2012 **Hurricane_Rafael 


# Aug 2015  **Tropical_Storm_Erika**
# erika <- c()


## Section-4(Patricia)
##
# #################################
# ##
# ## Sept 2017 **Hurricane_Irma** 
# irma <- c()
# 
# # Sept 2017 **Hurricane_Maria** 
# maria <- c()
# 
# # Aug 2019 **Hurricane_Dorian** 
# dorian <- c()
# 
# # Sept 2019 **Tropical_Storm_Karen** 
# karen <- c()
# 
