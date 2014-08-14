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
Please, read Codebook.MD to see the codebook of the variables in the clean and tidy dataset obtained. 
