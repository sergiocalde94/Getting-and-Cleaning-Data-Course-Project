# UCI HAR Dataset Analysis

For running this R script you have to download the UCI HAR Dataset from -> http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

This dataset contains **wearable computing data** from Samsung devices, with *+10000 instances* and *561 attributes* each one.

For information about variables, it´s recommended to visit the link. This repo contains a R script that **get** the data, **rename** and **transform** it to a tidy data format. There is a **codebook** in this repo to understand the variables that results of tidying the data.

The **run_analysis.R** file can be sourced with `r source(run_analysis)` and if you have the data in the same folder as your script, it will create and save the tidy data in the same directory called 'result.txt'. If you read that *txt* you will have the data ready for a further analysis.

The visual tree of the folders will be like the one right here (all the UCI HAR Dataset folder comes from the downloaded file):

.
│   run_analysis.R
│   
└───UCI HAR Dataset
    │   activity_labels.txt
    │   features.txt
    │   features_info.txt
    │   README.txt
    │   
    ├───test
    │   │   subject_test.txt
    │   │   X_test.txt
    │   │   y_test.txt
    │   │   
    │   └───Inertial Signals
    │           body_acc_x_test.txt
    │           body_acc_y_test.txt
    │           body_acc_z_test.txt
    │           body_gyro_x_test.txt
    │           body_gyro_y_test.txt
    │           body_gyro_z_test.txt
    │           total_acc_x_test.txt
    │           total_acc_y_test.txt
    │           total_acc_z_test.txt
    │           
    └───train
        │   subject_train.txt
        │   X_train.txt
        │   y_train.txt
        │   
        └───Inertial Signals
                body_acc_x_train.txt
                body_acc_y_train.txt
                body_acc_z_train.txt
                body_gyro_x_train.txt
                body_gyro_y_train.txt
                body_gyro_z_train.txt
                total_acc_x_train.txt
                total_acc_y_train.txt
                total_acc_z_train.txt

This is part of Data Science Specialization from Hopkins University, available in Coursera -> https://www.coursera.org/specializations/jhu-data-science.
