# CodeBook for Getting and Cleaning Data Week 4 Project

## Study Design

Raw Data downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip on December 29th, 2016.

Data provided by UCI Machine Learning Repository - http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Raw values are extracted from 'train/X_train.txt', 'train/y_train.txt', and 'train/subject_train.txt" and combined into data set. Data set columns labeled by data within 'features.txt'. 

Similarly, raw values are extracted from 'test/X_test.txt', 'test/y_test.txt', and 'test/subject_test.txt" and combined into data set.Data set columns labeled by data within 'features.txt'. 

Testing and Training data set rows are then combined into one data large data set.

Combined data set is subset to only include variables subject, activity, and data for mean and standard deviation.

Subset data set column names relabeled to meet tidy data specifications.

Tidy data set data averaged by subject and activity, with columns names appended to indicate average values.

## Raw Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


## Variable Details

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeaccelorometer-XYZ and timegyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timebodyaccelorometer-XYZ and timegravityaccelorometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timebodyaccelorometerjerk-XYZ and timebodygyroscopejerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timebodyaccelorometermagnitude, timegravityaccelorometermagnitude, timebodyaccelorometerJerkmagnitude, timebodygyroscopemagnitude, timebodygyroscopeJerkmagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencybodyaccelorometer-XYZ, frequencybodyaccelorometerjerk-XYZ, frequencybodygyroscope-XYZ, frequencybodyaccelorometerjerkmagnitude, frequencybodygyroscopemagnitude, frequencybodygyroscopejerkmagnitude.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

mean: Mean value
standarddeviation: Standard deviation

and then each observation for each subject per activity was averaged. This gives use the following variables:

"subject"
"activity"                                                       
"timebodyaccelerometermean-X"
"averagetimebodyaccelerometermean-Y"                             
"averagetimebodyaccelerometermean-Z"
"averagetimebodyaccelerometerstandarddeviation-X"                
"averagetimebodyaccelerometerstandarddeviation-Y"
"averagetimebodyaccelerometerstandarddeviation-Z"                
"averagetimegravityaccelerometermean-X"
"averagetimegravityaccelerometermean-Y"                          
"averagetimegravityaccelerometermean-Z"
"averagetimegravityaccelerometerstandarddeviation-X"             
"averagetimegravityaccelerometerstandarddeviation-Y"
"averagetimegravityaccelerometerstandarddeviation-Z"             
"averagetimebodyaccelerometerjerkmean-X"
"averagetimebodyaccelerometerjerkmean-Y"                         
"averagetimebodyaccelerometerjerkmean-Z"
"averagetimebodyaccelerometerjerkstandarddeviation-X"            
"averagetimebodyaccelerometerjerkstandarddeviation-Y"
"averagetimebodyaccelerometerjerkstandarddeviation-Z"            
"averagetimebodygyroscopemean-X"
"averagetimebodygyroscopemean-Y"                                 
"averagetimebodygyroscopemean-Z"
"averagetimebodygyroscopestandarddeviation-X"                    
"averagetimebodygyroscopestandarddeviation-Y"
"averagetimebodygyroscopestandarddeviation-Z"                    
"averagetimebodygyroscopejerkmean-X"
"averagetimebodygyroscopejerkmean-Y"                             
"averagetimebodygyroscopejerkmean-Z"
"averagetimebodygyroscopejerkstandarddeviation-X"                
"averagetimebodygyroscopejerkstandarddeviation-Y"
"averagetimebodygyroscopejerkstandarddeviation-Z"                
"averagetimebodyaccelerometermeanmagnitude"
"averagetimebodyaccelerometerstandarddeviationmagnitude"         
"averagetimegravityaccelerometermeanmagnitude"
"averagetimegravityaccelerometerstandarddeviationmagnitude"      
"averagetimebodyaccelerometerjerkmeanmagnitude"
"averagetimebodyaccelerometerjerkstandarddeviationmagnitude"     
"averagetimebodygyroscopemeanmagnitude"
"averagetimebodygyroscopestandarddeviationmagnitude"             
"averagetimebodygyroscopejerkmeanmagnitude"
"averagetimebodygyroscopejerkstandarddeviationmagnitude"         
"averagefrequencybodyaccelerometermean-X"
"averagefrequencybodyaccelerometermean-Y"                        
"averagefrequencybodyaccelerometermean-Z"
"averagefrequencybodyaccelerometerstandarddeviation-X"           
"averagefrequencybodyaccelerometerstandarddeviation-Y"
"averagefrequencybodyaccelerometerstandarddeviation-Z"           
"averagefrequencybodyaccelerometerjerkmean-X"
"averagefrequencybodyaccelerometerjerkmean-Y"                    
"averagefrequencybodyaccelerometerjerkmean-Z"
"averagefrequencybodyaccelerometerjerkstandarddeviation-X"       
"averagefrequencybodyaccelerometerjerkstandarddeviation-Y"
"averagefrequencybodyaccelerometerjerkstandarddeviation-Z"       
"averagefrequencybodygyroscopemean-X"
"averagefrequencybodygyroscopemean-Y"                            
"averagefrequencybodygyroscopemean-Z"
"averagefrequencybodygyroscopestandarddeviation-X"               
"averagefrequencybodygyroscopestandarddeviation-Y"
"averagefrequencybodygyroscopestandarddeviation-Z"               
"averagefrequencybodyaccelerometermeanmagnitude"
"averagefrequencybodyaccelerometerstandarddeviationmagnitude"    
"averagefrequencybodyaccelerometerjerkmeanmagnitude"
"averagefrequencybodyaccelerometerjerkstandarddeviationmagnitude"
"averagefrequencybodygyroscopemeanmagnitude"
"averagefrequencybodygyroscopestandarddeviationmagnitude"        
"averagefrequencybodygyroscopejerkmeanmagnitude"
"averagefrequencybodygyroscopejerkstandarddeviationmagnitude"

Note: More details about original variables information may be seen in the raw data files - "features_info.txt" and "README.txt"