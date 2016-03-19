# Getting and Cleaning Data - Course Project
----------------
## Introduction
This repository contains the course project for the Coursera course [Getting and Cleaning Data](https://www.coursera.org/course/getdata).

### Project Summary
Creates one R script that does the following:
1. Merges the training and the test sets to create one data set.   
2. Extracts only the measurements on the mean and standard deviation for each measurement.   
3. Uses descriptive activity names to name the activities in the data set.   
4. Appropriately labels the data set with descriptive variable names.   
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.   

With the data of the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
### Usage
Decompress the data from the file below to the R working directory:
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
Run the `run_analysis.R` script.  
The script will produce a tidy data set and save its content to a file named 'tidyData.txt' in the working directory.

### Additional Information
Additional information about the variables, data and transformations can be found in the CodeBook.MD file.

 