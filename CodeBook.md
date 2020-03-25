# Getting and Cleaning Data Course Project Data

Raw Human Activity Recognition Using Smartphones Data Set can be obtained here : <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

Additional information regarding Human Activity Recognition Using Smartphones Data Set can be found here: <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

Relevant files from the data set include:
1. features.txt contains a list of the 561 features available in the data sets
2. activity_labels.txt contains the six activities for which the data was collected
3. features_info.txt Shows information about the variables used on the feature vector.
4. activity_labels.txt links the class labels with their activity name.


Data is initially split between test and train sub-directories.
⋅⋅* train/X_train.txt:  Training set.
..* train/y_train.txt: Training labels.
..* train/subject_train.txt: Training set subject labels.
..* test/X_test.txt: Test set.
..* test/y_test.txt: Test labels.
..* test/subject_test.txt: Test set subject labels.


# Data Transformations
An activities dataframe was created with activity_labels.txt. All features from features.txt were read into a feature_names vector. From the feature_names vector, only those features containing 'mean()' or 'std()' were retained.
A dataframe called train.df was created by combining subject_train, y_train, and X_train and another called test.df was created by combining subject_test, y_test, and X_test. Only columns from the subset of feature_names were reatined in train.df and test.df.  Some processing was done on the subset of feature_names to remove '(' and ')'. Next, test.df and train.df were combined into total.df and then merged with activity_labels to show (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). Finally, the merged dataframe was copied into a new tidy.df, grouped by subject and activity_label and the mean of each of the features was calculated. This tidy dataframe is written out to file as 'tidy_data.txt'

# Variables in the tidy data set

..* [1] "subject": test subject id
..* [2] "activity_label": descriptive activity label (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
..* [3] "tBodyAcc.mean.X"
..* [4]  "tBodyAcc.mean.Y"
..* [5] "tBodyAcc.mean.Z"
..* [6] "tBodyAcc.std.X"
..* [7] "tBodyAcc.std.Y"
..* [8] "tBodyAcc.std.Z"
..* [9] "tGravityAcc.mean.X"
..* [10] "tGravityAcc.mean.Y"
..* [11] "tGravityAcc.mean.Z"
..* [12] "tGravityAcc.std.X"
..*[13] "tGravityAcc.std.Y"
..*[14] "tGravityAcc.std.Z"
..*[15] "tBodyAccJerk.mean.X"
..*[16] "tBodyAccJerk.mean.Y"
..*[17] "tBodyAccJerk.mean.Z"
..*[18] "tBodyAccJerk.std.X"
..*[19] "tBodyAccJerk.std.Y"
..*[20] "tBodyAccJerk.std.Z"
..*[21] "tBodyGyro.mean.X"
..*[22] "tBodyGyro.mean.Y"
..*[23] "tBodyGyro.mean.Z"
..*[24] "tBodyGyro.std.X"
..*[25] "tBodyGyro.std.Y"
..*[26] "tBodyGyro.std.Z"
..*[27] "tBodyGyroJerk.mean.X"
..*[28] "tBodyGyroJerk.mean.Y"
..*[29] "tBodyGyroJerk.mean.Z"
..*[30] "tBodyGyroJerk.std.X"
..*[31] "tBodyGyroJerk.std.Y"
..*[32] "tBodyGyroJerk.std.Z"
..*[33] "tBodyAccMag.mean"
..*[34] "tBodyAccMag.std"
..*[35] "tGravityAccMag.mean"
..*[36] "tGravityAccMag.std"
..*[37] "tBodyAccJerkMag.mean"
..*[38] "tBodyAccJerkMag.std"
..*[39] "tBodyGyroMag.mean"
..*[40] "tBodyGyroMag.std"
..*[41] "tBodyGyroJerkMag.mean"
..*[42] "tBodyGyroJerkMag.std"
..*[43] "fBodyAcc.mean.X"
..*[44] "fBodyAcc.mean.Y"
..*[45] "fBodyAcc.mean.Z"
..*[46] "fBodyAcc.std.X"
..*[47] "fBodyAcc.std.Y"
..*[48] "fBodyAcc.std.Z"
..*[49] "fBodyAccJerk.mean.X"
..*[50] "fBodyAccJerk.mean.Y"
..*[51] "fBodyAccJerk.mean.Z"
..*[52] "fBodyAccJerk.std.X"
..*[53] "fBodyAccJerk.std.Y"
..*[54] "fBodyAccJerk.std.Z"
..*[55] "fBodyGyro.mean.X"
..*[56] "fBodyGyro.mean.Y"
..*[57] "fBodyGyro.mean.Z"
..*[58] "fBodyGyro.std.X"
..*[59] "fBodyGyro.std.Y"
..*[60] "fBodyGyro.std.Z"
..*[61] "fBodyAccMag.mean"
..*[62] "fBodyAccMag.std"
..*[63] "fBodyBodyAccJerkMag.mean"
..*[64] "fBodyBodyAccJerkMag.std"
..*[65] "fBodyBodyGyroMag.mean"
..*[66] "fBodyBodyGyroMag.std"
..*[67] "fBodyBodyGyroJerkMag.mean"
..*[68] "fBodyBodyGyroJerkMag.std"