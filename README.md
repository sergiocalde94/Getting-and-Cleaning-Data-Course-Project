# UCI HAR Dataset Analysis

For running this R script you have to download the UCI HAR Dataset from -> http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

This dataset contains **wearable computing data** from Samsung devices, with *+10000 instances* and *561 attributes* each one.

For information about variables, it´s recommended to visit the link. This repo contains a R script that **get** the data, **rename** and **transform** it to a tidy data format. There is a **codebook** in this repo to understand the variables that results of tidying the data.

The **run_analysis.R** file can be sourced with `r source(run_analysis)` and if you have the data in the same folder as your script, it will create and save the tidy data in the same directory called 'result.txt'. If you read that *txt* you will have the data ready for a further analysis.

Cloning this repo will be able you to execute the script and manage the tidy data without worrying about how the data comes, but having access to all the information.

This is part of Data Science Specialization from Hopkins University, available in Coursera -> https://www.coursera.org/specializations/jhu-data-science.
