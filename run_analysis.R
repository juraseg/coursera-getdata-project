# unzip dataset in data dir
unzip('./dataset.zip')


################################################################
# read data
################################################################

# read feature names
featureNames <- read.table('./data/UCI HAR Dataset/features.txt')$V2
# remove characters, invalid for R variable and column names: comma ",", parenthesis "()" and dash "-"
featureNames <- gsub("[(),-+]", '_', featureNames)

# read activity names
activities <- read.table('./UCI HAR Dataset/activity_labels.txt')
# add acitivity names as 'activity' column to data frame
data$activity <- activities[data$label, 2]

# read train data
trainData <- read.table('./UCI HAR Dataset/train/X_train.txt', col.names=featureNames)
# read activity labels
trainActivities <- read.table('./UCI HAR Dataset/train/y_train.txt', col.names="label")
# transform labels to meaningful names
trainActivities <- data.frame(activity=activities[trainActivities$label, 2])
# read subjects
trainSubjects <- read.table('./UCI HAR Dataset/train/subject_train.txt', col.names="subject_id")

# same for testing data
testData <- read.table('./UCI HAR Dataset/test/X_test.txt', col.names=featureNames)
testActivities <- read.table('./UCI HAR Dataset/test/y_test.txt', col.names="label")
testActivities <- data.frame(activity=activities[testActivities$label, 2])
testSubjects <- read.table('./UCI HAR Dataset/test/subject_test.txt', col.names="subject_id")


################################################################
# merge data
################################################################

# bind activity label with the rest of the data
trainData <- cbind(trainData, trainActivities, trainSubjects)
# bind activity label with the rest of the data
testData <- cbind(testData, testActivities, testSubjects)
# merge train and test data
data <- rbind(trainData, testData)
# extract only columns containing "mean" or "std" in their name, also keeping "activity" and "subject_id"
data <- data[, grepl("(mean|std|activity|subject_id)", names(data), ignore.case=TRUE)]


################################################################
# tidy data
################################################################

# melting data so each row contains only one variable
moltenData <- melt(data, id.vars=c("activity", "subject_id"))

# aggregating data - calculating mean for each variable and putting them back to columns
tidyData <- dcast(moltenData, activity + subject_id ~ variable, mean)

# save to file
write.table(tidyData, "tidy_data.txt")