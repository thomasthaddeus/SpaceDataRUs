# setwd() Function - To set the working directory your scripts folder
setwd("/your scripts directory")

# keep only the files that END with ".R" or ".r" using list.files() method and 
# pass the match parameter
script_list <- list.files(pattern = ".*\\.[rR]$", recursive = TRUE)

# loop through and trigger scripts using source ()
for (i in script_list)
  source(i)