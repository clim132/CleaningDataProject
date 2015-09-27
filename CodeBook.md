The data sets used to construct the final data come from these files:

* train/X_train.txt
* train/y_train.txt
* train/subject_train.txt

* test/X_test.txt
* test/y_train.txt
* test/subject_test.txt

#### Feature names and activity labels
First the various feature names (signals) are read in from "features.txt".  Similarly for the activity labels, they are read in from "activity_labels.txt".

#### Reading in data sets + Data frame construction

I started with the files in the "train" folder

* subject_train.txt is read in as a data frame with single column.  The column name is renamed as "subject".
* y_train.txt is read in as a data-frame with single column.  The column name is renamed to "activity"
* X_train.txt is read in as a table and converted into a data frame.  Its column names are taken 

The above is combined into a data frame for training data (=train_df)

Same treatment for the files in the "test" folder.  This gives a data frame for test data (=test_df).

The two data frames for training and test data are combined into a single data frame.

#### Cleaning up

The feature names (signale) are not unique, so multiple columns exist with same name.  First eliminate duplicated columns.

Build a wide table with only the following column names:

* subject
* activity
* any column name with "mean" or "std"

Also modify the activity values from "int" to factors.

#### Summarizing

Construct a new data frame which is based on grouping the previous result by (subject, activity).

For each (subject, activity) combination, compute the average of the various signels (e.g. tBodyAccMag-mean(), tBodyAcc-mean()-X, etc..)

This would give us a wide tidy data set.

We can make it into a narrow tidy data set, by treating all the feature names (e.g. tBodyAcc-mean()-X, tBodyAcc-mean()-Y, etc) as values of a single vairable "signal".  This is the result of "narrow_tidy_df"

Since the strings for "measur" cannot be consistently split into 2 or 3 pieces, there is no attempt to further organize the table, e.g. tBodyAccMag-mean(), tBodyAcc-mean()-X, will be broken into 2 or 3 components if I try to separate them.


#### Output

Use write.table to write "narrow_tidy.df" to a file and drop off the row names.





