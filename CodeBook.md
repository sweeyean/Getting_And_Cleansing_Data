##Human Activity Recognition Using Smartphones Data Set
 
###Source:

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory 
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws

###Data Set Information:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. This tidy dataset was transfromed from the obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data, which extracts only the measurements on the mean and standard deviation for each measurement.  

###Variables
 .activity_class :  the activity that the subject was doing at the time of the measurement. Integer Values: 1 : 6                       
 .activity_name : Descriptive name of each subject's activity class. Factor values: (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)                      
 .subject_id : 1 to 30 each representing a participant in the study.Integer Values: 1 : 30

### Measurements
 Extracts only the measurements on the mean and standard deviation for each measurement.  
 mean() : mean values of multiple measurements of the original variables. Type: Real number
 std(): Standard deviation of multiple measurements of the original variables. Type: Real number                
 .tBodyAcc-mean()-X                   
 .tBodyAcc-mean()-Y                    
 .tBodyAcc-mean()-Z                   
 .tGravityAcc-mean()-X                 
 .tGravityAcc-mean()-Y                 
 .tGravityAcc-mean()-Z                
 .tBodyAccJerk-mean()-X                
 .tBodyAccJerk-mean()-Y                
 .tBodyAccJerk-mean()-Z               
 .tBodyGyro-mean()-X                   
 .tBodyGyro-mean()-Y                   
 .tBodyGyro-mean()-Z                  
 .tBodyGyroJerk-mean()-X               
 .tBodyGyroJerk-mean()-Y               
 .tBodyGyroJerk-mean()-Z              
 .tBodyAccMag-mean()                   
 .tGravityAccMag-mean()                
 .tBodyAccJerkMag-mean()              
 .tBodyGyroMag-mean()                  
 .tBodyGyroJerkMag-mean()              
 .fBodyAcc-mean()-X                   
 .fBodyAcc-mean()-Y                    
 .fBodyAcc-mean()-Z                    
 .fBodyAcc-meanFreq()-X               
 .fBodyAcc-meanFreq()-Y                
 .fBodyAcc-meanFreq()-Z                
 .fBodyAccJerk-mean()-X               
 .fBodyAccJerk-mean()-Y                
 .fBodyAccJerk-mean()-Z                
 .fBodyAccJerk-meanFreq()-X           
 .fBodyAccJerk-meanFreq()-Y            
 .fBodyAccJerk-meanFreq()-Z            
 .fBodyGyro-mean()-X                  
 .fBodyGyro-mean()-Y                   
 .fBodyGyro-mean()-Z                   
 .fBodyGyro-meanFreq()-X              
 .fBodyGyro-meanFreq()-Y               
 .fBodyGyro-meanFreq()-Z               
 .fBodyAccMag-mean()                  
 .fBodyAccMag-meanFreq()               
 .fBodyBodyAccJerkMag-mean()           
 .fBodyBodyAccJerkMag-meanFreq()      
 .fBodyBodyGyroMag-mean()              
 .fBodyBodyGyroMag-meanFreq()          
 .fBodyBodyGyroJerkMag-mean()         
 .fBodyBodyGyroJerkMag-meanFreq()      
 .angle(tBodyAccMean,gravity)          
 .angle(tBodyAccJerkMean),gravityMean)  
 .angle(tBodyGyroMean,gravityMean)  
 .angle(tBodyGyroJerkMean,gravityMean)  
 .angle(X,gravityMean)                
 .angle(Y,gravityMean)                 
 .angle(Z,gravityMean)                 
 .tBodyAcc-std()-X                    
 .tBodyAcc-std()-Y                     
 .tBodyAcc-std()-Z                     
 .tGravityAcc-std()-X                 
 .tGravityAcc-std()-Y                  
 .tGravityAcc-std()-Z                  
 .tBodyAccJerk-std()-X                
 .tBodyAccJerk-std()-Y                 
 .tBodyAccJerk-std()-Z                 
 .tBodyGyro-std()-X                   
 .tBodyGyro-std()-Y                    
 .tBodyGyro-std()-Z                    
 .tBodyGyroJerk-std()-X               
 .tBodyGyroJerk-std()-Y                
 .tBodyGyroJerk-std()-Z                
 .tBodyAccMag-std()                   
 .tGravityAccMag-std()                 
 .tBodyAccJerkMag-std()                
 .tBodyGyroMag-std()                  
 .tBodyGyroJerkMag-std()               
 .fBodyAcc-std()-X                     
 .fBodyAcc-std()-Y                    
 .fBodyAcc-std()-Z                     
 .fBodyAccJerk-std()-X                 
 .fBodyAccJerk-std()-Y                
 .fBodyAccJerk-std()-Z                 
 .fBodyGyro-std()-X                    
 .fBodyGyro-std()-Y                   
 .fBodyGyro-std()-Z                    
 .fBodyAccMag-std()                    
 .fBodyBodyAccJerkMag-std()           
 .fBodyBodyGyroMag-std()               
 .fBodyBodyGyroJerkMag-std()  
