# DS_GC

#Summary of Human Activity Smartphone Dataset

The purpose of this project is to summarize the data gathered in the Human Activity Recognition Using Smartphones Dataset Version 1.0 (Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto).

The dataset can be found here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

And a description of the experiment can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

In order for the script to work, the following directory needs to be in your R working
directory:

    - /UCI HAR Datase
    
The list of files that sould be in this directory   
     
     ./
     - features.txt
     - activity_labels.txt
     
     ./Test
     - X_test.txt
     - Y_test.txt
     - subject_test.txt
     
     ./Train
     - X_train.txt
     - Y_train.txt
     - subject_train.txt

Once you extracted all the data, you can run the analysis by typing:

source("run_analysis.R") 



This script will combine training and test data sets from observations of 30 subjects performing six different activities using the accelerometer on a smart phone. 

The script performs the followings steps:
  
   - Reads X, Y and subject for both training and test sets and combines into a single data set
   - Selects only the variables that store mean and standard deviations
   - Group By Activity and Subject and take the mean of each of the variables. Store the final tesults in the dataset "tidy_dataset"
   - Write the 'tidy_res' data to a file called 'means_by_activity_and_subject.txt' in the R working directory.
  

   - run_analysis.R
   - CodeBook.md
   - README.md