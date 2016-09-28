# Getting and Cleaning Data - Tidy Data Assignment

The object of this assignment is to demonstrate how to produce a tidy data set that brings in data from multiple sources.
The original data is from the field of wearable computing and is accelerometer output from a Samsung Galaxy S Smartphone and can be downloaded from here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### This repository contains 2 files:
1. **run_analysis.R** - An R script that reads in the accelerometer data files (keeping only those to do with mean and standard deviation)* and combines them into one initial tidy data file and then produces a second
summary data file with the average of each variable for each activity and each subject.

***NOTE:** I have interpreted this to not include any MeanFreq data so have excluded those columns.
 
2. **CodeBook &#46;md** - A document that details the data and any steps taken to produce the summary tidy data set.

The summary data set will be written to "./summary_data.txt" and can be read with "read.table("summary_data.txt", header = TRUE)"

**NOTE:** In order to run the script successfully it is assumed you have downloaded and unzipped the data to your working directory.
(Data should be contained in folder named "UCI HAR Dataset").