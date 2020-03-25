## Function that merges the training and the test from 
## UCI Human Activity Recognition Using Smartphones Data Set.
## Extracts features pertaining to mean and standard deviation.
## Applies descriptive activity names to name the activities in the data set.
## Applies feature labels the data set with descriptive variable names.
## Creates a "tidy data set" with the average of each variable 
## for each activity and subject.

library(dplyr)

run_analysis <- function() {

	     ## read activity_labels.txt
	     activity_labels <-read.table("activity_labels.txt", header=FALSE)
	     colnames(activity_labels) <- c("activity_id", "activity_label") 

	     ## read features.txt
	     features <-read.table("features.txt", header=FALSE)
	     feature_names <- as.vector(features[['V2']])

	     ## get column indices for feature labels containing 'mean()' or 'std()'
	     mean_std_rows <- grep('std\\(\\)|mean\\(\\)', feature_names)

	     # make "R" sanitized feature_names
	     cleaned_feature_names <- sub("\\(", "", feature_names)
	     cleaned_feature_names <- sub("\\)", "", cleaned_feature_names)
	     feature_names_subset<-cleaned_feature_names[mean_std_rows]

	     ## read test data
	     subject_test <- read.table("test/subject_test.txt", header=FALSE)
	     colnames(subject_test) <- c("subject")

	     y_test <- read.table("test/y_test.txt", header=FALSE)
	     colnames(y_test) <- c("y")

	     X_test <- read.table("test/X_test.txt", header=FALSE)

	     ## subset X_test to only mean() or std() columns
	     X_test_subset <- X_test[ , mean_std_rows]

	     ## apply feature_labels as column names
	     colnames(X_test_subset) <- feature_names_subset

	     test.df <- cbind(subject_test, y_test, X_test_subset)


	     ## read train data
	     subject_train <- read.table("train/subject_train.txt", header=FALSE)
	     colnames(subject_train) <- c("subject")

	     y_train <- read.table("train/y_train.txt", header=FALSE)
	     colnames(y_train) <- c("y")

	     X_train <- read.table("train/X_train.txt", header=FALSE)

	     ## subset X_train to only mean() or std() columns
	     X_train_subset <- X_train[ , mean_std_rows]

	     ## apply feature_labels as column names
	     colnames(X_train_subset) <- feature_names_subset

	     train.df <- cbind(subject_train, y_train, X_train_subset)

	     ## combine test and train data frames
	     total.df <- rbind(test.df, train.df)

	     ## apply specific activity labels
	     merged.df <- merge(total.df, activity_labels, by.x="y", by.y="activity_id")

	     ## get tidy dataset, write to "tidy_data.txt"
	     tidy.df <- merged.df
	     tidiest.df <- tidy.df %>% group_by(subject,activity_label) %>% 
	     		summarise_each(funs(mean), feature_names_subset) 

	     write.table(tidiest.df, "tidy_data.txt", row.names=FALSE)

}