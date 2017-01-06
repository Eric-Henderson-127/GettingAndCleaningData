# README for Getting and Cleaning Data Week 4 Project 

Note: Included R script written and tested in RStudio v1.0.44(OS: Windows 10) and requires the tidyr and dplyr packages

### run_analysis.R

This file contains the code to load the raw data files, construct the raw data set, combine raw data, subset the combined raw data set, convert raw data to a tidy data format (conversion of column labels to properly descriptive labels), and to average tidy data set observations.

## To recreate the project data

1. Ensure that the tidyr and dlypr packages are installed
1. First extract the raw data from getdata_projectfiles_UCI HAR Dataset.zip file
1. Set the working directory of the R program that will be running the script to the "UCI HAR Dataset" folder within the extracted raw data
1. Run run_analysis.R script

See CodeBook.md for details on data

Note: Tidy data set will be returned as a data frame named tidy.data

-----------------------------------------------------------

## Dataset includes the following files:

- 'README.md'
- 'CodeBook.md': Information regarding data set and each variable
- 'run_analysis.R': Script to convert raw data to project data
- 'getdata_projectfiles_UCI HAR Dataset.zip': Raw data

## Raw Data Set (getdata_projectfiles_UCI HAR Dataset.zip) includes the following files:

- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.