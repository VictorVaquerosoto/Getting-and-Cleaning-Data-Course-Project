##Load the librariess:
library(tidyr)
library(dplyr)

##Check if the directory exists, if nor we create it:
if(!file.exists("./data")){dir.create("./data")}
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

##Check if we have already downloaded the zip file, if not we do it:
if (!file.exists("./data/file.zip")) { 
  download.file(url, destfile ="./data/file.zip",method="curl")
}

##Check if we have already unzipped the zip file, if not we do it:
if (!file.exists("./data/UCI HAR Dataset")) { 
  unzip(zipfile = "./data/file.zip", exdir = "./data")
}

## We read the features and the activities numbers:
features<-read.table("./data/UCI HAR Dataset/features.txt",header=FALSE,sep="", col.names = c("n","functions"))
activities <- read.table("./data/UCI HAR Dataset/activity_labels.txt",header=FALSE,sep="", col.names = c("activity", "activityname"))
## we read the training and the test sets
x_test<-read.table("./data/UCI HAR Dataset/test/X_test.txt",header=FALSE,sep="", col.names = features$functions)
x_train<-read.table("./data/UCI HAR Dataset/train/X_train.txt",header=FALSE,sep="", col.names = features$functions)
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt",header=FALSE,sep="", col.names = "activity")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt",header=FALSE,sep="", col.names = "activity")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt",header=FALSE,sep="", col.names = "subject")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt",header=FALSE,sep="", col.names = "subject")

##Merging the training and the test sets to create one data set called datamerged:
x_tot<-rbind(x_train,x_test)
y_tot<-rbind(y_train,y_test)
subject_tot<-rbind(subject_train,subject_test)
datamerged<-cbind(subject_tot,y_tot,x_tot)
##We extract only the measurements on the mean and standard deviation for each measurement:
datatidy <- datamerged %>% select(subject, activity, contains("mean"), contains("std"))
##We use descriptive activity names to name the activities in the data set:
datatidy$activity <- activities[datatidy$activity, 2]
##We label the data set with descriptive variable names: 
names(datatidy)<-gsub("Acc", "Accelerometer", names(datatidy))
names(datatidy)<-gsub("Gyro", "Gyroscope", names(datatidy))
names(datatidy)<-gsub("BodyBody", "Body", names(datatidy))
names(datatidy)<-gsub("Mag", "Magnitude", names(datatidy))
names(datatidy)<-gsub("^t", "Time", names(datatidy))
names(datatidy)<-gsub("^f", "Frequency", names(datatidy))
names(datatidy)<-gsub("tBody", "TimeBody", names(datatidy))
names(datatidy)<-gsub("-mean()", "Mean", names(datatidy), ignore.case = TRUE)
names(datatidy)<-gsub("-std()", "STD", names(datatidy), ignore.case = TRUE)
names(datatidy)<-gsub("-freq()", "Frequency", names(datatidy), ignore.case = TRUE)
names(datatidy)<-gsub("angle", "Angle", names(datatidy))
names(datatidy)<-gsub("gravity", "Gravity", names(datatidy))
names(datatidy)<-gsub("\\.\\.\\.", "-", names(datatidy))
names(datatidy)<-gsub("\\.\\.", "", names(datatidy))
##We create a second, independent tidy data set with the average of each variable for each activity and each subject:
FinalData <- datatidy %>%
  group_by(subject, activity) %>%
  summarise_all(funs(mean))
##We create a txt file with the independent tidy data set called "tidy.txt":
write.table(FinalData, "tidy.txt", row.names = FALSE)
