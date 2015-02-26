##download and initiate necessary libraries
##install.packages("gdata")
library(gdata)
##library(plyr)
library(dplyr)
library(tidyr)

##read file "X_test.txt" and "X_train"to the data frames. stringsAsFactors = FALSE
test <- read.table("./test/X_test.txt",  header = FALSE, stringsAsFactors = FALSE)
train <- read.table("./train/X_train.txt",  header = FALSE, stringsAsFactors = FALSE)

## check the number of columns in two datasets
        ncol(test) == ncol(train)
## merging frames into single frame with rbind
        merged <- rbind(test,train)
        rm(test)
        rm(train)
        
## read files with activity labels and merge them in the same order as for measurments
        test_lbl <- read.table("./test/y_test.txt",  header = FALSE, stringsAsFactors = FALSE)
        train_lbl <- read.table("./train/y_train.txt",  header = FALSE, stringsAsFactors = FALSE)
        merged_lbl <- rbind(test_lbl,train_lbl)
        rm(test_lbl)
        rm(train_lbl)
## merging into one frame with cbind. we'l have activity indexes in the first column
        merged <- cbind(merged_lbl,merged)
        rm(merged_lbl)
## read measurments labels and create vector of column names 
        meas_lbl <- read.table("./features.txt",  header = FALSE, stringsAsFactors = FALSE)
        colnames <- c(meas_lbl[,2])
        ## first column must have "Activity" name
        columns <- append(colnames,"Activity", after = 0)
        ## resulting data set with column names
        colnames(merged) <- columns
        rm(columns)
        rm(colnames)

## read activity labels and create vector
        act_lbl <- read.table("./activity_labels.txt",  header = FALSE, stringsAsFactors = FALSE)
       ## act_lbl <- c(act_lbl[,2])

## Join activity labels with main dataset by V1 and Activity columns
join <- merge(act_lbl, merged, by.x = "V1", by.y = "Activity")
join <- mutate(join, Activity = V2)
##remove activity indexes
join <- select(join, -V1)
##select columns which are about means and standard deviation, "Activity" column kept
## create vector of column names about std and mean
cols <- colnames(join)[grep('*mean*|*std*|Activity',colnames(join))]

## select only columns about std and mean 
tidy <- join[,colnames(join) %in% cols] 

## create mean function to apply in ddply with colwise function ()
nmean <- function(x) mean(x)
tidy <- ddply(tidy, .(Activity), colwise(nmean))
str(tidy)
##create file with tidy data set
write.table(tidy, file = "dataset.txt", row.names = FALSE)
