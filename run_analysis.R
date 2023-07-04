library(dplyr, tidyverse)

## Step 1. First, we read the activity table that assigns an activity to each number from 1 to 6. 
# We also load the measured features and rename them in a proper way so taht they can be
# used as variable names.

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")
features_labels <- make.names(features$V2) %>% 
        gsub(pattern = "\\.{2,}", replacement = "\\.") %>% 
        sub(pattern = "\\.$", replacement = "")

## Step 2. Read the tables that assign to each observation the corresponding subject, activity,
# and feature values for subjects in the test group. We combine all such information in a single
# table data_test.

subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "Subject")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "Activity")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features_labels)
data_test <- cbind(subject_test, y_test, Group = "TEST", X_test)

## Step 3. Read the tables that assign to each observation the corresponding subject, activity,
# and feature values for subjects in the training group. We combine all such information in a single
# table data_train.

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "Subject")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "Activity")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features_labels)
data_train <- cbind(subject_train, y_train, Group = "TRAIN", X_train)

## Step 4. Combine test and training data in a single data frame, sort data according to subject 
# and activity labels. After that, we replace the activity labels from 1 to 6 by their names 
# given by activity_labels.txt.

data_merged <- rbind(data_test, data_train) %>% 
        arrange(Subject, Activity)
data_merged$Activity <- sapply(data_merged$Activity, FUN = function(x) activity_labels$V2[x])

## Step 5. Select only the variables whose names contain mean and standard deviation of measurements. 

data_selected <- select(data_merged, Subject, Activity, Group, grep(pattern = "mean|std", x =  names(data_merged), value = TRUE))

## Step 6. Summarize the average of the variables from table data_selected grouped by subject and activity.

data_summarized <- summarise(data_selected, .by = c(Subject, Activity, Group), across(everything(), list(mean)))
colnames(data_summarized) <- sub(pattern = "^[ft]", replacement = "AVG_", x = names(data_selected))

##Step 7. Export tidy data and sumarized data
write.csv(data_selected, file = "./Tidy.csv")
write.csv(data_summarized, file = "./Summary_Averages.csv")