## The Data

The Human Activity Recognition database was built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. For further details, see:

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>.

The data is available at:

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

## Discrete Variables

-   Subject - Identifier number from 1 to 30 that identifies the subject
-   Activity - Variable with 6 possible values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
-   Group - A binary variable that identifies whether the subject belongs to the TRAIN or TEST group

## Continuous Variables

-   tBodyAcc.mean.X
-   tBodyAcc.mean.Y
-   tBodyAcc.mean.Z
-   tBodyAcc.std.X
-   tBodyAcc.std.Y
-   tBodyAcc.std.Z
-   tGravityAcc.mean.X
-   tGravityAcc.mean.Y
-   tGravityAcc.mean.Z
-   tGravityAcc.std.X
-   tGravityAcc.std.Y
-   tGravityAcc.std.Z
-   tBodyAccJerk.mean.X
-   tBodyAccJerk.mean.Y
-   tBodyAccJerk.mean.Z
-   tBodyAccJerk.std.X
-   tBodyAccJerk.std.Y
-   tBodyAccJerk.std.Z
-   tBodyGyro.mean.X
-   tBodyGyro.mean.Y
-   tBodyGyro.mean.Z
-   tBodyGyro.std.X
-   tBodyGyro.std.Y
-   tBodyGyro.std.Z
-   tBodyGyroJerk.mean.X
-   tBodyGyroJerk.mean.Y
-   tBodyGyroJerk.mean.Z
-   tBodyGyroJerk.std.X
-   tBodyGyroJerk.std.Y
-   tBodyGyroJerk.std.Z
-   tBodyAccMag.mean
-   tBodyAccMag.std
-   tGravityAccMag.mean
-   tGravityAccMag.std
-   tBodyAccJerkMag.mean
-   tBodyAccJerkMag.std
-   tBodyGyroMag.mean
-   tBodyGyroMag.std
-   tBodyGyroJerkMag.mean
-   tBodyGyroJerkMag.std
-   fBodyAcc.mean.X
-   fBodyAcc.mean.Y
-   fBodyAcc.mean.Z
-   fBodyAcc.std.X
-   fBodyAcc.std.Y
-   fBodyAcc.std.Z
-   fBodyAcc.meanFreq.X
-   fBodyAcc.meanFreq.Y
-   fBodyAcc.meanFreq.Z
-   fBodyAccJerk.mean.X
-   fBodyAccJerk.mean.Y
-   fBodyAccJerk.mean.Z
-   fBodyAccJerk.std.X
-   fBodyAccJerk.std.Y
-   fBodyAccJerk.std.Z
-   fBodyAccJerk.meanFreq.X
-   fBodyAccJerk.meanFreq.Y
-   fBodyAccJerk.meanFreq.Z
-   fBodyGyro.mean.X
-   fBodyGyro.mean.Y
-   fBodyGyro.mean.Z
-   fBodyGyro.std.X
-   fBodyGyro.std.Y
-   fBodyGyro.std.Z
-   fBodyGyro.meanFreq.X
-   fBodyGyro.meanFreq.Y
-   fBodyGyro.meanFreq.Z
-   fBodyAccMag.mean
-   fBodyAccMag.std
-   fBodyAccMag.meanFreq
-   fBodyBodyAccJerkMag.mean
-   fBodyBodyAccJerkMag.std
-   fBodyBodyAccJerkMag.meanFreq
-   fBodyBodyGyroMag.mean
-   fBodyBodyGyroMag.std
-   fBodyBodyGyroMag.meanFreq
-   fBodyBodyGyroJerkMag.mean
-   fBodyBodyGyroJerkMag.std
-   fBodyBodyGyroJerkMag.meanFreq

## Cleaning data

1.  First, we import the activity labels and the feature names, contained in *activity_labels.txt* and *features.txt*, respectively

2.  We imported the files *subject_train.txt, subject_test.txt, y_train.txt, y_test.txt, X_train.txt, and X_test.txt*, and merged the training and test data into a single data frame

3.  The tidy data was obtained by selecting the variables Subject, Activity, Group, and the variables containing mean and standard deviations of measured features. The outcome is contained in the file Tidy.csv

4.  The file Summary_Averages.csv file contains the averaged variables from the tidy data set grouped according to Subject and Activity values.
