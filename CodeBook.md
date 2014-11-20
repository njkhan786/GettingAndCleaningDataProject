#Getting and Cleaning Data - Project
##Data Dictionary - tidy_data.txt

This dataset is a summarised tidy version of data captured from the smart phone (Samsung Galaxy S II) which
were used by 30 volunteers (subjects). These subjects performed various physical activities such as WALKING, 
WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, and LAYING. These activities produced various data by 
accelerometer and gyroscope embedded in the smart phone carried by the subjects. The data captured included 
3-axial linear acceleration and 3-axial angular velocity. There were 561 measurements were produced for each
activity by subjects. These measurements used time (sec) and frequency(hertz) units. All the measurements with prefix "t"
are the time domain variables while all the measurements with the prefix "f" are the frequency domain variables.

There were 10299 observations produced during the experiment by 30 subjects.
This file contains the mean of 73 measurements out of 561. These measurements are grouped by subject and activity.
There are 180 observations and 73 measurements in this data file. 

Dimensions : rows: 180; columns: 75 

| Variables 						 | Data Type | Description                                                                  | 
| ---------------------------------- | --------- | ---------------------------------------------------------------------------- |
| subject     						 | Int       | The id of the 30 volunteers who participated in the experiment               |
|           						 |           | value = 1:30                                                                 |
| activity  						 | factors   | Set of physical activities performed by each volunteers.                     |
|           						 |           | levels\Labels: 1\WALKING; 2\WALKING_UPSTAIRS; 3\WALKING_DOWNSTAIRS;          |
|                                    |           | 4\SITTING; 5\STANDING; 6\LAYING                                              |
|tBodyAccMeanX                       | numeric   | Body acceleration Mean x-axis time- variable                                 |
|tBodyAccMeanY                       | numeric   | Body acceleration Mean y-axis time- variable                                 |
|tBodyAccMeanZ                       | numeric   | Body acceleration Mean z-axis time- variable                                 |
|tBodyAccStdDevX                     | numeric   | Body acceleration Standard Deviation x-axis time- variable                   |
|tBodyAccStdDevY                     | numeric   | Body acceleration Standard Deviation y-axis time- variable                   |
|tBodyAccStdDevZ                     | numeric   | Body acceleration Standard Deviation z-axis time- variable                   |
|tGravityAccMeanX                    | numeric   | Gravity acceleration Mean x-axis time- variable                              |
|tGravityAccMeanY                    | numeric   | Gravity acceleration Mean y-axis time- variable                              |
|tGravityAccMeanZ                    | numeric   | Gravity acceleration Mean z-axis time- variable                              |
|tGravityAccStdDevX                  | numeric   | Gravity acceleration Standard Deviation x-axis time- variable                |
|tGravityAccStdDevY                  | numeric   | Gravity acceleration Standard Deviation y-axis time- variable                |
|tGravityAccStdDevZ                  | numeric   | Gravity acceleration Standard Deviation z-axis time- variable                |
|tBodyAccJerkMeanX                   | numeric   | Body acceleration Jerk Mean x-axis time- variable                            |
|tBodyAccJerkMeanY                   | numeric   | Body acceleration Jerk Mean y-axis time- variable                            |
|tBodyAccJerkMeanZ                   | numeric   | Body acceleration Jerk Mean z-axis time- variable                            |
|tBodyAccJerkStdDevX                 | numeric   | Body acceleration Jerk Standard Deviation x-axis time- variable              |
|tBodyAccJerkStdDevY                 | numeric   | Body acceleration Jerk Standard Deviation y-axis time- variable              |
|tBodyAccJerkStdDevZ                 | numeric   | Body acceleration Jerk Standard Deviation z-axis time- variable              |
|tBodyGyroMeanX                      | numeric   | Body Gyro Mean x-axis time- variable                                         |
|tBodyGyroMeanY                      | numeric   | Body Gyro Mean y-axis time- variable                                         |
|tBodyGyroMeanZ                      | numeric   | Body Gyro Mean z-axis time- variable                                         |
|tBodyGyroStdDevX                    | numeric   | Body  Gyro Standard Deviation x-axis time- variable                          |
|tBodyGyroStdDevY                    | numeric   | Body  Gyro Standard Deviation y-axis time- variable                          |
|tBodyGyroStdDevZ                    | numeric   | Body  Gyro Standard Deviation z-axis time- variable                          |
|tBodyGyroJerkMeanX                  | numeric   | Body Gyro Jerk Mean x-axis time- variable                                    |
|tBodyGyroJerkMeanY                  | numeric   | Body Gyro Jerk Mean y-axis time- variable                                    |
|tBodyGyroJerkMeanZ                  | numeric   | Body Gyro Jerk Mean z-axis time- variable                                    |
|tBodyGyroJerkStdDevX                | numeric   | Body Gyro Jerk Standard Deviation x-axis time- variable                      |
|tBodyGyroJerkStdDevY                | numeric   | Body Gyro Jerk Standard Deviation y-axis time- variable                      |
|tBodyGyroJerkStdDevZ                | numeric   | Body Gyro Jerk Standard Deviation z-axis time- variable                      |
|tBodyAccMagMean                     | numeric   | Body acceleration Magnitude Mean  time- variable                             |
|tBodyAccMagStdDev                   | numeric   | Body acceleration Magnitude StdDev  time- variable                           |
|tGravityAccMagMean                  | numeric   | Gravity acceleration Magnitude Mean  time- variable                          |
|tGravityAccMagStdDev                | numeric   | Gravity acceleration Magnitude Standard Deviation  time- variable            |
|tBodyAccJerkMagMean                 | numeric   | Body acceleration Jerk Magnitude Mean time- variable                         |
|tBodyAccJerkMagStdDev               | numeric   | Body acceleration Jerk Magnitude Standard Deviation time- variable           |
|tBodyGyroMagMean                    | numeric   | Body Gyro Magnitude Mean  time- variable                                     |
|tBodyGyroMagStdDev                  | numeric   | Body Gyro Magnitude Standard Deviation  time- variable                       |
|tBodyGyroJerkMagMean                | numeric   | Body Gyro Jerk Magnitude Mean time- variable                                 |
|tBodyGyroJerkMagStdDev              | numeric   | Body Gyro Jerk Magnitude Standard Deviation time- variable                   |
|fBodyAccMeanX                       | numeric   | Body acceleration Mean x-axis frequency- variable                            |
|fBodyAccMeanY                       | numeric   | Body acceleration Mean y-axis frequency- variable                            |
|fBodyAccMeanZ                       | numeric   | Body acceleration Mean z-axis frequency- variable                            |
|fBodyAccStdDevX                     | numeric   | Body acceleration Standard Deviation x-axis frequency- variable              |
|fBodyAccStdDevY                     | numeric   | Body acceleration Standard Deviation y-axis frequency- variable              |
|fBodyAccStdDevZ                     | numeric   | Body acceleration Standard Deviation z-axis frequency- variable              |
|fBodyAccJerkMeanX                   | numeric   | Body acceleration Jerk Mean x-axis frequency- variable                       |
|fBodyAccJerkMeanY                   | numeric   | Body acceleration Jerk Mean y-axis frequency- variable                       |
|fBodyAccJerkMeanZ                   | numeric   | Body acceleration Jerk Mean z-axis frequency- variable                       |
|fBodyAccJerkStdDevX                 | numeric   | Body acceleration Jerk Standard Deviation x-axis frequency- variable         |
|fBodyAccJerkStdDevY                 | numeric   | Body acceleration Jerk Standard Deviation y-axis frequency- variable         |
|fBodyAccJerkStdDevZ                 | numeric   | Body acceleration Jerk Standard Deviation z-axis frequency- variable         |
|fBodyGyroMeanX                      | numeric   | Body Gyro Mean x-axis frequency- variable                                    |
|fBodyGyroMeanY                      | numeric   | Body Gyro Mean y-axis frequency- variable                                    |
|fBodyGyroMeanZ                      | numeric   | Body Gyro Mean z-axis frequency- variable                                    |
|fBodyGyroStdDevX                    | numeric   | Body Gyro Standard Deviation x-axis frequency- variable                      |
|fBodyGyroStdDevY                    | numeric   | Body Gyro Standard Deviation y-axis frequency- variable                      |
|fBodyGyroStdDevZ                    | numeric   | Body Gyro Standard Deviation z-axis frequency- variable                      |
|fBodyAccMagMean                     | numeric   | Body acceleration Magnitude Mean  frequency- variable                        |
|fBodyAccMagStdDev                   | numeric   | Body acceleration Magnitude Standard Deviation  frequency- variable          |
|fBodyBodyAccJerkMagMean             | numeric   | Body Body acceleration Jerk Magnitude Mean frequency- variable               |
|fBodyBodyAccJerkMagStdDev           | numeric   | Body Body acceleration Jerk Magnitude Standard Deviation frequency- variable |
|fBodyBodyGyroMagMean                | numeric   | Body Body Gyro  Magnitude Mean frequency- variable                           |
|fBodyBodyGyroMagStdDev              | numeric   | Body Body Gyro Magnitude Standard Deviation  frequency- variable             |
|fBodyBodyGyroJerkMagMean            | numeric   | Body Body Gyro Jerk Magnitude Mean frequency- variable                       |
|fBodyBodyGyroJerkMagStdDev          | numeric   | Body Body Gyro Jerk Magnitude Standard Deviation frequency- variable         |
|angletBodyAccMeangravity            | numeric   | angle Body acceleration Mean  gravity time- variable                         |
|angletBodyAccJerkMeangravityMean    | numeric   | Body acceleration Jerk Mean gravityMean time- variable                       |
|angletBodyGyroMeangravityMean       | numeric   | angle Body Gyro Mean  gravityMean time- variable                             |
|angletBodyGyroJerkMeangravityMean   | numeric   | angle Body Gyro Jerk Mean gravityMean time- variable                         |
|angleXgravityMean                   | numeric   | angle gravity Mean   x-axis - variable                                       |
|angleYgravityMean                   | numeric   | angle gravity Mean   z-axis - variable                                       |
|angleZgravityMean                   | numeric   | angle gravity Mean   z-axis - variable                                       |
                                                                                                                               