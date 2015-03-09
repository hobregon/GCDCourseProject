---
title: "codebook"
author: "Hector Obregon"
date: "March 8, 2015"
output: html_document
---

This codebook describes the steps taken by me to complete the Coursera Getting and
Cleaning Data Course Project. Credit given for the source data to:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The script that executes the necessary steps is run_analysis.r

The input data for this script is this file: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should download the above zip file to your R working directory before
running the script. It is not necessary for you to unzip the file as
that is done by the script.

A full description of the original data set can be found here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The script follows the following steps:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The final output of the script is the file "finaltidy.txt" that is written to your working directory.

Each step above can be identified in code blocks in the script like so:

Beginning of step X:

```{r}
## STEP X
```

End of step X:

```{r}
## END OF STEP X
```

Final output of the script is a data frame with the following columns:

"1" "ActivityDescription"

Character variable.
Describes the activity the subject was doing for the observation. It can be one of:

WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

"2" "IDSubject"

Integer variable.
Identifies the subject that generated that observation. It is an integer between 1 and 30. 
Further subject information is not available.


"3" "MEANtBodyAcc.mean...X"



This and all the following variable names represent the MEAN of the corresponding 
variable in the original dataset as described in the features.txt and 
features_info.txt files included in the zip file.

The names have been prefixed with MEAN and have been cleaned up to make R syntactically
valid names with the make.names R function to facilitate further processing in R.

These variables are sensor acceleration signals and were normalized between 
-1 and 1

"4" "MEANtBodyAcc.mean...Y"

"5" "MEANtBodyAcc.mean...Z"

"6" "MEANtBodyAcc.std...X"

"7" "MEANtBodyAcc.std...Y"

"8" "MEANtBodyAcc.std...Z"

"9" "MEANtGravityAcc.mean...X"

"10" "MEANtGravityAcc.mean...Y"

"11" "MEANtGravityAcc.mean...Z"

"12" "MEANtGravityAcc.std...X"

"13" "MEANtGravityAcc.std...Y"

"14" "MEANtGravityAcc.std...Z"

"15" "MEANtBodyAccJerk.mean...X"

"16" "MEANtBodyAccJerk.mean...Y"

"17" "MEANtBodyAccJerk.mean...Z"

"18" "MEANtBodyAccJerk.std...X"

"19" "MEANtBodyAccJerk.std...Y"

"20" "MEANtBodyAccJerk.std...Z"

"21" "MEANtBodyGyro.mean...X"

"22" "MEANtBodyGyro.mean...Y"

"23" "MEANtBodyGyro.mean...Z"

"24" "MEANtBodyGyro.std...X"

"25" "MEANtBodyGyro.std...Y"

"26" "MEANtBodyGyro.std...Z"

"27" "MEANtBodyGyroJerk.mean...X"

"28" "MEANtBodyGyroJerk.mean...Y"

"29" "MEANtBodyGyroJerk.mean...Z"

"30" "MEANtBodyGyroJerk.std...X"

"31" "MEANtBodyGyroJerk.std...Y"

"32" "MEANtBodyGyroJerk.std...Z"

"33" "MEANtBodyAccMag.mean.."

"34" "MEANtBodyAccMag.std.."

"35" "MEANtGravityAccMag.mean.."

"36" "MEANtGravityAccMag.std.."

"37" "MEANtBodyAccJerkMag.mean.."

"38" "MEANtBodyAccJerkMag.std.."

"39" "MEANtBodyGyroMag.mean.."

"40" "MEANtBodyGyroMag.std.."

"41" "MEANtBodyGyroJerkMag.mean.."

"42" "MEANtBodyGyroJerkMag.std.."

"43" "MEANfBodyAcc.mean...X"

"44" "MEANfBodyAcc.mean...Y"

"45" "MEANfBodyAcc.mean...Z"

"46" "MEANfBodyAcc.std...X"

"47" "MEANfBodyAcc.std...Y"

"48" "MEANfBodyAcc.std...Z"

"49" "MEANfBodyAcc.meanFreq...X"

"50" "MEANfBodyAcc.meanFreq...Y"

"51" "MEANfBodyAcc.meanFreq...Z"

"52" "MEANfBodyAccJerk.mean...X"

"53" "MEANfBodyAccJerk.mean...Y"

"54" "MEANfBodyAccJerk.mean...Z"

"55" "MEANfBodyAccJerk.std...X"

"56" "MEANfBodyAccJerk.std...Y"

"57" "MEANfBodyAccJerk.std...Z"

"58" "MEANfBodyAccJerk.meanFreq...X"

"59" "MEANfBodyAccJerk.meanFreq...Y"

"60" "MEANfBodyAccJerk.meanFreq...Z"

"61" "MEANfBodyGyro.mean...X"

"62" "MEANfBodyGyro.mean...Y"

"63" "MEANfBodyGyro.mean...Z"

"64" "MEANfBodyGyro.std...X"

"65" "MEANfBodyGyro.std...Y"

"66" "MEANfBodyGyro.std...Z"

"67" "MEANfBodyGyro.meanFreq...X"

"68" "MEANfBodyGyro.meanFreq...Y"

"69" "MEANfBodyGyro.meanFreq...Z"

"70" "MEANfBodyAccMag.mean.."

"71" "MEANfBodyAccMag.std.."

"72" "MEANfBodyAccMag.meanFreq.."

"73" "MEANfBodyBodyAccJerkMag.mean.."

"74" "MEANfBodyBodyAccJerkMag.std.."

"75" "MEANfBodyBodyAccJerkMag.meanFreq.."

"76" "MEANfBodyBodyGyroMag.mean.."

"77" "MEANfBodyBodyGyroMag.std.."

"78" "MEANfBodyBodyGyroMag.meanFreq.."

"79" "MEANfBodyBodyGyroJerkMag.mean.."

"80" "MEANfBodyBodyGyroJerkMag.std.."

"81" "MEANfBodyBodyGyroJerkMag.meanFreq.."
