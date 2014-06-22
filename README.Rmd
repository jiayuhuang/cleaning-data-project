==================================================================
Smartphones Dataset Cleaning Project
==================================================================

Goals
-------------
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Data
---------------
The raw data set can be downloaded from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

Instruction 
----------------------------------------------------------------
- Set the workspace as the directory of raw data set

- Load raw data sets (including x_train/test, subject_train/test, y_train/test, activity_labels and features) into R

- Merge the raw train and raw test sets. Change the variable names to crescriptive names

- Combine the merged set with subjects and activities

- Extract the variables with mean and standard deviation measurements

- Uses descriptive activity names to name the activities in the data set

- Create an independent data set calculating variable mean for each subject and each activity



Notes 
----------------------------------------------------------------

- In the raw data set, features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
- tidy_dat is the tidy data set containing all observations in raw training and raw testing. And for each observation, it combines subject number and activity name.
- final_dat is an final independent set of variable mean for each subject and each activity.

For more information about this raw dataset contact: activityrecognition@smartlab.ws

License
----------------------------------------------------------------

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
