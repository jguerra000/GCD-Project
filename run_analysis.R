#Solution to the project of Getting and Cleaning data subject

#Read Train data
X_train_data <- read.table("./UCI HAR Dataset//train//X_train.txt")
Y_train_data <- read.table("./UCI HAR Dataset//train//y_train.txt")
Subject_train_data <- read.table("./UCI HAR Dataset/train/subject_train.txt")

#Read Test data
X_test_data <- read.table("./UCI HAR Dataset//test//X_test.txt")
Y_test_data <- read.table("./UCI HAR Dataset//test//y_test.txt")
Subject_test_data <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## Put all train data together
train_data <- cbind(Y_train_data, Subject_train_data, X_train_data)

## Put all test data together
test_data <- cbind(Y_test_data, Subject_test_data, X_test_data)

## Put train and test data together
all_data <- rbind (train_data, test_data)

## Select features of mean or std
features_data <- read.table("./UCI HAR Dataset//features.txt")
features_selected <- features_data[grepl( "mean()", features_data[,2]) | grepl( "std()", features_data[,2]),]

##Extract only the selected features data
all_selected_data <- all_data[,c(1,2, 2 +features_selected[,1])]

## Translate code of activities by their name
all_selected_data[(all_selected_data[,1] == 1),1] <- "WALKING"
all_selected_data[(all_selected_data[,1] == 2),1] <- "WALKING_UPSTAIRS"
all_selected_data[(all_selected_data[,1] == 3),1] <- "WALKING_DOWNSTAIRS"
all_selected_data[(all_selected_data[,1] == 4),1] <- "SITTING"
all_selected_data[(all_selected_data[,1] == 5),1] <- "STANDING"
all_selected_data[(all_selected_data[,1] == 6),1] <- "LAYING"

# Appropriately labels the data set with descriptive variable names.
# Using the names included in features.txt
colnames(all_selected_data) <- c("Activity", "Subject", as.character(features_selected[,2]))

# Creates a second, independent tidy data set with the average of each variable 
# for each activity and each subject. 
melted_data <- melt(all_selected_data, id = c("Activity", "Subject"))
clean_data <- dcast(melted_data, Activity + Subject ~ variable, mean)
write.table(clean_data, file = "./clean_data.txt", row.names = FALSE)
clean_data


