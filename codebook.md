# Tidy.txt Codebook
## Overview
The data of 'tidy.txt' was produced as a summary of the means of measures selected
from the 'UCI HAR Dataset' grouped by activity.  The original data was in two parts ('test' and 'train'). Once having added unique column names from 'features.txt' and added the respective 'Subject' and 'Activity' columns, both data frames were made as one using 'rbind' as the data frame dimensions matched. The 66 measures were selected which contained either 'mean()' or 'std()' only and no additional means were used as they were demarcated separately and assumed not to be the same as the prior identified features within 'features_info.txt'. This is 'Tidy Data' as each column contains values specific to each individual variable and the column names are clearly descirbed with the accompanyment of this codebook.

The data set examined has the following dimensions:
|Feature                 |   Result
|------------------------| --------:
|Number of observations  |        6
|Number of variables     |       67


## Activity Description
There are six activities apparent in the data:
* Laying
* Sitting
* Standing
* Walking
* Walking Downstairs
* Walking Upstairs


## Measurement Description
The table below describes each of the attributes embedded within a column name. 
Here is the original extract from features_info.txt:

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote >time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to >remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass >Butterworth filter with a corner frequency of 0.3 Hz. 
>
>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of >these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
>
>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, >fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
>
>These signals were used to estimate variables of the feature vector for each pattern:  
>'-X/Y/Z' is used to denote 3-axial signals in the X, Y and Z directions.

### Example
The column named '253_tBodyGyroJerkMag-mean()' breaks down as: the mean of the 253th column, prefixed with time, a body gyroscope signal, showing the magnitude of jerk activity.

|Name Attribute     | Description|
|:-----------------:| ------------------------------------------------------------|
|123_               | Indicates the original column number derived from the 561columns names of feature.txt from the source data. As all features were not unique the makeshift index was used to allow all features to have unique column names.|  
|t                  | Denotes time as a prefix.
|f                  | Denotes filtered signal as a prefix. A Fast Fourier Transform (FFT) was applied.
|BodyAcc            | Body acceleration signal.
|GravityAcc         | Gravity acceleration signal.
|BodyGyro           | Body gyroscope signal.
|Jerk               | Jerk signal activity using linear acceleration and angular velocity.
|Mag                | Magnitude of three-dimensional signals were calculated using the Euclidean norm.
|X/Y/Z              | Used to denote 3-axial signal in the X, Y or Z direction.

## List of Variables
"Activity" 
"1_tBodyAcc-mean()-X" 
"2_tBodyAcc-mean()-Y" 
"3_tBodyAcc-mean()-Z" 
"41_tGravityAcc-mean()-X" 
"42_tGravityAcc-mean()-Y" 
"43_tGravityAcc-mean()-Z" 
"81_tBodyAccJerk-mean()-X" 
"82_tBodyAccJerk-mean()-Y" 
"83_tBodyAccJerk-mean()-Z" 
"121_tBodyGyro-mean()-X" 
"122_tBodyGyro-mean()-Y"
"123_tBodyGyro-mean()-Z"
"161_tBodyGyroJerk-mean()-X" 
"162_tBodyGyroJerk-mean()-Y"
"163_tBodyGyroJerk-mean()-Z"
"201_tBodyAccMag-mean()"
"214_tGravityAccMag-mean()"
"227_tBodyAccJerkMag-mean()"
"240_tBodyGyroMag-mean()" 
"253_tBodyGyroJerkMag-mean()" 
"266_fBodyAcc-mean()-X" 
"267_fBodyAcc-mean()-Y" 
"268_fBodyAcc-mean()-Z" 
"345_fBodyAccJerk-mean()-X" 
"346_fBodyAccJerk-mean()-Y" 
"347_fBodyAccJerk-mean()-Z" 
"424_fBodyGyro-mean()-X" 
"425_fBodyGyro-mean()-Y" 
"426_fBodyGyro-mean()-Z" 
"503_fBodyAccMag-mean()" 
"516_fBodyBodyAccJerkMag-mean()" 
"529_fBodyBodyGyroMag-mean()" 
"542_fBodyBodyGyroJerkMag-mean()" 
"4_tBodyAcc-std()-X" 
"5_tBodyAcc-std()-Y" 
"6_tBodyAcc-std()-Z" 
"44_tGravityAcc-std()-X" 
"45_tGravityAcc-std()-Y"
"46_tGravityAcc-std()-Z"
"84_tBodyAccJerk-std()-X"
"85_tBodyAccJerk-std()-Y"
"86_tBodyAccJerk-std()-Z"
"124_tBodyGyro-std()-X"
"125_tBodyGyro-std()-Y"
"126_tBodyGyro-std()-Z"
"164_tBodyGyroJerk-std()-X"
"165_tBodyGyroJerk-std()-Y"
"166_tBodyGyroJerk-std()-Z"
"202_tBodyAccMag-std()"
"215_tGravityAccMag-std()"
"228_tBodyAccJerkMag-std()"
"241_tBodyGyroMag-std()"
"254_tBodyGyroJerkMag-std()"
"269_fBodyAcc-std()-X" 
"270_fBodyAcc-std()-Y" 
"271_fBodyAcc-std()-Z" 
"348_fBodyAccJerk-std()-X" 
"349_fBodyAccJerk-std()-Y" 
"350_fBodyAccJerk-std()-Z" 
"427_fBodyGyro-std()-X" 
"428_fBodyGyro-std()-Y" 
"429_fBodyGyro-std()-Z" 
"504_fBodyAccMag-std()" 
"517_fBodyBodyAccJerkMag-std()" 
"530_fBodyBodyGyroMag-std()" 
"543_fBodyBodyGyroJerkMag-std()"
