This is Coursera student project on Getting and Cleaning Data course of John Hopkins University.

Files description:
"dataset.txt" - this is a resulting so called Tidy dataset. It contains the average of each variable for each activity and each subject. Variables are listed below(str):

 $ Activity                       : chr  "LAYING" "SITTING" "STANDING" "WALKING" ...
 $ tBodyAcc-mean()-X              : num  0.269 0.273 0.279 0.276 0.288 ...
 $ tBodyAcc-mean()-Y              : num  -0.0183 -0.0127 -0.0162 -0.0179 -0.0163 ...
 $ tBodyAcc-mean()-Z              : num  -0.107 -0.106 -0.107 -0.109 -0.106 ...
 $ tBodyAcc-std()-X               : num  -0.961 -0.983 -0.984 -0.315 0.101 ...
 $ tBodyAcc-std()-Y               : num  -0.9435 -0.9349 -0.9325 -0.0236 0.0595 ...
 $ tBodyAcc-std()-Z               : num  -0.948 -0.939 -0.94 -0.274 -0.191 ...
 $ tGravityAcc-mean()-X           : num  -0.375 0.88 0.941 0.935 0.926 ...
 $ tGravityAcc-mean()-Y           : num  0.622 0.109 -0.184 -0.197 -0.169 ...
 $ tGravityAcc-mean()-Z           : num  0.5556 0.1538 -0.0141 -0.0538 -0.048 ...
 $ tGravityAcc-std()-X            : num  -0.943 -0.98 -0.988 -0.978 -0.95 ...
 $ tGravityAcc-std()-Y            : num  -0.963 -0.958 -0.969 -0.967 -0.934 ...
 $ tGravityAcc-std()-Z            : num  -0.952 -0.947 -0.953 -0.955 -0.912 ...
 $ tBodyAccJerk-mean()-X          : num  0.0818 0.0759 0.075 0.0767 0.0892 ...
 $ tBodyAccJerk-mean()-Y          : num  0.011172 0.005047 0.008805 0.011506 0.000747 ...
 $ tBodyAccJerk-mean()-Z          : num  -0.00486 -0.00249 -0.00458 -0.00232 -0.00873 ...
 $ tBodyAccJerk-std()-X           : num  -0.9804 -0.985 -0.98 -0.2673 -0.0339 ...
 $ tBodyAccJerk-std()-Y           : num  -0.9711 -0.9739 -0.9643 -0.1031 -0.0737 ...
 $ tBodyAccJerk-std()-Z           : num  -0.979 -0.982 -0.979 -0.479 -0.389 ...
 $ tBodyGyro-mean()-X             : num  -0.0167 -0.0384 -0.0267 -0.0347 -0.084 ...
 $ tBodyGyro-mean()-Y             : num  -0.0934 -0.0721 -0.0677 -0.0694 -0.053 ...
 $ tBodyGyro-mean()-Z             : num  0.1259 0.0778 0.0801 0.0864 0.0947 ...
 $ tBodyGyro-std()-X              : num  -0.968 -0.981 -0.946 -0.47 -0.334 ...
 $ tBodyGyro-std()-Y              : num  -0.963 -0.967 -0.961 -0.348 -0.34 ...
 $ tBodyGyro-std()-Z              : num  -0.964 -0.958 -0.957 -0.338 -0.273 ...
 $ tBodyGyroJerk-mean()-X         : num  -0.1019 -0.0957 -0.0997 -0.0943 -0.0729 ...
 $ tBodyGyroJerk-mean()-Y         : num  -0.0382 -0.0408 -0.0423 -0.0446 -0.0513 ...
 $ tBodyGyroJerk-mean()-Z         : num  -0.0638 -0.0508 -0.0521 -0.054 -0.0547 ...
 $ tBodyGyroJerk-std()-X          : num  -0.976 -0.986 -0.967 -0.376 -0.383 ...
 $ tBodyGyroJerk-std()-Y          : num  -0.98 -0.987 -0.98 -0.513 -0.466 ...
 $ tBodyGyroJerk-std()-Z          : num  -0.985 -0.984 -0.977 -0.447 -0.326 ...
 $ tBodyAccMag-mean()             : num  -0.941 -0.955 -0.954 -0.168 0.101 ...
 $ tBodyAccMag-std()              : num  -0.932 -0.939 -0.947 -0.338 0.116 ...
 $ tGravityAccMag-mean()          : num  -0.941 -0.955 -0.954 -0.168 0.101 ...
 $ tGravityAccMag-std()           : num  -0.932 -0.939 -0.947 -0.338 0.116 ...
 $ tBodyAccJerkMag-mean()         : num  -0.979 -0.982 -0.977 -0.241 -0.112 ...
 $ tBodyAccJerkMag-std()          : num  -0.9742 -0.9789 -0.9715 -0.2146 -0.0112 ...
 $ tBodyGyroMag-mean()            : num  -0.938 -0.947 -0.942 -0.275 -0.13 ...
 $ tBodyGyroMag-std()             : num  -0.941 -0.951 -0.93 -0.383 -0.251 ...
 $ tBodyGyroJerkMag-mean()        : num  -0.983 -0.988 -0.979 -0.461 -0.417 ...
 $ tBodyGyroJerkMag-std()         : num  -0.977 -0.985 -0.974 -0.499 -0.441 ...
 $ fBodyAcc-mean()-X              : num  -0.9668 -0.9831 -0.9816 -0.2979 0.0353 ...
 $ fBodyAcc-mean()-Y              : num  -0.9527 -0.9479 -0.9431 -0.0423 0.0567 ...
 $ fBodyAcc-mean()-Z              : num  -0.96 -0.957 -0.957 -0.342 -0.214 ...
 $ fBodyAcc-std()-X               : num  -0.959 -0.984 -0.986 -0.323 0.122 ...
 $ fBodyAcc-std()-Y               : num  -0.94246 -0.93253 -0.93113 -0.07721 -0.00823 ...
 $ fBodyAcc-std()-Z               : num  -0.946 -0.934 -0.935 -0.296 -0.246 ...
 $ fBodyAcc-meanFreq()-X          : num  -0.2594 -0.0426 0.0156 -0.2869 -0.4 ...
 $ fBodyAcc-meanFreq()-Y          : num  0.143046 0.065303 -0.033274 0.051864 0.000603 ...
 $ fBodyAcc-meanFreq()-Z          : num  0.2032 0.0803 0.0525 0.075 0.0924 ...
 $ fBodyAccJerk-mean()-X          : num  -0.9802 -0.9852 -0.98 -0.3111 -0.0723 ...
 $ fBodyAccJerk-mean()-Y          : num  -0.971 -0.974 -0.965 -0.17 -0.116 ...
 $ fBodyAccJerk-mean()-Z          : num  -0.977 -0.98 -0.976 -0.451 -0.333 ...
 $ fBodyAccJerk-std()-X           : num  -0.9825 -0.9862 -0.9818 -0.2879 -0.0822 ...
 $ fBodyAccJerk-std()-Y           : num  -0.9731 -0.9758 -0.9668 -0.0909 -0.0914 ...
 $ fBodyAccJerk-std()-Z           : num  -0.981 -0.984 -0.982 -0.506 -0.444 ...
 $ fBodyAccJerk-meanFreq()-X      : num  0.105 0.185 0.203 -0.258 -0.315 ...
 $ fBodyAccJerk-meanFreq()-Y      : num  0.00485 -0.05831 -0.13189 -0.35466 -0.38604 ...
 $ fBodyAccJerk-meanFreq()-Z      : num  0.07 0.003 0.0067 -0.2407 -0.2374 ...
 $ fBodyGyro-mean()-X             : num  -0.963 -0.977 -0.944 -0.348 -0.218 ...
 $ fBodyGyro-mean()-Y             : num  -0.968 -0.972 -0.965 -0.388 -0.318 ...
 $ fBodyGyro-mean()-Z             : num  -0.964 -0.961 -0.958 -0.31 -0.166 ...
 $ fBodyGyro-std()-X              : num  -0.97 -0.982 -0.947 -0.51 -0.375 ...
 $ fBodyGyro-std()-Y              : num  -0.961 -0.964 -0.959 -0.332 -0.362 ...
 $ fBodyGyro-std()-Z              : num  -0.967 -0.961 -0.961 -0.411 -0.38 ...
 $ fBodyGyro-meanFreq()-X         : num  -0.0175 0.0626 -0.2275 -0.0677 -0.17 ...
 $ fBodyGyro-meanFreq()-Y         : num  -0.1393 -0.218 -0.216 -0.0985 -0.0441 ...
 $ fBodyGyro-meanFreq()-Z         : num  0.1133 -0.0127 -0.0914 -0.0722 -0.0188 ...
 $ fBodyAccMag-mean()             : num  -0.948 -0.952 -0.956 -0.276 0.143 ...
 $ fBodyAccMag-std()              : num  -0.9349 -0.942 -0.9496 -0.48 -0.0754 ...
 $ fBodyAccMag-meanFreq()         : num  0.1162 0.1141 0.0485 0.1844 0.025 ...
 $ fBodyBodyAccJerkMag-mean()     : num  -0.9743 -0.97868 -0.97109 -0.21465 0.00476 ...
 $ fBodyBodyAccJerkMag-std()      : num  -0.9732 -0.9782 -0.9709 -0.2216 -0.0423 ...
 $ fBodyBodyAccJerkMag-meanFreq() : num  0.2811 0.2815 0.2513 0.0773 0.0201 ...
 $ fBodyBodyGyroMag-mean()        : num  -0.955 -0.964 -0.948 -0.409 -0.29 ...
 $ fBodyBodyGyroMag-std()         : num  -0.942 -0.952 -0.931 -0.474 -0.361 ...
 $ fBodyBodyGyroMag-meanFreq()    : num  -0.0294 -0.0764 -0.1837 0.1632 0.0672 ...
 $ fBodyBodyGyroJerkMag-mean()    : num  -0.978 -0.985 -0.975 -0.516 -0.438 ...
 $ fBodyBodyGyroJerkMag-std()     : num  -0.977 -0.984 -0.973 -0.514 -0.486 ...
 $ fBodyBodyGyroJerkMag-meanFreq(): num  0.1657 0.1777 0.0849 0.1308 0.0958 ...
 
 "CodeBook.md" - is the file where you can find all the variables, the data, and transformations were performed to clean up the data. 