# Tidy.txt Codebook
## Overview
The data of 'tidy.txt' was produced as a summary of the means of measures selected
from the 'UCI HAR Dataset' grouped by activity.  The original data was in two parts ('test' and 'train'). Once having added unique column names from 'features.txt' and added the respective 'Subject' and 'Activity' columns, both data frames were made as one using 'rbind' as the data frame dimensions matched. The 66 measures were selected which contained either 'mean()' or 'std()' only and no additional means were used as they were demarcated separately and assumed not to be the same as the prior identified features within 'features_info.txt'.

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







