run_analysis <- function()


library(digest)
library(dplyr)
library(data.table)
library(tidyr)



#File Pathways

  X_Test_Data_File <- "c:/Users/Mark/Documents/UCI HAR Dataset/test/X_test.txt"
  Y_Test_Data_File <- "c:/Users/Mark/Documents/UCI HAR Dataset/test/Y_test.txt"
  Subject_Test_File <- "c:/Users/Mark/Documents/UCI HAR Dataset/test/subject_test.txt"
  features_File <- "c:/Users/Mark/Documents/UCI HAR Dataset/features.txt"
  X_Train_Data_File <- "c:/Users/Mark/Documents/UCI HAR Dataset/train/X_train.txt"
  Y_Train_Data_File <- "c:/Users/Mark/Documents/UCI HAR Dataset/train/Y_train.txt"
  Subject_Train_File <- "c:/Users/Mark/Documents/UCI HAR Dataset/train/subject_train.txt"
  Activity_Labels_File <- "c:/Users/Mark/Documents/UCI HAR Dataset/activity_labels.txt"
  Tidy_Data_Measurement_Names <- "c:/Users/Mark/Documents/UCI HAR Dataset/Tidy_Column_Names.csv"

##Load raw data into R (Tidy_Data_Measurement_Names contains adjusted measurement type names for final tidy data table)

  X_Test_Data <- read.table(X_Test_Data_File)  ##Test set
  Y_Test_Data <- read.table(Y_Test_Data_File)  ##Test labels
  Subject_Test_Data <- read.table(Subject_Test_File)
  X_Train_Data <- read.table(X_Train_Data_File)  ##Training set
  Y_Train_Data <- read.table(Y_Train_Data_File)  ##Training labels
  Subject_Train_Data <- read.table(Subject_Train_File) 
  features_Data <- read.table(features_File, as.is = TRUE)  ##Shows information about the variables used on the feature vector
  Activity_Labels_Data <- read.table(Activity_Labels_File) ##Links the class labels with their activity name
  Tidy_Data_Measurement_Names <- read.csv(Tidy_Data_Measurement_Names, header = FALSE)
  
##Transpose feature_Data (column headers) from 1 column with 561 rows to 1 row with 561 columns
##conversion is required to bind column header/variable names to the test/train data sets

  
  features_Data$V1 <- NULL
  features_data_transposed <- t(features_Data)
  
  
##Add column names (features_data_transposed) to the test and train data sets  

  Full_Test_data_set <- setNames(X_Test_Data, features_data_transposed)
  Full_Train_data_set <- setNames(X_Train_Data, features_data_transposed)

##Add Subject ID to 1st column in each of the "full" data sets and match activity names with "Y" activity data
  
  Subject_Test_wname <- setNames(Subject_Test_Data, "Subject_ID")
  Subject_Train_wname <- setNames(Subject_Train_Data, "Subject_ID")

  Activity_Test_Data <- left_join(Y_Test_Data, Activity_Labels_Data, by = "V1")
  Activity_Train_Data <- left_join(Y_Train_Data, Activity_Labels_Data, by = "V1")
  
  Activity_Test_Data$V1 <- NULL
  Activity_Train_Data$V1 <- NULL 
  
    Activity_Test_Data_wname <- setNames(Activity_Test_Data, "Activity_Name")
    Activity_Train_Data_wname <- setNames(Activity_Train_Data, "Activity_Name")
  
    Full_Test_data_set <- bind_cols(Subject_Test_wname, Activity_Test_Data_wname, Full_Test_data_set)
    Full_Train_data_set <- bind_cols(Subject_Train_wname, Activity_Train_Data_wname, Full_Train_data_set)

##Merge Data Sets    

  Full_Data_Set <- rbind(Full_Test_data_set, Full_Train_data_set)

##Remove unneeded columns from Full_Data_Set--1st 3 lines remove columns with duplicate column names
##Second block of code extracts the mean and std columns and deletes "angle" columns from the Full_Data_Set
  
  Full_Data_Set <- Full_Data_Set[,-c(463:504)]
  Full_Data_Set <- Full_Data_Set[,-c(384:425)]
  Full_Data_Set <- Full_Data_Set[,-c(305:346)]

  
      Tidy_dataset_Step1 <- select(Full_Data_Set, contains("subject", ignore.case = TRUE), contains("activity", ignore.case = TRUE), 
                                   contains("mean", ignore.case = TRUE), contains("std", ignore.case = TRUE),
                                    -contains("angle", ignore.case = TRUE))
      
      
##Create final tidy dataset
      
      Tidy_dataset_Step2 <- gather(Tidy_dataset_Step1, Subject_ID, Activity_Name)
      Tidy_dataset_Step2 <- bind_cols(Tidy_dataset_Step2, Tidy_Data_Measurement_Names)
      colnames(Tidy_dataset_Step2) <- c("Subject_ID", "Activity_Name", "Measurement_Type", "Mean_Value", "Measurement_Type_Adjusted")


      
##Calculate mean value for each user and activity after deleting the unadjusted measurement type names (e.g. showing ()-X)
      
      Tidy_dataset_Step2$Measurement_Type <- NULL
      Tidy_dataset_Step2 <- group_by(Tidy_dataset_Step2, Subject_ID, Activity_Name, Measurement_Type_Adjusted) %>% summarise_each(c("mean"))
      
  


