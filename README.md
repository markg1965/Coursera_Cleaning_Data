# Coursera_Cleaning_Data
1.  Load all data files into R
2.  Transpose the features.txt file from a tall to a wide table of 1 row with 561 observations
3.  Add the features.txt data (column headers) to both the "train" and "test" data tables
4.  Merge the subject_train and subject_test data tables together after adding a header ("subject_id")
5.  Add the column header "Activity_Name" to the "Activity_Test_Data" and "Activity_Train_Data" files
6.  Merge Activity_Name and Subject_ID tables with the full "train" and "test" data tables
7.  Merge the train and test data tables into one master data table.
8.  Remove columns with duplicate data from master data table (not needed for final analysis)
9.  Select the Subject, Activity, Mean and Standard Deviation columns from the master data table and delete any columns containing the word "angle"
10. Use "gather" to sort master data table by subject, activity type, measurement type and observation
11. Rename the observation types according to the codebook below.  Note that my knowledge of physics is not good enough for me to be able to provide true meaningful names.  I only removed the characters that were not acceptable as R names.
12. Bind measurement names to the Tidy_Data table.
13. Group the Tidy_Data_Step1 table by subject, activity type and measurement type, and take the mean of each observation.
