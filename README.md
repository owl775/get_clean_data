# get_clean_data
Getting and Cleaning Data Course Project


### Run Analysis on Human Activity Recognition Using Smartphones Data Set

This program runs under the assumption that UCI dataset is in your current working directory and contains the files referenced below.

1. Loads 'activity_labels.txt'
2. Loads 'features.txt'
3. Loads 'test/subject_test.txt'
4. Loads 'test/y_test.txt'
5. Loads 'test/X_test.txt)
6. Loads 'train/subject_train.txt'
7. Loads 'train/y_train.txt'
8. Loads 'train/X_train.txt'
9. Merges test and train datasets into one dataset.
10. Extracts only measurements on the mean() and std() for each measurement in 'features.txt'
11. Uses descriptive activity names to name the activities in the dataset referenced in 'activity_labels.txt'.
12. Labels variables appropriately according to 'features.txt'
13. Creates a new "tidy data set" with average for each feature in #10 for each activity and subject.
14. Writes "tidy data set" to "tidy_data.txt"

### Usage
1. Obtain UCI dataset from <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>
2. unzip https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
3. Make sure current working directory level is UCI HAR Dataset and that it contains
- train/y_train.txt
- train/X_train.txt
- train/subject_train.txt
- test/y_test.txt
- test/X_test.txt
- test/subject_test.txt
- README.txt
- features.txt
- features_info.txt
- activity_labels.txt
4. To run analysis code source("/get_clean_data/run_analysis.R") and run_analysis()
