#load libraries needed for scripts
library(tidyr)
library(dplyr)

# load activity labels and features list
activity.labels.table <- read.table("activity_labels.txt", sep = "")
activityLabels <- as.character(activity.labels.table$V2)
features.table <- read.table("features.txt", sep = "")
columnNames <- features.table$V2

#clear activity.labels.table and features.table
rm(activity.labels.table, features.table)

# load training set data, labels, and subjects
training.set.data <- read.table("train/X_train.txt", sep = "")
training.set.labels <- read.table("train/y_train.txt", sep = "")
training.subjects <- read.table("train/subject_train.txt", sep = "")

# add column names from features list 
names(training.set.data) <- columnNames

# process training.set.labels into factor data
names(training.set.labels) <- "activity"
training.set.labels$activity <- as.factor(training.set.labels$activity)
levels(training.set.labels$activity) <- activityLabels

# process training.subjects into factor data
names(training.subjects) <- "subject"
training.subjects$subject <- as.factor(training.subjects$subject)

# construct table from training.set.data, training.subjects, training.set.labels
training <- cbind(training.set.data, training.subjects, training.set.labels)

# load testing set data, labels, and subjects
testing.set.data <- read.table("test/X_test.txt", sep = "")
testing.set.labels <- read.table("test/y_test.txt", sep = "")
testing.subjects <- read.table("test/subject_test.txt", sep = "")

# add column names from feature list
names(testing.set.data) <- columnNames

# process testing.set.labels into factor data
names(testing.set.labels) <- "activity"
testing.set.labels$activity <- as.factor(testing.set.labels$activity)
levels(testing.set.labels$activity) <- activityLabels

# process testing.subjects into factor data
names(testing.subjects) <- "subject"
testing.subjects$subject <- as.factor(testing.subjects$subject)

# construct table from testing.set.data, testing.subjects, testing.set.labels
testing <- cbind(testing.set.data, testing.subjects, testing.set.labels)

# clear data loaded to construct training table and test table
rm(training.set.data, training.set.labels, training.subjects,
   testing.set.data, testing.set.labels, testing.subjects,
   activityLabels, columnNames)

# merge training data and test data
combined.data <- rbind(training, testing)

# reorder subject levels to follow ascending order
combined.data$subject <- factor(combined.data$subject, levels = c(1:30))

# clear testing and training, used to construct combined.data
rm(training, testing)

# define columns to keep (mean data, std data, subject, and activity)
# note: meanFreq() data purposefuly cleared. Specifically mean() formula and std() formula requested
goodcols <- grep("mean[^Freq]|std", names(combined.data))
goodcols <- c(goodcols, 562, 563)

# remove unwanted columns from combined.data
combined.data <- combined.data[,goodcols]

# clear column selection data
rm(goodcols)

# rearrange location of Mag (Magnitude) to align with other vector descriptors (x, y, and z)
names(combined.data) <- gsub("Mag-mean\\(\\)","-mean\\(\\)-Mag", names(combined.data))
names(combined.data) <- gsub("Mag-std\\(\\)","-std\\(\\)-Mag", names(combined.data))

# substitute in descriptive words to replace abbreviations in column names
names(combined.data) <- gsub("^t","time", names(combined.data))
names(combined.data) <- gsub("^f","frequency", names(combined.data))
names(combined.data) <- gsub("Gravity","gravity", names(combined.data))
names(combined.data) <- gsub("BodyBody","body", names(combined.data))
names(combined.data) <- gsub("Body","body", names(combined.data))
names(combined.data) <- gsub("Acc","accelerometer", names(combined.data))
names(combined.data) <- gsub("Gyro","gyroscope", names(combined.data))
names(combined.data) <- gsub("Jerk","jerk", names(combined.data))
names(combined.data) <- gsub("std","standarddeviation", names(combined.data))
names(combined.data) <- gsub("Mag","Magnitude", names(combined.data))

# calculate average for all data per subject per activity and store it in a new tidy.data set
tidy.data <- group_by(combined.data, subject, activity) %>%
              summarise_each(funs(mean))

# denote each average column by appending "average" to each column name corresponding to averaged data
names(tidy.data)[4:ncol(tidy.data)] <- paste0("average", names(tidy.data)[4:ncol(tidy.data)])

# clear combined.data
rm(combined.data)

# convert tidy.data from tbl_df to data frame
tidy.data <- as.data.frame(tidy.data)