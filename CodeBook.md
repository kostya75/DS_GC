##Getting and Cleaning data course project


#DATA DICTIONARY - HUMAN ACTIVITY RECOGNITION

##SUBJECT AND ACTIVITY LABELS

 - Activity - LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
 - Subject - Numeric Label between 1 and 30 denoting 30 experiment participants


##MEASUREMENTS (All values are the means by activity and subject for each of the measurements below)

variables with the prefix 't' are t domain measures for each of Body Acceleration and 
Gravity Acceleration with Jerk and Magnitude calculations. X,Y,Z suffixes label the direction 
of the measurement

variables with the prefix 'f' are the FAST FOURIER TRANSFORMS for each of Body Acceleration and 
Gravity Acceleration with Jerk and Magnitude calculations. X,Y,Z suffixes label the direction 
of the measurement

For details see
features_info.txt, original experiment data can be found at:

 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


 - tBodyAcceleration_meanX  
 - tBodyAcceleration_meanY  
 - tBodyAcceleration_meanZ  

 - tGravityAcceleration_meanX 
 - tGravityAcceleration_meanY 
 - tGravityAcceleration_meanZ 

 - tBodyAccelerationJerk_meanX 
 - tBodyAccelerationJerk_meanY
 - tBodyAccelerationJerk_meanZ

 - tBodyGyroscope_meanX
 - tBodyGyroscope_meanY
 - tBodyGyroscope_meanZ

 - tBodyGyroscopeJerk_meanX
 - tBodyGyroscopeJerk_meanY
 - tBodyGyroscopeJerk_meanZ

 - tBodyAccelerationMagnitude_mean
 - tGravityAccelerationMagnitude_mean
 - tBodyAccelerationJerkMagnitude_mean
 - tBodyGyroscopeMagnitude_mean
 - tBodyGyroscopeJerkMagnitude_mean

 - fBodyAcceleration_meanX
 - fBodyAcceleration_meanY
 - fBodyAcceleration_meanZ

 - fBodyAccelerationJerk_meanX
 - fBodyAccelerationJerk_meanY
 - fBodyAccelerationJerk_meanZ

 - fBodyGyroscope_meanX
 - fBodyGyroscope_meanY
 - fBodyGyroscope_meanZ

 - fBodyAccelerationMagnitude_mean
 - fBodyAccelerationJerkMagnitude_mean
 - fBodyGyroscopeMagnitude_mean
 - fBodyGyroscopeJerkMagnitude_mean

 - tBodyAcceleration_sdevX
 - tBodyAcceleration_sdevY
 - tBodyAcceleration_sdevZ

 - tGravityAcceleration_sdevX
 - tGravityAcceleration_sdevY
 - tGravityAcceleration_sdevZ

 - tBodyAccelerationJerk_sdevX
 - tBodyAccelerationJerk_sdevY
 - tBodyAccelerationJerk_sdevZ

 - tBodyGyroscope_sdevX
 - tBodyGyroscope_sdevY
 - tBodyGyroscope_sdevZ

 - tBodyGyroscopeJerk_sdevX
 - tBodyGyroscopeJerk_sdevY
 - tBodyGyroscopeJerk_sdevZ

 - tBodyAccelerationMagnitude_sdev
 - tGravityAccelerationMagnitude_sdev
 - tBodyAccelerationJerkMagnitude_sdev
 - tBodyGyroscopeMagnitude_sdev
 - tBodyGyroscopeJerkMagnitude_sdev

 - fBodyAcceleration_sdevX
 - fBodyAcceleration_sdevY
 - fBodyAcceleration_sdevZ

 - fBodyAccelerationJerk_sdevX
 - fBodyAccelerationJerk_sdevY
 - fBodyAccelerationJerk_sdevZ

 - fBodyGyroscope_sdevX
 - fBodyGyroscope_sdevY
 - fBodyGyroscope_sdevZ

 - fBodyAccelerationMagnitude_sdev
 - fBodyAccelerationJerkMagnitude_sdev
 - fBodyGyroscopeMagnitude_sdev
 - fBodyGyroscopeJerkMagnitude_sdev

