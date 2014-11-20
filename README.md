#   Getting and Cleaning Data - Project 
##  README.MD
---
he objective of this project is to develop a process to extract and transform the available data into tidy dataset. 
The end product of the process i.e. the tidy data has to follow the principles of tidy data laid out by Hadley Wickham.
The available dataset was collected during the experiment "Human Activity Recognition Using Smartphones".
During the experiment the data was collected from all the subjects divided into two groups "training" and "test". 
Several datasets were made available in a zip file.
### Available data
Following are the details of the available datasets:
link to locations: "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
+	Root folder : UCI HAR Dataset
-			  README.TXT (Description of experiment and data available)
-			  features.txt (List of all variables names available )
-			  freatures_info.txt (High level description of all the measurements/variables)
-			  activity_labels.txt (Descriptive names of activities performed by the subjects during the experiment)
+	subfolders: 
-	test
*		X_test.txt (Measurements collected from subjects in test group)
*		y_test.txt (activities performed by subjects in test group)
*		subject_test.txt (observed subjects in test group)
-	train
*		X_train.txt (Measurements collected from subjects in training group)
*		y_train.txt (activities performed by subjects in training group)
*		subject_train.txt (observed subjects in training group)  

---
The program developed in a file run_analysis.R.
Prerequisite: Package("dplyr") must be installed for this program to achieve it's objective.
		
This program extracts and transforms the data from experiment and creates one tidy dataset (tidy_data.csv) in the working directory.
  This program has five main parts: 
1. Downloads and read all the required files into data frames
2.  Consolidates Data
-           Consolidate X_test.txt and X_train.txt
-            sets the variable names
-            Consolidate y_test.txt and y_train.txt
-            Consolidate subject_test.txt and subject_train.txt
3.   Assigns descriptive names to variables in files.
-         convert activity codes in consolidated ydata to factor and assign labels from activity_labels.txt
4.  Combines Subject, activity, and Xdata dataframes.
-            convert the variable names to readable format.
5. Summarize the datat 
-Calculates the means of all the measures by subject and activity 
-Create the tiday dataset. 
-Writes the data.frame to local drive in the working directory as csv file.
---
