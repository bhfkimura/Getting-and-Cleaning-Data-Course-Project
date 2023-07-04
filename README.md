The Human Activity Recognition database was built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. For further details, see:

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>.

The data is available at:

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

Please, download the data from the link above and extract it into the same folder where the script run_analysis.R is located.

The script operates as follows:

1.  Import activity labels and the feature names in *activity_labels.txt* and *features.txt*, respectively. We also modify the feature names so that their names can be used as variable names.

2.  Import the files *subject_train.txt, subject_test.txt, y_train.txt, y_test.txt, X_train.txt, and X_test.txt*, and merge the training and test data into a single data frame called data_merged.

3.  The tidy data contained in data_selected was obtained from data_merged by selecting the variables Subject, Activity, Group, and the variables containing mean and standard deviations of measured features. The outcome is contained in the file *Tidy.csv*

4.  The file *Summary_Averages.csv* file contains the averaged variables from the tidy data set grouped according to Subject and Activity values.
