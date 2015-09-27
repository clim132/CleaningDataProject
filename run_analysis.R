
# Read in the feature names and activity labels
features <- read.table("UCI\ HAR\ Dataset/features.txt")
activity_labels <- read.table("UCI\ HAR\ Dataset/activity_labels.txt")

#------------------------------------------
# Read in the training data sets individually

subject_train <- read.csv("UCI\ HAR\ Dataset/train/subject_train.txt", header=FALSE)
colnames(subject_train) <- "subject"
y_train <- read.csv("UCI\ HAR\ Dataset/train/y_train.txt",header=FALSE)
colnames(y_train) <- "activity"

x_train <- read.table("UCI\ HAR\ Dataset/train/X_train.txt")
# Convert into data frame
x_train_df <- as.data.frame(x_train)
# Annotate column names
colnames(x_train_df) <- features$V2

# Files in the "Inertial Signals" folder

# ---- Body accel (x,y,z)
body_acc_x_train <- read.table("UCI\ HAR\ Dataset/train/Inertial\ Signals/body_acc_x_train.txt")
body_acc_x_train_df <- as.data.frame(body_acc_x_train)
mean_body_acc_x_train <- as.data.frame(rowMeans(body_acc_x_train_df))
colnames(mean_body_acc_x_train) <- "meanBodyAcc-X"

body_acc_y_train <- read.table("UCI\ HAR\ Dataset/train/Inertial\ Signals/body_acc_y_train.txt")
body_acc_y_train_df <- as.data.frame(body_acc_y_train)
mean_body_acc_y_train <- as.data.frame(rowMeans(body_acc_y_train_df))
colnames(mean_body_acc_y_train) <- "meanBodyAcc-Y"

body_acc_z_train <- read.table("UCI\ HAR\ Dataset/train/Inertial\ Signals/body_acc_z_train.txt")
body_acc_z_train_df <- as.data.frame(body_acc_z_train)
mean_body_acc_z_train <- as.data.frame(rowMeans(body_acc_z_train_df))
colnames(mean_body_acc_z_train) <- "meanBodyAcc-Z"

# ---- Gyro (x,y,z)
body_gyro_x_train <- read.table("UCI\ HAR\ Dataset/train/Inertial\ Signals/body_gyro_x_train.txt")
body_gyro_x_train_df <- as.data.frame(body_gyro_x_train)
mean_body_gyro_x_train <- as.data.frame(rowMeans(body_gyro_x_train_df))
colnames(mean_body_gyro_x_train) <- "meanBodyGyro-X"

body_gyro_y_train <- read.table("UCI\ HAR\ Dataset/train/Inertial\ Signals/body_gyro_y_train.txt")
body_gyro_y_train_df <- as.data.frame(body_gyro_y_train)
mean_body_gyro_y_train <- as.data.frame(rowMeans(body_gyro_y_train_df))
colnames(mean_body_gyro_y_train) <- "meanBodyGyro-Y"

body_gyro_z_train <- read.table("UCI\ HAR\ Dataset/train/Inertial\ Signals/body_gyro_z_train.txt")
body_gyro_z_train_df <- as.data.frame(body_gyro_z_train)
mean_body_gyro_z_train <- as.data.frame(rowMeans(body_gyro_z_train_df))
colnames(mean_body_gyro_z_train) <- "meanBodyGyro-Z"

# ---- Total accel (x,y,z)
total_acc_x_train <- read.table("UCI\ HAR\ Dataset/train/Inertial\ Signals/total_acc_x_train.txt")
total_acc_x_train_df <- as.data.frame(total_acc_x_train)
mean_total_acc_x_train <- as.data.frame(rowMeans(total_acc_x_train_df))
colnames(mean_total_acc_x_train) <- "meanTotalAcc-X"

total_acc_y_train <- read.table("UCI\ HAR\ Dataset/train/Inertial\ Signals/total_acc_y_train.txt")
total_acc_y_train_df <- as.data.frame(total_acc_y_train)
mean_total_acc_y_train <- as.data.frame(rowMeans(total_acc_y_train_df))
colnames(mean_total_acc_y_train) <- "meanTotalAcc-Y"

total_acc_z_train <- read.table("UCI\ HAR\ Dataset/train/Inertial\ Signals/total_acc_z_train.txt")
total_acc_z_train_df <- as.data.frame(total_acc_z_train)
mean_total_acc_z_train <- as.data.frame(rowMeans(total_acc_z_train_df))
colnames(mean_total_acc_z_train) <- "meanTotalAcc-Z"

# Then create a table for training data set
train_df <- cbind(subject_train, y_train, x_train_df,
                  mean_body_acc_x_train,
                  mean_body_acc_y_train,
                  mean_body_acc_z_train,
                  mean_body_gyro_x_train,
                  mean_body_gyro_y_train,
                  mean_body_gyro_z_train,
                  mean_total_acc_x_train,
                  mean_total_acc_y_train,
                  mean_total_acc_z_train)
                  
#------------------------------------------
# Now repeat the same for the test data sets individually

subject_test <- read.csv("UCI\ HAR\ Dataset/test/subject_test.txt", header=FALSE)
colnames(subject_test) <- "subject"
y_test <- read.csv("UCI\ HAR\ Dataset/test/y_test.txt",header=FALSE)
colnames(y_test) <- "activity"

x_test <- read.table("UCI\ HAR\ Dataset/test/X_test.txt")
# Convert into data frame
x_test_df <- as.data.frame(x_test)
# Annotate column names
colnames(x_test_df) <- features$V2

# Files in the "Inertial Signals" folder

# ---- Body accel (x,y,z)
body_acc_x_test <- read.table("UCI\ HAR\ Dataset/test/Inertial\ Signals/body_acc_x_test.txt")
body_acc_x_test_df <- as.data.frame(body_acc_x_test)
mean_body_acc_x_test <- as.data.frame(rowMeans(body_acc_x_test_df))
colnames(mean_body_acc_x_test) <- "meanBodyAcc-X"

body_acc_y_test <- read.table("UCI\ HAR\ Dataset/test/Inertial\ Signals/body_acc_y_test.txt")
body_acc_y_test_df <- as.data.frame(body_acc_y_test)
mean_body_acc_y_test <- as.data.frame(rowMeans(body_acc_y_test_df))
colnames(mean_body_acc_y_test) <- "meanBodyAcc-Y"

body_acc_z_test <- read.table("UCI\ HAR\ Dataset/test/Inertial\ Signals/body_acc_z_test.txt")
body_acc_z_test_df <- as.data.frame(body_acc_z_test)
mean_body_acc_z_test <- as.data.frame(rowMeans(body_acc_z_test_df))
colnames(mean_body_acc_z_test) <- "meanBodyAcc-Z"

# ---- Gyro (x,y,z)
body_gyro_x_test <- read.table("UCI\ HAR\ Dataset/test/Inertial\ Signals/body_gyro_x_test.txt")
body_gyro_x_test_df <- as.data.frame(body_gyro_x_test)
mean_body_gyro_x_test <- as.data.frame(rowMeans(body_gyro_x_test_df))
colnames(mean_body_gyro_x_test) <- "meanBodyGyro-X"

body_gyro_y_test <- read.table("UCI\ HAR\ Dataset/test/Inertial\ Signals/body_gyro_y_test.txt")
body_gyro_y_test_df <- as.data.frame(body_gyro_y_test)
mean_body_gyro_y_test <- as.data.frame(rowMeans(body_gyro_y_test_df))
colnames(mean_body_gyro_y_test) <- "meanBodyGyro-Y"

body_gyro_z_test <- read.table("UCI\ HAR\ Dataset/test/Inertial\ Signals/body_gyro_z_test.txt")
body_gyro_z_test_df <- as.data.frame(body_gyro_z_test)
mean_body_gyro_z_test <- as.data.frame(rowMeans(body_gyro_z_test_df))
colnames(mean_body_gyro_z_test) <- "meanBodyGyro-Z"

# ---- Total accel (x,y,z)
total_acc_x_test <- read.table("UCI\ HAR\ Dataset/test/Inertial\ Signals/total_acc_x_test.txt")
total_acc_x_test_df <- as.data.frame(total_acc_x_test)
mean_total_acc_x_test <- as.data.frame(rowMeans(total_acc_x_test_df))
colnames(mean_total_acc_x_test) <- "meanTotalAcc-X"

total_acc_y_test <- read.table("UCI\ HAR\ Dataset/test/Inertial\ Signals/total_acc_y_test.txt")
total_acc_y_test_df <- as.data.frame(total_acc_y_test)
mean_total_acc_y_test <- as.data.frame(rowMeans(total_acc_y_test_df))
colnames(mean_total_acc_y_test) <- "meanTotalAcc-Y"

total_acc_z_test <- read.table("UCI\ HAR\ Dataset/test/Inertial\ Signals/total_acc_z_test.txt")
total_acc_z_test_df <- as.data.frame(total_acc_z_test)
mean_total_acc_z_test <- as.data.frame(rowMeans(total_acc_z_test_df))
colnames(mean_total_acc_z_test) <- "meanTotalAcc-Z"

# Then create a table for testing data set
test_df <- cbind(subject_test, y_test, x_test_df,
                 mean_body_acc_x_test,
                 mean_body_acc_y_test,
                 mean_body_acc_z_test,
                 mean_body_gyro_x_test,
                 mean_body_gyro_y_test,
                 mean_body_gyro_z_test,
                 mean_total_acc_x_test,
                 mean_total_acc_y_test,
                 mean_total_acc_z_test)

#------------------------------------------
# Combine the training and test data frames
combined_df <- rbind(train_df, test_df)

#------------------------------------------
# Use dplyr library
library(dplyr)

# Eliminate columns with duplicate names
clean_combined_df <- combined_df[,!duplicated(colnames(combined_df))]

# Select columns that contain "mean" or "std", together with "subject" and "activity"
extracted_df <- select(clean_combined_df, subject, activity, contains("mean"), contains("std"))

# Change the activity into a factor
extracted_df$activity <- factor(extracted_df$activity, labels=activity_labels$V2)

#------------------------------------------
# Group by subject and activity
grouped_df <- group_by(extracted_df, subject, activity)

# Compute the mean of every column for each (subject, activity) group
summarized_df <- summarise_each(grouped_df, funs(mean))

narrow_tidy_df <- gather(summarized_df, signal, mean, -(subject:activity))
head(narrow_tidy_df)

#------------------------------------------- 
# Since the strings for "measur" cannot be consistently split into 2 or 3 pieces, there is
# no attempt to further organize the table, e.g.
#         tBodyAccMag-mean()
#         tBodyAcc-mean()-X

# narrow_tidy_df2 <- separate(narrow_tidy_df, measure, 
#                            into=c("signal","statistic","dir"), 
#                            sep="-")

#------------------------------------------
# Write out the results
write.table(narrow_tidy_df, "tidy.txt", row.names=FALSE)
