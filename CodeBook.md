Here's an algorithm that was used to clean up data. The source file is "RunAnalysis.R"

1. Download and initiate necessary libraries. Used libraries:gdata,dplyr,tidyr
2. Read file "X_test.txt" and "X_train"to the data frames test, train 
3. Merging frames into single frame "merged" with rbind
4. Read files with activity labels 
5. Read measurments labels 
6. Create single raw dataset with column and activity names. 
7. Extract only std and mean columns from raw dataset
8. Group by activity and calculate means for each column and activity
9. Ñreate file with tidy data set

"merged" - raw dataset with "rbinded" train and test data
"join" - raw dataset with columns and activities names 
"tidy" - cleaned dataset with averages for "mean" and "std" columns

Some special functions used:
1. Getting right columns with regex. Grep returns indexes of needed columns: colnames(join)[grep('*mean*|*std*|Activity',colnames(join))]
2. Calculating averages by group. "colwise" fun used: tidy <- ddply(tidy, .(Activity), colwise(nmean))