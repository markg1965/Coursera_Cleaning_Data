Tables Names (loaded from working directory)

1.	  X_Test_Data <- read.table(X_Test_Data_File)	  ##Test set
2.	  Y_Test_Data <- read.table(Y_Test_Data_File)	  ##Test labels
3.	  Subject_Test_Data <- read.table(Subject_Test_File)	
4.	  X_Train_Data <- read.table(X_Train_Data_File)	  ##Training set
5.	  Y_Train_Data <- read.table(Y_Train_Data_File)	  ##Training labels
6.	  Subject_Train_Data <- read.table(Subject_Train_File)	 
7.	  features_Data <- read.table(features_File, as.is = TRUE)	  ##Shows information about the variables used on the feature vector
8.	  Activity_Labels_Data <- read.table(Activity_Labels_File)	 ##Links the class labels with their activity name
9.	  Tidy_Data_Measurement_Names <- read.csv(Tidy_Data_Measurement_Names	 header = FALSE)

Additional data tables were added as intermediate steps as described in the readme file.  The final output file is called Tidy_Dataset_Step2

Revised observation names table (below)--removed brackets and X, Y, Z

1.	tBodyAcc-mean()-X	tBodyAcc_mean
2.	tBodyAcc-mean()-Y	tBodyAcc_mean
3.	tBodyAcc-mean()-Z	tBodyAcc_mean
4.	tGravityAcc-mean()-X	tGravityAcc_mean
5.	tGravityAcc-mean()-Y	tGravityAcc_mean
6.	tGravityAcc-mean()-Z	tGravityAcc_mean
7.	tBodyAccJerk-mean()-X	tBodyAccJerk_mean
8.	tBodyAccJerk-mean()-Y	tBodyAccJerk_mean
9.	tBodyAccJerk-mean()-Z	tBodyAccJerk_mean
10.	tBodyGyro-mean()-X	tBodyGyro_mean
11.	tBodyGyro-mean()-Y	tBodyGyro_mean
12.	tBodyGyro-mean()-Z	tBodyGyro_mean
13.	tBodyGyroJerk-mean()-X	tBodyGyroJerk_mean
14.	tBodyGyroJerk-mean()-Y	tBodyGyroJerk_mean
15.	tBodyGyroJerk-mean()-Z	tBodyGyroJerk_mean
16.	tBodyAccMag-mean()	tBodyAccMag_mean
17.	tGravityAccMag-mean()	tGravityAccMag_mean
18.	tBodyAccJerkMag-mean()	tBodyAccJerkMag_mean
19.	tBodyGyroMag-mean()	tBodyGyroMag_mean
20.	tBodyGyroJerkMag-mean()	tBodyGyroJerkMag_mean
21.	fBodyAcc-mean()-X	fBodyAcc_mean
22.	fBodyAcc-mean()-Y	fBodyAcc_mean
23.	fBodyAcc-mean()-Z	fBodyAcc_mean
24.	fBodyAcc-meanFreq()-X	fBodyAcc_meanFreq
25.	fBodyAcc-meanFreq()-Y	fBodyAcc_meanFreq
26.	fBodyAcc-meanFreq()-Z	fBodyAcc_meanFreq
27.	fBodyAccJerk-mean()-X	fBodyAccJerk_mean
28.	fBodyAccJerk-mean()-Y	fBodyAccJerk_mean
29.	fBodyAccJerk-mean()-Z	fBodyAccJerk_mean
30.	fBodyAccJerk-meanFreq()-X	fBodyAccJerk_meanFreq
31.	fBodyAccJerk-meanFreq()-Y	fBodyAccJerk_meanFreq
32.	fBodyAccJerk-meanFreq()-Z	fBodyAccJerk_meanFreq
33.	fBodyGyro-mean()-X	fBodyGyro_mean
34.	fBodyGyro-mean()-Y	fBodyGyro_mean
35.	fBodyGyro-mean()-Z	fBodyGyro_mean
36.	fBodyGyro-meanFreq()-X	fBodyGyro_meanFreq
37.	fBodyGyro-meanFreq()-Y	fBodyGyro_meanFreq
38.	fBodyGyro-meanFreq()-Z	fBodyGyro_meanFreq
39.	fBodyAccMag-mean()	fBodyAccMag_mean
40.	fBodyAccMag-meanFreq()	fBodyAccMag_meanFreq
41.	fBodyBodyAccJerkMag-mean()	fBodyBodyAccJerkMag_mean
42.	fBodyBodyAccJerkMag-meanFreq()	fBodyBodyAccJerkMag_meanFreq
43.	fBodyBodyGyroMag-mean()	fBodyBodyGyroMag_mean
44.	fBodyBodyGyroMag-meanFreq()	fBodyBodyGyroMag_meanFreq
45.	fBodyBodyGyroJerkMag-mean()	fBodyBodyGyroJerkMag_mean
46.	fBodyBodyGyroJerkMag-meanFreq()	fBodyBodyGyroJerkMag_meanFreq
47.	tBodyAcc-std()-X	tBodyAcc_std
48.	tBodyAcc-std()-Y	tBodyAcc_std
49.	tBodyAcc-std()-Z	tBodyAcc_std
50.	tGravityAcc-std()-X	tGravityAcc_std
51.	tGravityAcc-std()-Y	tGravityAcc_std
52.	tGravityAcc-std()-Z	tGravityAcc_std
53.	tBodyAccJerk-std()-X	tBodyAccJerk_std
54.	tBodyAccJerk-std()-Y	tBodyAccJerk_std
55.	tBodyAccJerk-std()-Z	tBodyAccJerk_std
56.	tBodyGyro-std()-X	tBodyGyro_std
57.	tBodyGyro-std()-Y	tBodyGyro_std
58.	tBodyGyro-std()-Z	tBodyGyro_std
59.	tBodyGyroJerk-std()-X	tBodyGyroJerk_std
60.	tBodyGyroJerk-std()-Y	tBodyGyroJerk_std
61.	tBodyGyroJerk-std()-Z	tBodyGyroJerk_std
62.	tBodyAccMag-std()	tBodyAccMag_std
63.	tGravityAccMag-std()	tGravityAccMag_std
64.	tBodyAccJerkMag-std()	tBodyAccJerkMag_std
65.	tBodyGyroMag-std()	tBodyGyroMag_std
66.	tBodyGyroJerkMag-std()	tBodyGyroJerkMag_std
67.	fBodyAcc-std()-X	fBodyAcc_std
68.	fBodyAcc-std()-Y	fBodyAcc_std
69.	fBodyAcc-std()-Z	fBodyAcc_std
70.	fBodyAccJerk-std()-X	fBodyAccJerk_std
71.	fBodyAccJerk-std()-Y	fBodyAccJerk_std
72.	fBodyAccJerk-std()-Z	fBodyAccJerk_std
73.	fBodyGyro-std()-X	fBodyGyro_std
74.	fBodyGyro-std()-Y	fBodyGyro_std
75.	fBodyGyro-std()-Z	fBodyGyro_std
76.	fBodyAccMag-std()	fBodyAccMag_std
77.	fBodyBodyAccJerkMag-std()	fBodyBodyAccJerkMag_std
78.	fBodyBodyGyroMag-std()	fBodyBodyGyroMag_std
79.	fBodyBodyGyroJerkMag-std()	fBodyBodyGyroJerkMag_std


