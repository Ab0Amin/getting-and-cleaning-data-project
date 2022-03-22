library(dplyr)
#dowenload zip files
filename <- "Coursera_DS3_Final.zip"
if (!file.exists(filename)){
      fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
      download.file(fileURL, filename, method="curl")
}  
#extract file
unzip(filename) 

      #read txt files 
      features <- fread("UCI HAR Dataset/features.txt", col.names = c("n","functions"))
      activities <- fread("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))
      subject_test <- fread("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
      
      y_test <- fread("UCI HAR Dataset/test/y_test.txt", col.names = "code")
      subject_train <- fread("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
      y_train <- fread("UCI HAR Dataset/train/y_train.txt", col.names = "code")
      #read x_table and merge it with function
      x_train <- fread("UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
      x_test <- fread("UCI HAR Dataset/test/X_test.txt", col.names = features$functions)