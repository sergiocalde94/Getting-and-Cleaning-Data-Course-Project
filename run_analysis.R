## 1. Merges the training and the test sets to create one data set

# First we have to get the features names from features.txt file
activity_labels <- read.table('UCI HAR Dataset/activity_labels.txt',
                              colClasses = c('numeric', 'character'),
                              col.names = c('id', 'name'))

features <- read.table('UCI HAR Dataset/features.txt',
                       colClasses = c('NULL', 'character'),
                       col.names = c('NULL', 'name'))

# Now it´s time to read training and test data
subject_train <- read.table('UCI HAR Dataset/train/subject_train.txt', col.names = 'user')
X_train <- read.table('UCI HAR Dataset/train/X_train.txt', col.names = features$name)
y_train <- read.table('UCI HAR Dataset/train/y_train.txt', col.names = 'activity')
subject_test <- read.table('UCI HAR Dataset/test/subject_test.txt', col.names = 'user')
X_test <- read.table('UCI HAR Dataset/test/X_test.txt', col.names = features$name)
y_test <- read.table('UCI HAR Dataset/test/y_test.txt', col.names = 'activity')

# Divide and conquer! We merge train data, then test data, and finally we can merge it all
train_data <- cbind(subject_train, X_train, y_train)
test_data <- cbind(subject_test, X_test, y_test)

data <- rbind(train_data, test_data)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement.

library(dplyr)

# Hadley´s library dplyr is perfect for this purpose, we select the requested columns
data %>%
  select(contains(".mean."), contains('.std.')) -> mean_and_std_data

## 3. Uses descriptive activity names to name the activities in the data set

data$activity <- activity_labels$name[data$activity]

## 4. Appropriately labels the data set with descriptive variable names.

# For consistency we will transform to lower case all variables names
data$activity <- tolower(data$activity)

## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(tidyr)

# We use dplyr + tidyr
data %>%
  group_by(user, activity) %>%
  summarise_all(mean) -> result
