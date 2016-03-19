

##Load train Data
dataTrainSubj<-read.table("./UCI HAR Dataset/train/subject_train.txt",header=FALSE)
dataTrainY<-read.table("./UCI HAR Dataset/train/y_train.txt",header=FALSE)
dataTrainX<-read.table("./UCI HAR Dataset/train/X_train.txt",header=FALSE)

##Load test Data
dataTestSubj<-read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE)
dataTestY<-read.table("./UCI HAR Dataset/test/y_test.txt",header=FALSE)
dataTestX<-read.table("./UCI HAR Dataset/test/X_test.txt",header=FALSE)


features<-read.table("./UCI HAR Dataset/features.txt",header=FALSE)
activityLabels<-read.table("./UCI HAR Dataset/activity_labels.txt",header=FALSE)

dataTest <- cbind(dataTestX,dataTestY,dataTestSubj)
dataTrain <- cbind(dataTrainX,dataTrainY,dataTrainSubj)

## 1 - Merges the training and the test sets to create one data set.
data <- rbind(dataTest, dataTrain)

names(data) <- c(as.character(features$V2), "Activity", "Subject")

## 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
dataF <- data[,c(grep("mean\\(\\)|std\\(\\)|Activity|Subject", names(data)))]

## 3 - Uses descriptive activity names to name the activities in the data set
dataF$Activity <- activityLabels$V2[dataF$Activity]

## 4 - Appropriately labels the data set with descriptive variable names.
names(dataF) <- gsub("^t", "Time", names(dataF))
names(dataF) <- gsub("^f", "Frequency", names(dataF))
names(dataF) <- gsub("-mean\\(\\)", "Mean", names(dataF))
names(dataF) <- gsub("-std\\(\\)", "StdDev", names(dataF))
names(dataF) <- gsub("-", "", names(dataF))
names(dataF) <- gsub("BodyBody", "Body", names(dataF))
names(dataF) <- gsub("Gyro", "Gyroscope", names(dataF))
names(dataF) <- gsub("Acc", "Accelerometer", names(dataF))
names(dataF) <- gsub("Mag", "Magnitude", names(dataF))


## 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidyData<-aggregate(. ~Subject + Activity, dataF, mean)

tidyData<-tidyData[order(tidyData$Subject,tidyData$Activity),]

write.table(tidyData, "tidyData.txt", row.name=FALSE)