# Codebook - summary_data.txt #

### Data Set Information: ###

The following is a description of the original data from the author:  
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, 
where 70% of the volunteers was selected for generating the training data and 30% the test data.
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding 
windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, 
was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, 
therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Notes on data steps: ###
Data is a merged set of x, y and subject files for training and test data. Only data for **mean** and **standard deviation** of measurements have been retained. I have taken this to
**not** include any "meanFreq" measurements so these have been excluded. The final data is the mean of the original measurements for each subject and activity.

## Variables: ##

##### 1. subject #####
- Type - Numeric
- Unique id of the subject performing the activity

##### 2. activity #####
- Type - string
- Description of the activity being measured

* Laying
* Sitting
* Standing
* Walking
* Walking downstairs
* Walking upstairs

The following variables are all numeric and contain the mean of the original measurements for each subject and activity.
Original features are normalised and bounded within [-1,1].

##### 3. TimeDomainBodyAccelerationXaxisMean #####
##### 4. TimeDomainBodyAccelerationYaxisMean #####
##### 5 .TimeDomainBodyAccelerationZaxisMean #####
##### 6. TimeDomainBodyAccelerationXaxisStandardDeviation #####
##### 7. TimeDomainBodyAccelerationYaxisStandardDeviation #####
##### 8. TimeDomainBodyAccelerationZaxisStandardDeviation #####
##### 9. TimeDomainGravityAccelerationXaxisMean #####
##### 10. TimeDomainGravityAccelerationYaxisMean #####
##### 11. TimeDomainGravityAccelerationZaxisMean #####
##### 12. TimeDomainGravityAccelerationXaxisStandardDeviation #####
##### 13. TimeDomainGravityAccelerationYaxisStandardDeviation #####
##### 14. TimeDomainGravityAccelerationZaxisStandardDeviation #####
##### 15. TimeDomainBodyAccelerationJerkXaxisMean #####
##### 16. TimeDomainBodyAccelerationJerkYaxisMean #####
##### 17. TimeDomainBodyAccelerationJerkZaxisMean #####
##### 18. TimeDomainBodyAccelerationJerkXaxisStandardDeviation #####
##### 19. TimeDomainBodyAccelerationJerkYaxisStandardDeviation #####
##### 20. TimeDomainBodyAccelerationJerkZaxisStandardDeviation #####
##### 21. TimeDomainBodyGyroXaxisMean #####
##### 22. TimeDomainBodyGyroYaxisMean #####
##### 23. TimeDomainBodyGyroZaxisMean #####
##### 24. TimeDomainBodyGyroXaxisStandardDeviation #####
##### 25. TimeDomainBodyGyroYaxisStandardDeviation #####
##### 26. TimeDomainBodyGyroZaxisStandardDeviation #####
##### 27. TimeDomainBodyGyroJerkXaxisMean #####
##### 28. TimeDomainBodyGyroJerkYaxisMean #####
##### 29. TimeDomainBodyGyroJerkZaxisMean #####
##### 30. TimeDomainBodyGyroJerkXStandardDeviation #####
##### 31. TimeDomainBodyGyroJerkYaxisStandardDeviation #####
##### 32. TimeDomainBodyGyroJerkZaxisStandardDeviation #####
##### 33. TimeDomainBodyAccelerationMagnitudeMean #####
##### 34. TimeDomainBodyAccelerationMagnitudeStandardDeviation #####
##### 35. TimeDomainGravityAccelerationMagnitudeMean #####
##### 36. TimeDomainGravityAccelerationMagnitudeStandardDeviation #####
##### 37. TimeDomainBodyAccelerationJerkMagnitudeMean #####
##### 38. TimeDomainBodyAccelerationJerkMagnitudeStandardDeviation #####
##### 39. TimeDomainGyroMagnitudeMean #####
##### 40. TimeDomainGyroMagnitudeStandardDeviation #####
##### 41. TimeDomainGyroJerkMagnitudeMean #####
##### 42. TimeDomainGyroJerkMagnitudeStandardDeviation #####
##### 43. FrequencyDomainBodyAccelerationXaxisMean #####
##### 44. FrequencyDomainBodyAccelerationYaxisMean #####
##### 45. FrequencyDomainBodyAccelerationZaxisMean #####
##### 46. FrequencyDomainBodyAccelerationXaxisStandardDeviation #####
##### 47. FrequencyDomainBodyAccelerationYaxisStandardDeviation #####
##### 48. FrequencyDomainBodyAccelerationZaxisStandardDeviation #####
##### 49. FrequencyDomainBodyAcelerationJerkXaxisMean #####
##### 50. FrequencyDomainBodyAccelerationJerkYaxisMean #####
##### 51. FrequencyDomainBodyAccelerationJerkZaxisMean #####
##### 52. FrequencyDomainBodyAccelerationJerkXaxisStandardDeviation #####
##### 53. FrequencyDomainBodyAccelerationJerkYaxisStandardDeviation #####
##### 54. FrequencyDomainBodyAccelerationJerkZaxisStandardDeviation #####
##### 55. FrequencyDomainBodyGyroXaxisMean #####
##### 56. FrequencyDomainBodyGyroYaxisMean #####
##### 57. FrequencyDomainBodyGyroZaxisMean #####
##### 58. FrequencyDomainBodyGyroXaxisStandardDeviation #####
##### 59. FrequencyDomainBodyGyroYaxisStandardDeviation #####
##### 60. FrequencyDomainBodyGyroZaxisStandardDeviation #####
##### 61. FrequencyDomainBodyAccelerationMagnitudeMean #####
##### 62. FrequencyDomainBodyAccelerationMagnitudeStandardDeviation #####
##### 63. FrequencyDomainBodyAccelerationJerkMagnitudeMean #####
##### 64. FrequencyDomainBodyAccelerationJerkMagnitudeStandardDeviation #####
##### 65. FrequencyDomainBodyGyroMagnitudeMean #####
##### 66. FrequencyDomainBodyGyroMagnitudeStandardDeviation #####
##### 67. FrequencyDomainBodyGyroJerkMagnitudeMean #####
##### 68. FrequencyDomainBodyGyroJerkMagnitudeStandardDeviation #####
####
####
License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
2




