### Getting and Cleaning Data Course Project

This project is to demonstrate the ability to collect, work with, and clean a data set.
For that there is a script called "run_analysis.R" which does the following: 

1.  Loads the libraries needed to collect, work with, and clean a data set
2.  Checks if the data directory exists, if not it will be created 
3.  Checks if we have already downloaded the zip file, if not it will be downloaded from the url
4.  Checks if the zip file has been already unzipped, if not we do it
5.  Loads the activity and feature info assigning column names
6.  Loads the training and the test sets assigning column names
7.  Merges the training and the test sets to create one data set called datamerged
8.  Extracts only the measurements on the mean and standard deviation for each measurement
9.  Assigns descriptive activity names to name the activities in the data set
10. Labels the data set with descriptive variable names
11. Creates a second, independent tidy data set with the average of each variable for each activity and each subject
12. Creates a txt file with the independent tidy data set set called "tidy.txt"

