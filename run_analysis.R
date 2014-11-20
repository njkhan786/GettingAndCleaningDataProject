#############################################################################################
# Program :  run_analysis.R
# Author  :  Nasir Jamal Khan
# Class   :  Getting and Cleaning Data
# Date    :  11/29/204
#
#  This program has five main parts: 
#     1)  Downloads and read all the required files into data frames
#     2)  Consolidate Data
#            Consolidate X_test.txt and X_train.txt
#            sets the variable names
#            Consolidate y_test.txt and y_train.txt
#            Consolidate subject_test.txt and subject_train.txt
#     3)  Assign descriptive names to variables in files.
#         convert activity codes in consolidated ydata to factor and assign labels from activity_labels.txt
#     4) combine Subject, activity, and Xdata dataframes.
#            convert the variable names to readable format.
#     5) calculate the means of all the measures by subject and activity 
#        and create the tiday data set. 
#        write the data.frame to local drive in the working directory as csv file.
##############################################################################################
###
### Part 1: Downloading the zip file and reading the required files.
###
packages <- c("dplyr")
if (length(setdiff(packages, rownames(installed.packages()))) > 0) {
  if (packageVersion("devtools") < 1.6) {
    install.packages("devtools")
  }
  devtools::install_github("hadley/lazyeval")
  devtools::install_github("hadley/dplyr")
  library(dplyr)  
}
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    temporarylink <- tempfile(tmpdir=getwd())       # returns a vector of strings which can be used  as names for temporary file
    download.file(fileUrl,temporarylink)
    features <- read.table(unz(temporarylink,"UCI HAR Dataset/features.txt"),
                           header=FALSE,sep=" ",stringsAsFactors=FALSE)
    subjtest <- read.table(unz(temporarylink,
                           "UCI HAR Dataset/test/subject_test.txt"),
                           header=FALSE,sep=" ",stringsAsFactors=FALSE)
    xtest <- read.table(unz(temporarylink,
                            "UCI HAR Dataset/test/X_test.txt"),
                        header=FALSE,stringsAsFactors=FALSE)
    ytest <- read.table(unz(temporarylink,
                            "UCI HAR Dataset/test/y_test.txt"),
                        header=FALSE,stringsAsFactors=FALSE)
    subjtrain <- read.table(unz(temporarylink,
                                "UCI HAR Dataset/train/subject_train.txt"),
                            header=FALSE,sep=" ",stringsAsFactors=FALSE)
    xtrain <- read.table(unz(temporarylink,
                             "UCI HAR Dataset/train/X_train.txt"),
                         header=FALSE,stringsAsFactors=FALSE)
    ytrain <- read.table(unz(temporarylink,
                             "UCI HAR Dataset/train/y_train.txt"),
                         header=FALSE,stringsAsFactors=FALSE)
    activitytable <- read.table(unz(temporarylink,
                                    "UCI HAR Dataset/activity_labels.txt"),
                                header=FALSE,sep=" ",stringsAsFactors=FALSE)
    unlink(temporarylink) #deletes the temporary files and directories
###
### Part2)  Consolidate Data
###         Consolidate X_test.txt and X_train.txt
###         sets the variable names
###         Consolidate y_test.txt and y_train.txt
###         Consolidate subject_test.txt and subject_train.txt
###      
    xdata<-rbind(xtest,xtrain)
    names(xdata)<-features$V2
    xdata <- xdata[,grep("Mean|mean|std",names(xdata))]  # first select columns with the words Mean, mean, std
                                                         # in the variables.
    xdata <- xdata[,-grep("Freq|freq",names(xdata))]     # remove the columns with the word Freq or freq in 
                                                         # variables.

    ydata<-rbind(ytest,ytrain)

    subjectdata<-rbind(subjtest,subjtrain)
    names(subjectdata)<-c("subject")                     # Assign col name "subject" to consolidate subject file

###
###   Part 3)  Assign descriptive names to variables in files.
###            convert activity codes in consolidated ydata to factor and assign labels from activity_labels.txt
### 
    names(activitytable)<-c("activitylevel","activitylabel")  
    activitytable$activitylevel <- as.factor(activitytable$activitylevel) # convert level column to factors
    ydata$V1 <- as.factor(ydata$V1)                                       # convert level column to factors
    activity <-factor(ydata$V1, labels=activitytable$activitylabel)  # assign lables to level column in activity dataframe
###
###   Part 4) combine Subject, activity, and Xdata dataframes.
###           convert the variable names to readable format.
###
    subjectactivity <- cbind(subjectdata,activity)
    subjectactivitydata <- cbind(subjectactivity,xdata)
    mdname <- gsub("\\.","",make.names(names(subjectactivitydata)))
    mdname <- gsub("mean","Mean",mdname)
    mdname <- gsub("std","StdDev",mdname)
    names(subjectactivitydata)<-mdname
###
###   Part 5) calculate the means of all the measures by subject and activity 
###           and create the tiday data set. 
 
    tidydata <- data.frame(subjectactivitydata %>% group_by(subject,activity) %>% summarise_each(funs(mean)))
#     write the data.frame to local drive in the working directory as csv file.
      write.table(tidydata,file="tidy_data.txt",row.names=FALSE)
###
###   The end
###