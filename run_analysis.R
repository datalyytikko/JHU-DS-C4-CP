#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each measurement.
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names.
#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


#dependecies
library(readr)
library(tidyr)
library(dplyr)

#read features (=variable names)
#leave only the actual names
features <- read_delim("UCI HAR Dataset/features.txt", col_names = FALSE, delim = " ")
features <- features$X2

#we are only interested in variables with mean or std in their name
wanted_features <- grepl("mean|std", features)

#read activity labes and name them
activity_labels <- read_table("UCI HAR Dataset/activity_labels.txt", col_names = FALSE)
names(activity_labels) <- c("activity_id", "activity_name")

#read testing data
#and name them
x_test <- read_table("UCI HAR Dataset/test/X_test.txt", col_names = FALSE)
y_test <- read_table("UCI HAR Dataset/test/y_test.txt", col_names = FALSE)
names(y_test) <- c("label")

#read subject data and name them
subject_test <- read_table("UCI HAR Dataset/test/subject_test.txt", col_names = FALSE)
names(subject_test) <- c("subject")

#strip only the wanted columns from the x_test
names(x_test) <- features
x_test <- x_test[, wanted_features]

#combine the data the testing data
test_combined <- cbind(subject_test, y_test, x_test)

#read training data
#similar steps than with testing data
x_train <- read_table("UCI HAR Dataset/train/X_train.txt", col_names = FALSE)
y_train <- read_table("UCI HAR Dataset/train/y_train.txt", col_names = FALSE)
names(y_train) <- c("label")

subject_train <- read_table("UCI HAR Dataset/train/subject_train.txt", col_names = FALSE)
names(subject_train) <- c("subject")

#strip only wanted columns
names(x_train) <- features
x_train <- x_train[, wanted_features]

#combine the training data
train_combined <- cbind(subject_train, y_train, x_train)

#combine train and testing data to one
combined_data <- rbind(train_combined, test_combined)

#Fix namings. Change numbers to actual values
#Change activity numbers to actual activity names
combined_data <- merge(combined_data, activity_labels, by.x="label", by.y="activity_id")
combined_data <- select(combined_data, -label)


#make skinny and long
tidy_data <- gather(combined_data, key ="variable", value="value", 2:80)

#step 5 of the instructions
avgs <- tidy_data %>% 
    group_by(subject, activity_name, variable) %>% 
    summarize(avg = mean(value))

write.table(avgs, "avgs.txt", row.names = FALSE)
