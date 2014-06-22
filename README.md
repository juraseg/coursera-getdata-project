# Coursera "Getting and Cleaning Data" course project

#### Author: Yuri Abzyanov

## Brief description

This project was created per instructions in peer assessment assignment in "Getting and Cleaning Data" Coursera course. The project contains following files:

* run_analysis.R - this script performs all data manipulation done to get tidy data assuming that original ZIP file is in working directory
* tidy_data.txt - contains resulting data
* CODEBOOK.md - contains description of all column names
* README.md - this file

## Desciptions of steps performed

Script firstly unzips all data to current working directory. 
Then it loads data from "train" and "test" folders (excluding Inertial subfolders) each file into separate variable. Activity label are changed to meaningful names at this time. Then the data is merged, firstly it merges data from each subdirectory (train, test), then merges train and test data. 
From resulting data frame the script selects only columns containing "mean" or "std" in name (case insensitive), also keeps "activity" and "subject_id" columns. Data frame contains 88 columns (86 features, activity column and subject_id column) and 10299 rows. It is now merged all data and contains only columns we need.

To calculate mean for each column grouping by activity and subject script firstly melts data so each row now contains activity name, subject ID, variable name and variable value. This molten data has 885714 rows. Now using `dcast` function script calculates mean for each variable grouping by activity and subject ID and puts all data back to columns making the data tidy (in wide sense - check [this](https://class.coursera.org/getdata-004/forum/thread?thread_id=262) discussion for details about tidy data). This data frame has the same number of columns as initial merged data (88: 86 variables, "activity" columns and "subject_id" column), but each row now contains mean value for all observations with given activity and subject id. Total number of rows is 180 - that is, one row per each activity plus subject id combination given 6 activity types and 30 subjects.
