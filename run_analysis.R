# This script does

# 1.-Merges the training and the test sets to create one data set.
# 2.-Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3.-Uses descriptive activity names to name the activities in the data set
# 4.-Appropriately labels the data set with descriptive variable names. 
# 5.-Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

#=================================================================================
# 1.-Merges the training and the test sets to create one data set. (called merged)
#=================================================================================
#First lets import the datasets


#Load test data related to subject X tests and y tests 
print('---------------------------------------------------------------------------------------------------------')
print('Starting process,...be sure to save and extract the UCI HAR data set zip file into your working directory')
print('---------------------------------------------------------------------------------------------------------')
print("")
print('')
print('')
print('1.- Merge the training and the test sets to create one data set')
print('---------------------------------------------------------------------------------------------------------')
print('Loading test data related to subject X tests and y tests') 
subject_test <- read.csv( "./UCI HAR Dataset/test/subject_test.txt", header = FALSE,sep="")
x_test <- read.csv ("./UCI HAR Dataset/test/X_test.txt", header = FALSE,sep="")
y_test <- read.csv ("./UCI HAR Dataset/test/y_test.txt", header=FALSE, sep="")


#Load train data related to subject X_train and y_train
print("Loading training data related to subject X_train and y_train")

subject_train <- read.csv( "./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
x_train <- read.csv ("./UCI HAR Dataset/train/X_train.txt", header = FALSE,sep="")
y_train <- read.csv ("./UCI HAR Dataset/train/y_train.txt", header=FALSE, sep="")

#merge test and train subject data and X_train and y_train and write in csv file
#verify that merged directory exists, if not creates it

print("Verifying that merged directory exists,...")
if(!file.exists("./UCI HAR Dataset/merged")) {
        dir.create("./UCI HAR Dataset/merged")
        dir.create("./UCI HAR Dataset/merged/Inertial Signals")
}

print("Merging data...")
subject_merged <- rbind(subject_test,subject_train)
write.csv(subject_merged,"./UCI HAR Dataset/merged/subject_merged.txt" )

x_merged <-rbind(x_test,x_train)
write.csv(x_merged,"./UCI HAR Dataset/merged/X_merged.txt")

y_merged <- rbind(y_test,y_train)
write.csv(y_merged,"./UCI HAR Dataset/merged/y_merged.txt")

#Lets read the accelerations and merge them 
# xacceleration

print("Reading acceleration data sets for x...")
body_acc_x_test <- read.csv("./UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt",header=FALSE,sep="")
body_acc_x_train <- read.csv("./UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt",header=FALSE,sep="")

print("Merging accelerations datasets for x...")
body_acc_x_merged <-rbind(body_acc_x_test,body_acc_x_train)
write.csv(body_acc_x_merged,"./UCI HAR Dataset/merged/Inertial Signals/body_acc_x_merged.txt")

# yacceleration
print("Reading acceleration data sets for y...")
body_acc_y_test <- read.csv("./UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt",header=FALSE,sep="")
body_acc_y_train <- read.csv("./UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt",header=FALSE,sep="")

print("Merging accelerations datasets for y...")
body_acc_y_merged <-rbind(body_acc_y_test,body_acc_y_train)
write.csv(body_acc_y_merged,"./UCI HAR Dataset/merged/Inertial Signals/body_acc_y_merged.txt")

# zacceleration
print("Reading acceleration data sets for z...")
body_acc_z_test <- read.csv("./UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt",header=FALSE,sep="")
body_acc_z_train <- read.csv("./UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt",header=FALSE,sep="")

print("Merging accelerations datasets for z...")
body_acc_z_merged <-rbind(body_acc_z_test,body_acc_z_train)
write.csv(body_acc_z_merged,"./UCI HAR Dataset/merged/Inertial Signals/body_acc_z_merged.txt")

#Lets read the gyro data and merge them 
# x gyro
print("Reading gyro data for x...")
body_gyro_x_test <- read.csv("./UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt",header=FALSE,sep="")
body_gyro_x_train <- read.csv("./UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt",header=FALSE,sep="")
print("Merging gyro data for x...")
body_gyro_x_merged <-rbind(body_gyro_x_test,body_gyro_x_train)
write.csv(body_gyro_x_merged,"./UCI HAR Dataset/merged/Inertial Signals/body_gyro_x_merged.txt")

# y gyro
print("Reading gyro data for y...")
body_gyro_y_test <- read.csv("./UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt",header=FALSE,sep="")
body_gyro_y_train <- read.csv("./UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt",header=FALSE,sep="")
print("Merging gyro data for y...")
body_gyro_y_merged <-rbind(body_gyro_y_test,body_gyro_y_train)
write.csv(body_gyro_y_merged,"./UCI HAR Dataset/merged/Inertial Signals/body_gyro_y_merged.txt")


# z gyro
print("Reading gyro data for z...")
body_gyro_z_test <- read.csv("./UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt",header=FALSE,sep="")
body_gyro_z_train <- read.csv("./UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt",header=FALSE,sep="")
print("Merging gyro data for z...")
body_gyro_z_merged <-rbind(body_gyro_z_test,body_gyro_z_train)
write.csv(body_gyro_z_merged,"./UCI HAR Dataset/merged/Inertial Signals/body_gyro_z_merged.txt")

# x total acceleration
print("Reading total acceleration values for test and train in x...")
total_acc_x_test <- read.csv("./UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt",header=FALSE,sep="")
total_acc_x_train <- read.csv("./UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt",header=FALSE,sep="")
print("Merging total acceleration data for in x...")
total_acc_x_merged <-rbind(total_acc_x_test,total_acc_x_train)
write.csv(total_acc_x_merged,"./UCI HAR Dataset/merged/Inertial Signals/total_acc_x_merged.txt")

# y total acceleration
print("Reading total acceleration values for test and train in y...")
total_acc_y_test <- read.csv("./UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt",header=FALSE,sep="")
total_acc_y_train <- read.csv("./UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt",header=FALSE,sep="")
print("Merging total acceleration data for in y...")
total_acc_y_merged <-rbind(total_acc_y_test,total_acc_y_train)
write.csv(total_acc_y_merged,"./UCI HAR Dataset/merged/Inertial Signals/total_acc_y_merged.txt")

# z total acceleration
print("Reading total acceleration values for test and train in z...")
total_acc_z_test <- read.csv("./UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt",header=FALSE,sep="")
total_acc_z_train <- read.csv("./UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt",header=FALSE,sep="")
print("Merging total acceleration data for in z...")
total_acc_z_merged <-rbind(total_acc_z_test,total_acc_z_train)
write.csv(total_acc_z_merged,"./UCI HAR Dataset/merged/Inertial Signals/total_acc_z_merged.txt")

#===========================================================================================
# 2.-Extracts only the measurements on the mean and standard deviation for each measurement.
# and stores it int x_merged_mean_and_std
#===========================================================================================
print('')
print('')
print('')
print('2.- Extract only the measurements on the mean and standard deviation for each measurement')
print('---------------------------------------------------------------------------------------------------------')
print("Subsetting mean and std dev data...")
ind <-c(1:6,40:46,81:86,121:126,161:166,201,202,214,215,227,228,240,241,253,254)
ind<-c(ind,266:271,294:296,345:350,373:375,424:429,452:454,503,504,513,516,517,526,529,530)
ind<-c(ind,539,542,543,552,555:561)
features <-read.csv("./UCI HAR Dataset/features.txt",header=FALSE,sep="")
x_merged_mean_and_std <- x_merged[,ind]

# the measurements on mean and standad deviation are x_merged_mean_std. 

#===========================================================================================
# 3.-Uses descriptive activity names to name the activities in the data set
# data is into y_merged.txt and y_merged variable
# activity labels still is not read
# 
#===========================================================================================
print('')
print('')
print('')
print('3.- Use descriptive activity names to name the activities in the data set')
print('---------------------------------------------------------------------------------------------------------')
activity_labels<- read.csv("./UCI HAR Dataset/activity_labels.txt",header=FALSE,sep="")
y_merged_factor=factor(as.factor(y_merged[,1]),levels=c(1:6),labels=activity_labels[,2])
#append tha activity name in the last column
print("Appending descriptive names to the name activities in the data set...")
x_merged_mean_and_std_activ<-cbind(x_merged_mean_and_std,y_merged_factor)

#===========================================================================================
# 4.-Appropriately labels the data set with descriptive variable names. 
#===========================================================================================
print('')
print('')
print('')
print('4.- Appropiatelly labeling the data set with descriptive variable names')
print('---------------------------------------------------------------------------------------------------------')
print("Labeling the dataset with descriptive variable names...")
feat_heads <-as.vector(features[ind,2])
names(x_merged_mean_and_std_activ) <- c(feat_heads,"activ_desc")
#write.csv(x_merged_mean_and_std_activ,"./tidydata_1_to_4.txt")
write.table(x_merged_mean_and_std_activ,"./tidydata_1_to_4.txt",quote=FALSE,row.names=TRUE)

#===========================================================================================
#5.- Creates a second, independent tidy data set with the average of each variable
#for each activity and each subject. 
# Will write a file named x_merged_means.txt with the means of each data variable
#===========================================================================================
print('')
print('')
print('')
print('5.- Create a second, independent tidy data setwith the average of each variable')
print('    for each activity and each subject')
print('---------------------------------------------------------------------------------------------------------')

print("Creating a second, independent data set with the averages of each variables for each activity and subject...")
A<-data.frame()
A1 <- apply(x_merged_mean_and_std[x_merged_mean_and_std_activ[,88]=="WALKING",],2,mean)
A<-A1
A2 <- apply(x_merged_mean_and_std[x_merged_mean_and_std_activ[,88]=="WALKING_UPSTAIRS",],MARGIN=2,FUN=mean)
A<-rbind(A,A2)
A3 <- apply(x_merged_mean_and_std[x_merged_mean_and_std_activ[,88]=="WALKING_DOWNSTAIRS",],2,mean)
A<-rbind(A,A3)
A4 <- apply(x_merged_mean_and_std[x_merged_mean_and_std_activ[,88]=="SITTING",],2,mean)
A<-rbind(A,A4)
A5 <- apply(x_merged_mean_and_std[x_merged_mean_and_std_activ[,88]=="STANDING",],2,mean)
A<-rbind(A,A5)
A6 <- apply(x_merged_mean_and_std[x_merged_mean_and_std_activ[,88]=="LAYING",],2,mean)
A<-rbind(A,A6)
row.names(A)<-c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
colnames(A)<-feat_heads
print("Writing data into tidydata_5.txt in working directory")
write.table(A,"tidydata_5.txt",quote=FALSE,row.names=FALSE)

print('')
print('')
print('')
print('---------------------------------------------------------------------------------------------------------')
print('Congratullations!. Proccess ended up succesfully. You can check results in tidydata_5.txt file ')
print('---------------------------------------------------------------------------------------------------------')
