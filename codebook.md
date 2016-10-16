#Codebook

##About
This code book describes the data used in JHU Data scientist spezialization Course 4 - Getting and Cleaning Data Course Project.

The original work, on which this work derives can be found from
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The actual original data, which contains the original data code book, can be downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This databook contains information for only the data this project uses! The refer to the original code book, please download the original data.

## Codes for the data file
###subject 
    from the original work files: train/subject_train.txt, test/subject_test.txt
    contains the id of the subject individual, varies between 1 and 30.
    
###activity_name
    from the original work y_test and y_train.
    contains name of activity label that subject was doing when measured.
    (WALKING / WALKING_UPSTAIRS / WALKING_DOWNSTAIRS / SITTING / STANDING / LAYING)
    
###variable
    variable that has been measured, one in
    "tBodyAcc-mean()-X"
    "tBodyAcc-mean()-Y"               
    "tBodyAcc-mean()-Z"               
    "tBodyAcc-std()-X"               
    "tBodyAcc-std()-Y"                
    "tBodyAcc-std()-Z"                
    "tGravityAcc-mean()-X"            
    "tGravityAcc-mean()-Y"           
    "tGravityAcc-mean()-Z"            
    "tGravityAcc-std()-X"             
    "tGravityAcc-std()-Y"             
    "tGravityAcc-std()-Z"            
    "tBodyAccJerk-mean()-X"           
    "tBodyAccJerk-mean()-Y"           
    "tBodyAccJerk-mean()-Z"           
    "tBodyAccJerk-std()-X"           
    "tBodyAccJerk-std()-Y"            
    "tBodyAccJerk-std()-Z"            
    "tBodyGyro-mean()-X"              
    "tBodyGyro-mean()-Y"             
    "tBodyGyro-mean()-Z"              
    "tBodyGyro-std()-X"               
    "tBodyGyro-std()-Y"               
    "tBodyGyro-std()-Z"              
    "tBodyGyroJerk-mean()-X"          
    "tBodyGyroJerk-mean()-Y"          
    "tBodyGyroJerk-mean()-Z"          
    "tBodyGyroJerk-std()-X"          
    "tBodyGyroJerk-std()-Y"           
    "tBodyGyroJerk-std()-Z"           
    "tBodyAccMag-mean()"              
    "tBodyAccMag-std()"              
    "tGravityAccMag-mean()"           
    "tGravityAccMag-std()"            
    "tBodyAccJerkMag-mean()"          
    "tBodyAccJerkMag-std()"          
    "tBodyGyroMag-mean()"             
    "tBodyGyroMag-std()"              
    "tBodyGyroJerkMag-mean()"         
    "tBodyGyroJerkMag-std()"         
    "fBodyAcc-mean()-X"               
    "fBodyAcc-mean()-Y"               
    "fBodyAcc-mean()-Z"               
    "fBodyAcc-std()-X"               
    "fBodyAcc-std()-Y"                
    "fBodyAcc-std()-Z"                
    "fBodyAcc-meanFreq()-X"          
    "fBodyAcc-meanFreq()-Y"          
    "fBodyAcc-meanFreq()-Z"           
    "fBodyAccJerk-mean()-X"           
    "fBodyAccJerk-mean()-Y"           
    "fBodyAccJerk-mean()-Z"          
    "fBodyAccJerk-std()-X"            
    "fBodyAccJerk-std()-Y"            
    "fBodyAccJerk-std()-Z"            
    "fBodyAccJerk-meanFreq()-X"      
    "fBodyAccJerk-meanFreq()-Y"       
    "fBodyAccJerk-meanFreq()-Z"       
    "fBodyGyro-mean()-X"              
    "fBodyGyro-mean()-Y"             
    "fBodyGyro-mean()-Z"              
    "fBodyGyro-std()-X"               
    "fBodyGyro-std()-Y"               
    "fBodyGyro-std()-Z"              
    "fBodyGyro-meanFreq()-X"          
    "fBodyGyro-meanFreq()-Y"          
    "fBodyGyro-meanFreq()-Z"          
    "fBodyAccMag-mean()"             
    "fBodyAccMag-std()"               
    "fBodyAccMag-meanFreq()"          
    "fBodyBodyAccJerkMag-mean()"      
    "fBodyBodyAccJerkMag-std()"      
    "fBodyBodyAccJerkMag-meanFreq()"  
    "fBodyBodyGyroMag-mean()"         
    "fBodyBodyGyroMag-std()"          
    "fBodyBodyGyroMag-meanFreq()"    
    "fBodyBodyGyroJerkMag-mean()"     
    "fBodyBodyGyroJerkMag-std()"      
    "fBodyBodyGyroJerkMag-meanFreq()"
    
avg
    average calculated per subject per activity per variable