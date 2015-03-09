##

## BEGIN STEP 1
## We unzip the files to a temporary directory
unzip("UCI HAR Dataset.zip", overwrite = TRUE, exdir = "TMPDATA")

## We set the working directory to where the data is...
setwd("TMPDATA/UCI HAR Dataset")

## Read activity labels...

activitylabels <- read.table("activity_labels.txt", header = FALSE, sep = " ", 
                           col.names = c("IDActivity", "ActivityDescription"), 
                           stringsAsFactors = FALSE)

## ...and feature names....
featurenames <- read.table("features.txt", header = FALSE, sep = " ", 
                         col.names = c("IDFeature", "FeatureName"), 
                         stringsAsFactors = FALSE)

##...testsubjects....
testsubjects <- read.table("test/subject_test.txt", header = FALSE, 
                         col.names = c("IDSubject"), stringsAsFactors = FALSE)

###...testactivities...
testactivities <- read.table("test/y_test.txt", header = FALSE, 
                         col.names = c("IDActivity"), stringsAsFactors = FALSE)

###....test features....
testfeatures <- read.table("test/x_test.txt", header = FALSE, 
                           stringsAsFactors = FALSE, 
                           colClasses = "numeric", 
                           col.names = featurenames$IDFeature)

##...this is our test set now complete....
testset <- cbind( testsubjects, testactivities, testfeatures )

##....repeat the exact same logic for the training data....
##....it is not necessary to reload featurenames and acivitylabels

trainingsubjects <- read.table("train/subject_train.txt", header = FALSE, 
                           col.names = c("IDSubject"), stringsAsFactors = FALSE)

trainingactivities <- read.table("train/y_train.txt", header = FALSE, 
                             col.names = c("IDActivity"), stringsAsFactors = FALSE)

trainingfeatures <- read.table("train/x_train.txt", header = FALSE, 
                           stringsAsFactors = FALSE, 
                           colClasses = "numeric", 
                           col.names = featurenames$IDFeature)

trainingset <- cbind( trainingsubjects, trainingactivities, trainingfeatures )

##....as per Step 1 of the instructions, merge both training & test sets:
fullset <- rbind( testset, trainingset)
## END OF STEP 1

## STEP 2
##...now build a logical index to extract only the variables that contain
## "mean" or "std" in their names

meansandstds = grepl("std", featurenames$FeatureName) | grepl("mean", featurenames$FeatureName)

relevantcolumns = intersect(paste("X", as.character(featurenames[meansandstds,1]), 
                              sep=""), 
                            colnames(fullset))


extractedset = fullset[, c("IDSubject", "IDActivity",relevantcolumns)]
## END OF STEP 2

## STEP 3
## Attach friendly activity names now ....



## STEP 4
## Use friendlier column names instead of ids for this extracted set:
colnames(extractedset) <- c("IDSubject","IDActivity", featurenames[meansandstds,2])

## Clean up after ourselves