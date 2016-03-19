# Getting and Cleaning Data - Course Project
----------------
## Original data set
Taken from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones:

>"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.  
>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain."
>
>"For each record in the dataset it is provided: 
>- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
>- Triaxial Angular velocity from the gyroscope. 
>- A 561-feature vector with time and frequency domain variables. 
>- Its activity label. 
>- An identifier of the subject who carried out the experiment."

The following files are used in this project:
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.  

A complete description of all files can be found in the 'README.txt' file, and the description of the features in the "features_info.txt" file.

The data avaible at: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Transformations
1. Merges the measurements, subjects and activities data for the training and the test sets.
2. Merges the training and the test sets to create one data set.
3. Labels the data set with variable names.
4. Extracts only the measurements on the mean and standard deviation for each measurement.
5. Change the activity identifies for the activity names.
6. Appropriately labels the data set with descriptive variable names.
7. Creates tidy data set with the average of each variable for each activity and each subject.

## Final Data Set
A tidy data set with the average of the measurements on the 'mean' and 'standard deviation' for each measurement, grouped by subject and activity.

Identifiers:
* `Subject` - The ID of the test subject (from 1 to 30). 
* `Activity` - The type of activity performed: 
   * WALKING
   * WALKING_UPSTAIRS
   * SITTING
   * STANDING
   * LAYING

Measurements:
* `TimeBodyAccelerometerMeanX`                   
* `TimeBodyAccelerometerMeanY`                   
* `TimeBodyAccelerometerMeanZ`                   
* `TimeBodyAccelerometerStdDevX`                 
* `TimeBodyAccelerometerStdDevY`                 
* `TimeBodyAccelerometerStdDevZ`                 
* `TimeGravityAccelerometerMeanX`                
* `TimeGravityAccelerometerMeanY`                
* `TimeGravityAccelerometerMeanZ`                
* `TimeGravityAccelerometerStdDevX`              
* `TimeGravityAccelerometerStdDevY`              
* `TimeGravityAccelerometerStdDevZ`              
* `TimeBodyAccelerometerJerkMeanX`               
* `TimeBodyAccelerometerJerkMeanY`               
* `TimeBodyAccelerometerJerkMeanZ`               
* `TimeBodyAccelerometerJerkStdDevX`             
* `TimeBodyAccelerometerJerkStdDevY`             
* `TimeBodyAccelerometerJerkStdDevZ`             
* `TimeBodyGyroscopeMeanX`                       
* `TimeBodyGyroscopeMeanY`                       
* `TimeBodyGyroscopeMeanZ`                       
* `TimeBodyGyroscopeStdDevX`                     
* `TimeBodyGyroscopeStdDevY`                     
* `TimeBodyGyroscopeStdDevZ`                     
* `TimeBodyGyroscopeJerkMeanX`                   
* `TimeBodyGyroscopeJerkMeanY`                   
* `TimeBodyGyroscopeJerkMeanZ`                   
* `TimeBodyGyroscopeJerkStdDevX`                 
* `TimeBodyGyroscopeJerkStdDevY`                 
* `TimeBodyGyroscopeJerkStdDevZ`                 
* `TimeBodyAccelerometerMagnitudeMean`           
* `TimeBodyAccelerometerMagnitudeStdDev`         
* `TimeGravityAccelerometerMagnitudeMean`        
* `TimeGravityAccelerometerMagnitudeStdDev`      
* `TimeBodyAccelerometerJerkMagnitudeMean`       
* `TimeBodyAccelerometerJerkMagnitudeStdDev`     
* `TimeBodyGyroscopeMagnitudeMean`               
* `TimeBodyGyroscopeMagnitudeStdDev`             
* `TimeBodyGyroscopeJerkMagnitudeMean`           
* `TimeBodyGyroscopeJerkMagnitudeStdDev`         
* `FrequencyBodyAccelerometerMeanX`              
* `FrequencyBodyAccelerometerMeanY`              
* `FrequencyBodyAccelerometerMeanZ`              
* `FrequencyBodyAccelerometerStdDevX`            
* `FrequencyBodyAccelerometerStdDevY`            
* `FrequencyBodyAccelerometerStdDevZ`            
* `FrequencyBodyAccelerometerJerkMeanX`          
* `FrequencyBodyAccelerometerJerkMeanY`          
* `FrequencyBodyAccelerometerJerkMeanZ`          
* `FrequencyBodyAccelerometerJerkStdDevX`        
* `FrequencyBodyAccelerometerJerkStdDevY`        
* `FrequencyBodyAccelerometerJerkStdDevZ`        
* `FrequencyBodyGyroscopeMeanX`                  
* `FrequencyBodyGyroscopeMeanY`                  
* `FrequencyBodyGyroscopeMeanZ`                  
* `FrequencyBodyGyroscopeStdDevX`                
* `FrequencyBodyGyroscopeStdDevY`                
* `FrequencyBodyGyroscopeStdDevZ`                
* `FrequencyBodyAccelerometerMagnitudeMean`      
* `FrequencyBodyAccelerometerMagnitudeStdDev`    
* `FrequencyBodyAccelerometerJerkMagnitudeMean`  
* `FrequencyBodyAccelerometerJerkMagnitudeStdDev`
* `FrequencyBodyGyroscopeMagnitudeMean`          
* `FrequencyBodyGyroscopeMagnitudeStdDev`        
* `FrequencyBodyGyroscopeJerkMagnitudeMean`      
* `FrequencyBodyGyroscopeJerkMagnitudeStdDev`   




 