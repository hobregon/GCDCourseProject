##

## We unzip the files to a temporary directory
unzip("UCI HAR Dataset.zip", overwrite = TRUE, exdir = "TMPDATA")

## We set the working directory to where the data is...
setwd("TMPDATA/UCI HAR Dataset")

