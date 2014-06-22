# Features description

Derived tidy data contains the same features as original data, but with few differences:

* To allow working with data in R without escaping special characters all columns were renamed. Following characters were replaced: comma ",", dash "-", parenthesis "()". They all replaced with underscore "_"
* Only selection of features containing "mean" or "std" in there name are chosen (as per instructions in assignment)
* Features in thid data set represent not data of each observation but average value per activity per subject (as per instructions in assignment)

In all other meanings features are the same. Next section of the file is copied from "features_info.txt" from original data set with difference that non-mean and non-std features are excluded. Last section of the file contains full list of features contained in tidy data set.

# Original features description

## Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc_XYZ, fBodyAccJerk_XYZ, fBodyGyro_XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'_XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc_XYZ
* tGravityAcc_XYZ
* tBodyAccJerk_XYZ
* tBodyGyro_XYZ
* tBodyGyroJerk_XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc_XYZ
* fBodyAccJerk_XYZ
* fBodyGyro_XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean__: Mean value
* std__: Standard deviation
* meanFreq__: Weighted average of the frequency components to obtain a mean frequency

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

# Complete list of features

* activity
* subject_id
* tBodyAcc_mean___X
* tBodyAcc_mean___Y
* tBodyAcc_mean___Z
* tBodyAcc_std___X
* tBodyAcc_std___Y
* tBodyAcc_std___Z
* tGravityAcc_mean___X
* tGravityAcc_mean___Y
* tGravityAcc_mean___Z
* tGravityAcc_std___X
* tGravityAcc_std___Y
* tGravityAcc_std___Z
* tBodyAccJerk_mean___X
* tBodyAccJerk_mean___Y
* tBodyAccJerk_mean___Z
* tBodyAccJerk_std___X
* tBodyAccJerk_std___Y
* tBodyAccJerk_std___Z
* tBodyGyro_mean___X
* tBodyGyro_mean___Y
* tBodyGyro_mean___Z
* tBodyGyro_std___X
* tBodyGyro_std___Y
* tBodyGyro_std___Z
* tBodyGyroJerk_mean___X
* tBodyGyroJerk_mean___Y
* tBodyGyroJerk_mean___Z
* tBodyGyroJerk_std___X
* tBodyGyroJerk_std___Y
* tBodyGyroJerk_std___Z
* tBodyAccMag_mean__
* tBodyAccMag_std__
* tGravityAccMag_mean__
* tGravityAccMag_std__
* tBodyAccJerkMag_mean__
* tBodyAccJerkMag_std__
* tBodyGyroMag_mean__
* tBodyGyroMag_std__
* tBodyGyroJerkMag_mean__
* tBodyGyroJerkMag_std__
* fBodyAcc_mean___X
* fBodyAcc_mean___Y
* fBodyAcc_mean___Z
* fBodyAcc_std___X
* fBodyAcc_std___Y
* fBodyAcc_std___Z
* fBodyAcc_meanFreq___X
* fBodyAcc_meanFreq___Y
* fBodyAcc_meanFreq___Z
* fBodyAccJerk_mean___X
* fBodyAccJerk_mean___Y
* fBodyAccJerk_mean___Z
* fBodyAccJerk_std___X
* fBodyAccJerk_std___Y
* fBodyAccJerk_std___Z
* fBodyAccJerk_meanFreq___X
* fBodyAccJerk_meanFreq___Y
* fBodyAccJerk_meanFreq___Z
* fBodyGyro_mean___X
* fBodyGyro_mean___Y
* fBodyGyro_mean___Z
* fBodyGyro_std___X
* fBodyGyro_std___Y
* fBodyGyro_std___Z
* fBodyGyro_meanFreq___X
* fBodyGyro_meanFreq___Y
* fBodyGyro_meanFreq___Z
* fBodyAccMag_mean__
* fBodyAccMag_std__
* fBodyAccMag_meanFreq__
* fBodyBodyAccJerkMag_mean__
* fBodyBodyAccJerkMag_std__
* fBodyBodyAccJerkMag_meanFreq__
* fBodyBodyGyroMag_mean__
* fBodyBodyGyroMag_std__
* fBodyBodyGyroMag_meanFreq__
* fBodyBodyGyroJerkMag_mean__
* fBodyBodyGyroJerkMag_std__
* fBodyBodyGyroJerkMag_meanFreq__
* angle_tBodyAccMean_gravity_
* angle_tBodyAccJerkMean__gravityMean_
* angle_tBodyGyroMean_gravityMean_
* angle_tBodyGyroJerkMean_gravityMean_
* angle_X_gravityMean_
* angle_Y_gravityMean_
* angle_Z_gravityMean_
