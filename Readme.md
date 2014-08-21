==================================================================
Human Activity Recognition Using Smartphones Dataset
==================================================================
Ignacio Labella Arnanz
email: ignacio_labella@outlook.es
date: august-21-2014

Programed and tested with RStudio for Linux
Version 0.98.994 – © 2009-2013 RStudio, 
ARCH Linux. Kernel  3.15.8-1-ARCH
==================================================================


============
INSTRUCTIONS
============

1.- The script "run_Analysis.R" must be placed into the R working directory. If you are not sure what is the working directory type in R > getwd()
2.- Extract the raw data zip file into the working directory so that the extracted "UCI HAR Dataset" is placed into the working directory.
3.- The directory structure shoulld be as follows

     (Woring directory)
            |
            |__run_Analisys.r
            |__CodeBook.md
            |__Readme.md
            |
            |__UCI HAR Dataset 
	           |     |___test
             |     |     |_Inertial Signals
	           |     |     |_body_acc_x_test.txt
	           |     |     |_body_acc_y_test.txt
	           |     |     |_body_acc_z_test.txt
	           |     |     |_body_gyro_x_test.txt
	           |     |     |_body_gyro_y_test.txt
	           |     |     |_body_gyro_z_test.txt
	           |     |     |_total_acc_x_test.txt
	           |     |     |_total_acc_y_test.txt
	           |     |     |_total_acc_z_test.txt
	           |     |
	           |     |_subject_test.txt
	           |     |_X_test.txt
	           |     |_y_test.txt
	           |
	           |___train
	           |     |_Inertial Signals
	           |     |      |
	           |     |      |_body_acc_x_train.txt
	           |     |      |_body_acc_y_train.txt
	           |     |      |_body_acc_z_train.txt
	           |     |      |_body_gyro_x_train.txt
	           |     |      |_body_gyro_y_train.txt
	           |     |      |_body_gyro_z_train.txt
	           |     |      |_total_acc_x_train.txt
	           |     |      |_total_acc_y_train.txt
	           |     |      |_total_acc_z_train.txt 
	           |     |
	           |     |_subject_train.txt
	           |     |_X_train.txt
	           |     |_y_train.txt
             |
             |___activity_labels.txt
             |___features.txt
             |___features_info.txt
             |___README.txt



4.- Run the script "run_Analysis.R" in RStudio. > source("./run_Analysis.R")
5.- The program will show you what steps is taking according to Coursera Project requested questions
6.- Finally there will be two new files into the working directory. 
     -tidydata_1_to_4.txt 
     -tidydata_5.txt 
            
7.- README.txt file related to RAW DATA is located into "UCI HAR Dataset" directory.  Here below is included its content

For more information about the project please contact ignacio_labella@outlook.es
================================================================================================================

Clarifications:
The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.



For more information about this dataset contact: activityrecognition@smartlab.ws

