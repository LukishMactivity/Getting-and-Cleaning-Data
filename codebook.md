---
title: "Codebook for UCI HAR Tidy.txt"
date: '2021-01-16'
---

# Overview
The data of tidy.txt was produced as a summary of the means 66 measures selected
from the 'UCI HAR Dataset' grouped by activity.  The original data was in two parts ('test' and 'train'). Once having added unique column names from 'features.txt' and added the respective 'Subject' and 'Activity' columns, both data frames were made as one using 'rbind' as the data frame dimensions matched. The 66 measures were selected which contained either 'mean()' or 'std()' only and not any additional means were used as they were demarcated separately and assumed not to be the same as the prior identified features within 'features_info.txt'.

The data set examined has the following dimensions:


---------------------------------
Feature                    Result
------------------------ --------
Number of observations          6

Number of variables            67
---------------------------------

# Activity Description

There are six activities apparent in the data:

* Laying
* Sitting
* Standing
* Walking
* Walking Downstairs
* Walking Upstairs


# Measurement Description

--------------------------------------------------------------------------------
Name Attribute      Description
------------------- ------------------------------------------------------------
123_                Indicates the original column number derived from the 561                       columns names of feature.txt from the source data. As all                       features were not unique the makeshift index was used to                        allow all features to have unique column names.  

t                   Denotes time as a prefix.

f                   Denotes filtered signal as a prefix. A Fast Fourier                             Transform (FFT) was applied.

BodyAcc             Body acceleration signal.

GravityAcc          Gravity acceleration signal.

BodyGyro            Body gyroscope signal.

Jerk                Jerk signal activity using linear acceleration and angular                      velocity.

Mag                 Magnitude of three-dimensional signals were calculated                          using the Euclidean norm.

X/Y/Z               Used to denote 3-axial signal in the X, Y or Z direction.
--------------------------------------------------------------------------------

# Summary Table

-----------------------------------------------------------------------------------------------
Label   Variable                                 Class         # unique  Missing  
                                                                 values                        
------- ---------------------------------------- ----------- ---------- --------- -------------
        **[Activity]**                           character            6  0.00 %                

        **[1\_tBodyAcc-mean()-X]**               numeric              6  0.00 %                

        **[2\_tBodyAcc-mean()-Y]**               numeric              6  0.00 %                

        **[3\_tBodyAcc-mean()-Z]**               numeric              6  0.00 %                

        **[41\_tGravityAcc-mean()-X]**           numeric              6  0.00 %                

        **[42\_tGravityAcc-mean()-Y]**           numeric              6  0.00 %                

        **[43\_tGravityAcc-mean()-Z]**           numeric              6  0.00 %                

        **[81\_tBodyAccJerk-mean()-X]**          numeric              6  0.00 %                

        **[82\_tBodyAccJerk-mean()-Y]**          numeric              6  0.00 %                

        **[83\_tBodyAccJerk-mean()-Z]**          numeric              6  0.00 %                

        **[121\_tBodyGyro-mean()-X]**            numeric              6  0.00 %                

        **[122\_tBodyGyro-mean()-Y]**            numeric              6  0.00 %                

        **[123\_tBodyGyro-mean()-Z]**            numeric              6  0.00 %                

        **[161\_tBodyGyroJerk-mean()-X]**        numeric              6  0.00 %                

        **[162\_tBodyGyroJerk-mean()-Y]**        numeric              6  0.00 %                

        **[163\_tBodyGyroJerk-mean()-Z]**        numeric              6  0.00 %                

        **[201\_tBodyAccMag-mean()]**            numeric              6  0.00 %                

        **[214\_tGravityAccMag-mean()]**         numeric              6  0.00 %                

        **[227\_tBodyAccJerkMag-mean()]**        numeric              6  0.00 %                

        **[240\_tBodyGyroMag-mean()]**           numeric              6  0.00 %                

        **[253\_tBodyGyroJerkMag-mean()]**       numeric              6  0.00 %                

        **[266\_fBodyAcc-mean()-X]**             numeric              6  0.00 %                

        **[267\_fBodyAcc-mean()-Y]**             numeric              6  0.00 %                

        **[268\_fBodyAcc-mean()-Z]**             numeric              6  0.00 %                

        **[345\_fBodyAccJerk-mean()-X]**         numeric              6  0.00 %                

        **[346\_fBodyAccJerk-mean()-Y]**         numeric              6  0.00 %                

        **[347\_fBodyAccJerk-mean()-Z]**         numeric              6  0.00 %                

        **[424\_fBodyGyro-mean()-X]**            numeric              6  0.00 %                

        **[425\_fBodyGyro-mean()-Y]**            numeric              6  0.00 %                

        **[426\_fBodyGyro-mean()-Z]**            numeric              6  0.00 %                

        **[503\_fBodyAccMag-mean()]**            numeric              6  0.00 %                

        **[516\_fBodyBodyAccJerkMag-mean()]**    numeric              6  0.00 %                

        **[529\_fBodyBodyGyroMag-mean()]**       numeric              6  0.00 %                

        **[542\_fBodyBodyGyroJerkMag-mean()]**   numeric              6  0.00 %                

        **[4\_tBodyAcc-std()-X]**                numeric              6  0.00 %                

        **[5\_tBodyAcc-std()-Y]**                numeric              6  0.00 %                

        **[6\_tBodyAcc-std()-Z]**                numeric              6  0.00 %                

        **[44\_tGravityAcc-std()-X]**            numeric              6  0.00 %                

        **[45\_tGravityAcc-std()-Y]**            numeric              6  0.00 %                

        **[46\_tGravityAcc-std()-Z]**            numeric              6  0.00 %                

        **[84\_tBodyAccJerk-std()-X]**           numeric              6  0.00 %                

        **[85\_tBodyAccJerk-std()-Y]**           numeric              6  0.00 %                

        **[86\_tBodyAccJerk-std()-Z]**           numeric              6  0.00 %                

        **[124\_tBodyGyro-std()-X]**             numeric              6  0.00 %                

        **[125\_tBodyGyro-std()-Y]**             numeric              6  0.00 %                

        **[126\_tBodyGyro-std()-Z]**             numeric              6  0.00 %                

        **[164\_tBodyGyroJerk-std()-X]**         numeric              6  0.00 %                

        **[165\_tBodyGyroJerk-std()-Y]**         numeric              6  0.00 %                

        **[166\_tBodyGyroJerk-std()-Z]**         numeric              6  0.00 %                

        **[202\_tBodyAccMag-std()]**             numeric              6  0.00 %                

        **[215\_tGravityAccMag-std()]**          numeric              6  0.00 %                

        **[228\_tBodyAccJerkMag-std()]**         numeric              6  0.00 %                

        **[241\_tBodyGyroMag-std()]**            numeric              6  0.00 %                

        **[254\_tBodyGyroJerkMag-std()]**        numeric              6  0.00 %                

        **[269\_fBodyAcc-std()-X]**              numeric              6  0.00 %                

        **[270\_fBodyAcc-std()-Y]**              numeric              6  0.00 %                

        **[271\_fBodyAcc-std()-Z]**              numeric              6  0.00 %                

        **[348\_fBodyAccJerk-std()-X]**          numeric              6  0.00 %                

        **[349\_fBodyAccJerk-std()-Y]**          numeric              6  0.00 %                

        **[350\_fBodyAccJerk-std()-Z]**          numeric              6  0.00 %                

        **[427\_fBodyGyro-std()-X]**             numeric              6  0.00 %                

        **[428\_fBodyGyro-std()-Y]**             numeric              6  0.00 %                

        **[429\_fBodyGyro-std()-Z]**             numeric              6  0.00 %                

        **[504\_fBodyAccMag-std()]**             numeric              6  0.00 %                

        **[517\_fBodyBodyAccJerkMag-std()]**     numeric              6  0.00 %                

        **[530\_fBodyBodyGyroMag-std()]**        numeric              6  0.00 %                

        **[543\_fBodyBodyGyroJerkMag-std()]**    numeric              6  0.00 %                
-----------------------------------------------------------------------------------------------




