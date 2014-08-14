GCD-Project
===========

Overview
-------------
This repository includes the project files proposed in the "Getting and Cleaning Data" course from Coursera, with the following instructions:

You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive activity names.
Creates a second, independent tidy data set with the average of each variable for each activity and each subject.


run_analysis.R
---------
This script reads the UCI HAR Dataset files (located in the workspace) and prepares a clean and tidy dataset with the  average for each activity and each subject of some selected variables.


Running the script 
---------
This script requires the UCI HAR Dataset to be located in the workspace. With source("run_analysis.R") the analysis is performed, creating a clean data and storing it in the file "clean_data.txt".

Codebook
--------
The clean_data set is made up of 81 columns.

Column 1: "Activity" stands for the activity labeled in the dataset. There are six possible options:
 "LAYING", "SITTING", "STANDING","WALKING","WALKING_DOWNSTAIRS","WALKING_UPSTAIRS".
 
Column 2: "Subject" stands for the subject whose data is referred in the observation. There are 30 subjects labeled from 1 to 30.

Column 3-81 present the average of the values of selected variablees in all the samples of the dataset for each activity and each subject. The selected variables are those in the UCI HAR Dataset referring to the mean or std of the following values. Please refer to the readme.txt in the UCI HAR Dataset for a longer description of how each of the variables is calculated.

 Col 3: "tBodyAcc-mean()-X"              
 Col 4: "tBodyAcc-mean()-Y"              
 Col 5: "tBodyAcc-mean()-Z"              
 Col 6: "tBodyAcc-std()-X"               
 Col 7: "tBodyAcc-std()-Y"               
 Col 8: "tBodyAcc-std()-Z"               
 Col 9: "tGravityAcc-mean()-X"           
 Col 10: "tGravityAcc-mean()-Y"           
 Col 11: "tGravityAcc-mean()-Z"           
 Col 12: "tGravityAcc-std()-X"            
 Col 13: "tGravityAcc-std()-Y"            
 Col 14: "tGravityAcc-std()-Z"            
 Col 15: "tBodyAccJerk-mean()-X"          
 Col 16: "tBodyAccJerk-mean()-Y"          
 Col 17: "tBodyAccJerk-mean()-Z"          
 Col 18: "tBodyAccJerk-std()-X"           
 Col 19: "tBodyAccJerk-std()-Y"           
 Col 20: "tBodyAccJerk-std()-Z"           
 Col 21: "tBodyGyro-mean()-X"             
 Col 22: "tBodyGyro-mean()-Y"             
Col 23: "tBodyGyro-mean()-Z"             
Col 24: "tBodyGyro-std()-X"              
Col 25: "tBodyGyro-std()-Y"              
Col 26: "tBodyGyro-std()-Z"              
Col 27: "tBodyGyroJerk-mean()-X"         
Col 28: "tBodyGyroJerk-mean()-Y"         
Col 29: "tBodyGyroJerk-mean()-Z"         
Col 30: "tBodyGyroJerk-std()-X"          
Col 31: "tBodyGyroJerk-std()-Y"          
Col 32: "tBodyGyroJerk-std()-Z"          
Col 33: "tBodyAccMag-mean()"             
Col 34: "tBodyAccMag-std()"              
Col 35: "tGravityAccMag-mean()"          
Col 36: "tGravityAccMag-std()"           
Col 37: "tBodyAccJerkMag-mean()"         
Col 38: "tBodyAccJerkMag-std()"          
Col 39: "tBodyGyroMag-mean()"            
Col 40: "tBodyGyroMag-std()"             
Col 41: "tBodyGyroJerkMag-mean()"        
Col 42: "tBodyGyroJerkMag-std()"         
Col 43: "fBodyAcc-mean()-X"              
Col 44: "fBodyAcc-mean()-Y"              
Col 45: "fBodyAcc-mean()-Z"              
Col 46: "fBodyAcc-std()-X"               
Col 47: "fBodyAcc-std()-Y"               
Col 48: "fBodyAcc-std()-Z"               
Col 49: "fBodyAcc-meanFreq()-X"          
Col 50: "fBodyAcc-meanFreq()-Y"          
Col 51: "fBodyAcc-meanFreq()-Z"          
Col 52: "fBodyAccJerk-mean()-X"          
Col 53: "fBodyAccJerk-mean()-Y"          
Col 54: "fBodyAccJerk-mean()-Z"          
Col 55: "fBodyAccJerk-std()-X"           
Col 56: "fBodyAccJerk-std()-Y"           
Col 57: "fBodyAccJerk-std()-Z"           
Col 58: "fBodyAccJerk-meanFreq()-X"      
Col 59: "fBodyAccJerk-meanFreq()-Y"      
Col 60: "fBodyAccJerk-meanFreq()-Z"      
Col 61: "fBodyGyro-mean()-X"             
Col 62: "fBodyGyro-mean()-Y"             
Col 63: "fBodyGyro-mean()-Z"             
Col 64: "fBodyGyro-std()-X"              
Col 65: "fBodyGyro-std()-Y"              
Col 66: "fBodyGyro-std()-Z"              
Col 67: "fBodyGyro-meanFreq()-X"         
Col 68: "fBodyGyro-meanFreq()-Y"         
Col 69: "fBodyGyro-meanFreq()-Z"         
Col 70: "fBodyAccMag-mean()"             
Col 71: "fBodyAccMag-std()"              
Col 72: "fBodyAccMag-meanFreq()"         
Col 73: "fBodyBodyAccJerkMag-mean()"     
Col 74: "fBodyBodyAccJerkMag-std()"      
Col 75: "fBodyBodyAccJerkMag-meanFreq()" 
Col 76: "fBodyBodyGyroMag-mean()"        
Col 77: "fBodyBodyGyroMag-std()"         
Col 78: "fBodyBodyGyroMag-meanFreq()"    
Col 79: "fBodyBodyGyroJerkMag-mean()"    
Col 80: "fBodyBodyGyroJerkMag-std()"     
Col 81: "fBodyBodyGyroJerkMag-meanFreq()"



 
