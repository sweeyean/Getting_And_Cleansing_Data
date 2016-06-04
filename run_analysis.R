##You should create one R script called run_analysis.R that does the following.

## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
## 6. create a tidy data set as described above


## set the filename
filename <- "getdata_dataset.zip"

## Download the dataset:
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
    download.file(fileURL, filename, mode="wb")
    }  
    ## unzip the dataset "getdata_dataset.zip and placed them at folder "UCI HAR Dataset"
    if (!file.exists("UCI HAR Dataset")) { 
      unzip(filename) 
      }

      ## Open required libraries
      library(reshape2)

      ## First, read all required .txt files and label the datasets
              ## Read all activities and their names and label the aproppriate columns 
	      		## "UCI HAR Dataset/activity_labels.txt": Links the class labels with their activity name.
			        activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt",col.names=c("activity_class","activity_name"))

				        ## Read "UCI HAR Dataset/features.txt" which has the dataframe's column names
							##'features.txt': List of all features.
							        features <- read.table("UCI HAR Dataset/features.txt")
								        feature_names <-  features[,2] ##561 column names
									        
										        ## Read "UCI HAR Dataset/test/X_test.txt": Test data and label the dataframe's columns
											        testdata <- read.table("UCI HAR Dataset/test/X_test.txt") ## 2947 rows
												        colnames(testdata) <- feature_names

															## Read the ids of the test subjects and label the the dataframe's columns
															        test_subject_id <- read.table("UCI HAR Dataset/test/subject_test.txt")
																        colnames(test_subject_id) <- "subject_id"
																	        
																		        ## Read the activity class of the test data and label the the dataframe's columns
																			        test_activity_class <- read.table("UCI HAR Dataset/test/y_test.txt")
																				        colnames(test_activity_class) <- "activity_class"
																						 
																						         ## Read "UCI HAR Dataset/train/X_train.txt": Training set, training data and label the dataframe's columns
																							         traindata <- read.table("UCI HAR Dataset/train/X_train.txt") ##7352 rows
																								         colnames(traindata) <- feature_names
																									         
																										         ## Read the ids of the test subjects and label the the dataframe's columns
																											         train_subject_id <- read.table("UCI HAR Dataset/train/subject_train.txt")
																												         colnames(train_subject_id) <- "subject_id"
																													         
																														         ## Read the activity class of the training data and label 
																															         ##the dataframe's columns
																																         train_activity_class <- read.table("UCI HAR Dataset/train/y_train.txt")
																																	         colnames(train_activity_class) <- "activity_class"

																																		 ## second, combine datasets : test and training data		
																																		         ##Combine the test subject id's, the test activity class 
																																			         ##and the test data into one dataframe
																																				         test_data <- cbind(test_subject_id , test_activity_class , testdata)
																																					         
																																						         ##Combine the test subject id's, the test activity class 
																																							         ##and the test data into one dataframe
																																								         train_data <- cbind(train_subject_id , train_activity_class , traindata)
																																									         
																																										         ##Combine the test data and the train data into one dataframe
																																											         TestTrain_data <- rbind(train_data,test_data)

																																												 ## Extracts only the measurements on the mean and standard deviation for each measurement.
																																												 		## position of columns referring to mean()
																																														        mean_col_idx <- grep("mean",names(TestTrain_data),ignore.case=TRUE)
																																																	##length( mean_col_idx) = 53
																																																			## get the columnames based on the position of columns referring to mean()
																																																			        mean_col_names <- names(TestTrain_data)[mean_col_idx]
																																																						
																																																								## position of columns referring to std()
																																																								        std_col_idx <- grep("std",names(TestTrain_data),ignore.case=TRUE)
																																																											##length(std_col_idx) = 33
																																																													## get the columnames based on the position of columns referring to std()		
																																																													        std_col_names <- names(TestTrain_data)[std_col_idx]
																																																																
																																																																        meanstddata <-TestTrain_data[,c("subject_id","activity_class",mean_col_names,std_col_names)]   		

																																																																	##Uses descriptive activity names to name the activities in the data set
																																																																			##Merge the activities datasets with the meanstd values datasets
																																																																			        ##to get one dataset with descriptive activity names
																																																																						##merge the datasets by activity_class
																																																																						        descrnames <- merge(activity_labels,meanstddata,by.x="activity_class",by.y="activity_class",all=TRUE)

																																																																							##Appropriately labels the data set with descriptive variable names.
																																																																							##creates a second, independent tidy data set with the average of each variable for each activity and each subject.
																																																																							## Melt : Convert an object into a molten data frame
																																																																									##Melt the dataset with the descriptive activity names for better handling
																																																																									        data_melt <- melt(descrnames,id=c("activity_class","activity_name","subject_id"))	
:wq!
																																																																												##Cast the melted dataset according to  the average of each variable 
																																																																												        ##for each activity and each subjec
																																																																													        mean_data <- dcast(data_melt,activity_class + activity_name + subject_id ~ variable,mean)
																																																																														       
																																																																														       ## Lastly, create a file with the new tidy dataset
																																																																														               write.table(mean_data,"tidy_dataset.txt", row.name=FALSE)

																																																																															       		
																																																																																			
