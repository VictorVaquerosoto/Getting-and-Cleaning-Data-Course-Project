### CodeBook

The original data is taken from [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

This code book describes the variables of the data fields in the "tidy.txt" file. The steps carried out to produce 
the tidy.txt file are explained in detail in the README.md file. In summary:

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Description of the variables:

#### Identifiers:

* subject: The identification number of the subject
* activity: It corresponds to the descriptive activity names based on:
> 1 WALKING

> 2 WALKING_UPSTAIRS

> 3 WALKING_DOWNSTAIRS

> 4 SITTING

> 5 STANDING

> 6 LAYING

#### Experimental measurements:

* TimeBodyAccelerometer.mean.X              
* TimeBodyAccelerometer.mean.Y                    
* TimeBodyAccelerometer.mean.Z                 
* TimeGravityAccelerometer.mean.X                 
* TimeGravityAccelerometer.mean.Y                 
* TimeGravityAccelerometer.mean.Z                 
* TimeBodyAccelerometerJerk.mean.X                 
* TimeBodyAccelerometerJerk.mean.Y                
* TimeBodyAccelerometerJerk.mean.Z                 
* TimeBodyGyroscope.mean.X                       
* TimeBodyGyroscope.mean.Y                         
* TimeBodyGyroscope.mean.Z                        
* TimeBodyGyroscopeJerk.mean.X                     
* TimeBodyGyroscopeJerk.mean.Y                    
* TimeBodyGyroscopeJerk.mean.Z                     
* TimeBodyAccelerometerMagnitude.mean             
* TimeGravityAccelerometerMagnitude.mean           
* TimeBodyAccelerometerJerkMagnitude.mean         
* TimeBodyGyroscopeMagnitude.mean                  
* TimeBodyGyroscopeJerkMagnitude.mean             
* FrequencyBodyAccelerometer.mean.X                
* FrequencyBodyAccelerometer.mean.Y               
* FrequencyBodyAccelerometer.mean.Z                
* FrequencyBodyAccelerometer.meanFreq.X           
* FrequencyBodyAccelerometer.meanFreq.Y            
* FrequencyBodyAccelerometer.meanFreq.Z           
* FrequencyBodyAccelerometerJerk.mean.X            
* FrequencyBodyAccelerometerJerk.mean.Y           
* FrequencyBodyAccelerometerJerk.mean.Z            
* FrequencyBodyAccelerometerJerk.meanFreq.X       
* FrequencyBodyAccelerometerJerk.meanFreq.Y        
* FrequencyBodyAccelerometerJerk.meanFreq.Z       
* FrequencyBodyGyroscope.mean.X                   
* FrequencyBodyGyroscope.mean.Y                   
* FrequencyBodyGyroscope.mean.Z                    
* FrequencyBodyGyroscope.meanFreq.X               
* FrequencyBodyGyroscope.meanFreq.Y                
* FrequencyBodyGyroscope.meanFreq.Z               
* FrequencyBodyAccelerometerMagnitude.mean         
* FrequencyBodyAccelerometerMagnitude.meanFreq    
* FrequencyBodyAccelerometerJerkMagnitude.mean     
* FrequencyBodyAccelerometerJerkMagnitude.meanFreq
* FrequencyBodyGyroscopeMagnitude.mean            
* FrequencyBodyGyroscopeMagnitude.meanFreq        
* FrequencyBodyGyroscopeJerkMagnitude.mean        
* FrequencyBodyGyroscopeJerkMagnitude.meanFreq    
* Angle.TimeBodyAccelerometerMean.Gravity.         
* Angle.TimeBodyAccelerometerJerkMeanGravityMean. 
* Angle.TimeBodyGyroscopeMean.GravityMean.        
* Angle.TimeBodyGyroscopeJerkMean.GravityMean.    
* Angle.X.GravityMean.                             
* Angle.Y.GravityMean.                            
* Angle.Z.GravityMean.                            
* TimeBodyAccelerometer.std.X                     
* TimeBodyAccelerometer.std.Y                      
* TimeBodyAccelerometer.std.Z                     
* TimeGravityAccelerometer.std.X                   
* TimeGravityAccelerometer.std.Y                  
* TimeGravityAccelerometer.std.Z                   
* TimeBodyAccelerometerJerk.std.X                 
* TimeBodyAccelerometerJerk.std.Y                  
* TimeBodyAccelerometerJerk.std.Z                 
* TimeBodyGyroscope.std.X                         
* TimeBodyGyroscope.std.Y                         
* TimeBodyGyroscope.std.Z                          
* TimeBodyGyroscopeJerk.std.X                     
* TimeBodyGyroscopeJerk.std.Y                      
* TimeBodyGyroscopeJerk.std.Z                     
* TimeBodyAccelerometerMagnitude.std               
* TimeGravityAccelerometerMagnitude.std           
* TimeBodyAccelerometerJerkMagnitude.std           
* TimeBodyGyroscopeMagnitude.std                  
* TimeBodyGyroscopeJerkMagnitude.std               
* FrequencyBodyAccelerometer.std.X                
* FrequencyBodyAccelerometer.std.Y                
* FrequencyBodyAccelerometer.std.Z                
* FrequencyBodyAccelerometerJerk.std.X            
* FrequencyBodyAccelerometerJerk.std.Y            
* FrequencyBodyAccelerometerJerk.std.Z             
* FrequencyBodyGyroscope.std.X                    
* FrequencyBodyGyroscope.std.Y                     
* FrequencyBodyGyroscope.std.Z                    
* FrequencyBodyAccelerometerMagnitude.std          
* FrequencyBodyAccelerometerJerkMagnitude.std     
* FrequencyBodyGyroscopeMagnitude.std             
* FrequencyBodyGyroscopeJerkMagnitude.std

The orginal variables names were modified in order to use descriptive variable names:

- mean refers that the measurement is a mean in the original dataset and std indicates that the measuremen
is a standard deviation in the original dataset.

- X,Y,Z indicates that measurement was taken along the "X","Y","Z"" dimension of the phone, respectively.



