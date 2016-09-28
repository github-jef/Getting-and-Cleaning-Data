# Library
library(dplyr)

# Read in train data
# Assumes data is in current working directory
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Read in test data
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Load labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
features_text <- read.table("./UCI HAR Dataset/features.txt")
features_labels <- features_text[,2]

# Label x data
colnames(x_test) <- features_labels
colnames(x_train) <- features_labels

# Keep only those to do with mean and std
x_test <- x_test[grep("mean|std", colnames(x_test))]
x_train <- x_train[grep("mean|std", colnames(x_train))]

# Add subject and y (activity) data
test_data <- cbind(subject_test, y_test, x_test)
train_data <- cbind(subject_train, y_train, x_train)

# merge x_test and x_train
total_data <- rbind(test_data, train_data)

# label subject and activity columns
colnames(total_data)[1:2] <- c("subject", "activity")

# Drop the meanFreq columns
total_data <- select(total_data, -(grep("Freq", colnames(total_data))))

# transform activity numbers to text
total_data[total_data$activity==1,2] <- "Walking"
total_data[total_data$activity==2,2] <- "Walking upstairs"
total_data[total_data$activity==3,2] <- "Walking downstairs"
total_data[total_data$activity==4,2] <- "Sitting"
total_data[total_data$activity==5,2] <- "Standing"
total_data[total_data$activity==6,2] <- "Laying"


# Clean up
remove("activity_labels")
remove("features_text")
remove("subject_test")
remove("subject_train")
remove("test_data")
remove("train_data")
remove("x_test")
remove("x_train")
remove("y_test")
remove("y_train")
remove("features_labels")

# Add tidy column Labels
colnames(total_data)[3:68] <- c("TimeDomainBodyAccelerationXaxisMean",
                                "TimeDomainBodyAccelerationYaxisMean",
                                "TimeDomainBodyAccelerationZaxisMean",
                                "TimeDomainBodyAccelerationXaxisStandardDeviation",
                                "TimeDomainBodyAccelerationYaxisStandardDeviation",
                                "TimeDomainBodyAccelerationZaxisStandardDeviation",
                                "TimeDomainGravityAccelerationXaxisMean",
                                "TimeDomainGravityAccelerationYaxisMean",
                                "TimeDomainGravityAccelerationZaxisMean",
                                "TimeDomainGravityAccelerationXaxisStandardDeviation",
                                "TimeDomainGravityAccelerationYaxisStandardDeviation",
                                "TimeDomainGravityAccelerationZaxisStandardDeviation",
                                "TimeDomainBodyAccelerationJerkXaxisMean",
                                "TimeDomainBodyAccelerationJerkYaxisMean",
                                "TimeDomainBodyAccelerationJerkZaxisMean",
                                "TimeDomainBodyAccelerationJerkXaxisStandardDeviation",
                                "TimeDomainBodyAccelerationJerkYaxisStandardDeviation",
                                "TimeDomainBodyAccelerationJerkZaxisStandardDeviation",
                                "TimeDomainBodyGyroXaxisMean",
                                "TimeDomainBodyGyroYaxisMean",
                                "TimeDomainBodyGyroZaxisMean",
                                "TimeDomainBodyGyroXaxisStandardDeviation",
                                "TimeDomainBodyGyroYaxisStandardDeviation",
                                "TimeDomainBodyGyroZaxisStandardDeviation",
                                "TimeDomainBodyGyroJerkXaxisMean",
                                "TimeDomainBodyGyroJerkYaxisMean",
                                "TimeDomainBodyGyroJerkZaxisMean",
                                "TimeDomainBodyGyroJerkXStandardDeviation",
                                "TimeDomainBodyGyroJerkYaxisStandardDeviation",
                                "TimeDomainBodyGyroJerkZaxisStandardDeviation",
                                "TimeDomainBodyAccelerationMagnitudeMean",
                                "TimeDomainBodyAccelerationMagnitudeStandardDeviation",
                                "TimeDomainGravityAccelerationMagnitudeMean",
                                "TimeDomainGravityAccelerationMagnitudeStandardDeviation",
                                "TimeDomainBodyAccelerationJerkMagnitudeMean",
                                "TimeDomainBodyAccelerationJerkMagnitudeStandardDeviation",
                                "TimeDomainGyroMagnitudeMean",
                                "TimeDomainGyroMagnitudeStandardDeviation",
                                "TimeDomainGyroJerkMagnitudeMean",
                                "TimeDomainGyroJerkMagnitudeStandardDeviation",
                                "FrequencyDomainBodyAccelerationXaxisMean",
                                "FrequencyDomainBodyAccelerationYaxisMean",
                                "FrequencyDomainBodyAccelerationZaxisMean",
                                "FrequencyDomainBodyAccelerationXaxisStandardDeviation",
                                "FrequencyDomainBodyAccelerationYaxisStandardDeviation",
                                "FrequencyDomainBodyAccelerationZaxisStandardDeviation",
                                "FrequencyDomainBodyAcelerationJerkXaxisMean",
                                "FrequencyDomainBodyAccelerationJerkYaxisMean",
                                "FrequencyDomainBodyAccelerationJerkZaxisMean",
                                "FrequencyDomainBodyAccelerationJerkXaxisStandardDeviation",
                                "FrequencyDomainBodyAccelerationJerkYaxisStandardDeviation",
                                "FrequencyDomainBodyAccelerationJerkZaxisStandardDeviation",
                                "FrequencyDomainBodyGyroXaxisMean",
                                "FrequencyDomainBodyGyroYaxisMean",
                                "FrequencyDomainBodyGyroZaxisMean",
                                "FrequencyDomainBodyGyroXaxisStandardDeviation",
                                "FrequencyDomainBodyGyroYaxisStandardDeviation",
                                "FrequencyDomainBodyGyroZaxisStandardDeviation",
                                "FrequencyDomainBodyAccelerationMagnitudeMean",
                                "FrequencyDomainBodyAccelerationMagnitudeStandardDeviation",
                                "FrequencyDomainBodyAccelerationJerkMagnitudeMean",
                                "FrequencyDomainBodyAccelerationJerkMagnitudeStandardDeviation",
                                "FrequencyDomainBodyGyroMagnitudeMean",
                                "FrequencyDomainBodyGyroMagnitudeStandardDeviation",
                                "FrequencyDomainBodyGyroJerkMagnitudeMean",
                                "FrequencyDomainBodyGyroJerkMagnitudeStandardDeviation")

# Create new summary data from of averages by subject

summary_data <- 
total_data %>%
  group_by(subject, activity) %>%
  summarise_each(funs(mean), TimeDomainBodyAccelerationXaxisMean,
                 TimeDomainBodyAccelerationYaxisMean,
                 TimeDomainBodyAccelerationZaxisMean,
                 TimeDomainBodyAccelerationXaxisStandardDeviation,
                 TimeDomainBodyAccelerationYaxisStandardDeviation,
                 TimeDomainBodyAccelerationZaxisStandardDeviation,
                 TimeDomainGravityAccelerationXaxisMean,
                 TimeDomainGravityAccelerationYaxisMean,
                 TimeDomainGravityAccelerationZaxisMean,
                 TimeDomainGravityAccelerationXaxisStandardDeviation,
                 TimeDomainGravityAccelerationYaxisStandardDeviation,
                 TimeDomainGravityAccelerationZaxisStandardDeviation,
                 TimeDomainBodyAccelerationJerkXaxisMean,
                 TimeDomainBodyAccelerationJerkYaxisMean,
                 TimeDomainBodyAccelerationJerkZaxisMean,
                 TimeDomainBodyAccelerationJerkXaxisStandardDeviation,
                 TimeDomainBodyAccelerationJerkYaxisStandardDeviation,
                 TimeDomainBodyAccelerationJerkZaxisStandardDeviation,
                 TimeDomainBodyGyroXaxisMean,
                 TimeDomainBodyGyroYaxisMean,
                 TimeDomainBodyGyroZaxisMean,
                 TimeDomainBodyGyroXaxisStandardDeviation,
                 TimeDomainBodyGyroYaxisStandardDeviation,
                 TimeDomainBodyGyroZaxisStandardDeviation,
                 TimeDomainBodyGyroJerkXaxisMean,
                 TimeDomainBodyGyroJerkYaxisMean,
                 TimeDomainBodyGyroJerkZaxisMean,
                 TimeDomainBodyGyroJerkXStandardDeviation,
                 TimeDomainBodyGyroJerkYaxisStandardDeviation,
                 TimeDomainBodyGyroJerkZaxisStandardDeviation,
                 TimeDomainBodyAccelerationMagnitudeMean,
                 TimeDomainBodyAccelerationMagnitudeStandardDeviation,
                 TimeDomainGravityAccelerationMagnitudeMean,
                 TimeDomainGravityAccelerationMagnitudeStandardDeviation,
                 TimeDomainBodyAccelerationJerkMagnitudeMean,
                 TimeDomainBodyAccelerationJerkMagnitudeStandardDeviation,
                 TimeDomainGyroMagnitudeMean,
                 TimeDomainGyroMagnitudeStandardDeviation,
                 TimeDomainGyroJerkMagnitudeMean,
                 TimeDomainGyroJerkMagnitudeStandardDeviation,
                 FrequencyDomainBodyAccelerationXaxisMean,
                 FrequencyDomainBodyAccelerationYaxisMean,
                 FrequencyDomainBodyAccelerationZaxisMean,
                 FrequencyDomainBodyAccelerationXaxisStandardDeviation,
                 FrequencyDomainBodyAccelerationYaxisStandardDeviation,
                 FrequencyDomainBodyAccelerationZaxisStandardDeviation,
                 FrequencyDomainBodyAcelerationJerkXaxisMean,
                 FrequencyDomainBodyAccelerationJerkYaxisMean,
                 FrequencyDomainBodyAccelerationJerkZaxisMean,
                 FrequencyDomainBodyAccelerationJerkXaxisStandardDeviation,
                 FrequencyDomainBodyAccelerationJerkYaxisStandardDeviation,
                 FrequencyDomainBodyAccelerationJerkZaxisStandardDeviation,
                 FrequencyDomainBodyGyroXaxisMean,
                 FrequencyDomainBodyGyroYaxisMean,
                 FrequencyDomainBodyGyroZaxisMean,
                 FrequencyDomainBodyGyroXaxisStandardDeviation,
                 FrequencyDomainBodyGyroYaxisStandardDeviation,
                 FrequencyDomainBodyGyroZaxisStandardDeviation,
                 FrequencyDomainBodyAccelerationMagnitudeMean,
                 FrequencyDomainBodyAccelerationMagnitudeStandardDeviation,
                 FrequencyDomainBodyAccelerationJerkMagnitudeMean,
                 FrequencyDomainBodyAccelerationJerkMagnitudeStandardDeviation,
                 FrequencyDomainBodyGyroMagnitudeMean,
                 FrequencyDomainBodyGyroMagnitudeStandardDeviation,
                 FrequencyDomainBodyGyroJerkMagnitudeMean,
                 FrequencyDomainBodyGyroJerkMagnitudeStandardDeviation)

# Write summary_data to file
write.table(summary_data, file = "summary_data.txt", row.names = FALSE, col.names = TRUE)


