
#initialize
setwd("F:/getting/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset")
x_train <- read.table("./train/x_train.txt")
y_train <- read.table("./train/y_train.txt")
subject_train <- read.table("./train/subject_train.txt")
x_test <- read.table("./test/x_test.txt")
y_test <- read.table("./test/y_test.txt")
subject_test <- read.table("./test/subject_test.txt")
features <- read.table("./features.txt")
activity_labels <- read.table("./activity_labels.txt")
x_train$group <- "train"
x_test$group <- "test"

#Step1, combine train and test
combine_dat <- rbind(x_train, x_test)

#Step4, name the variables
names(combine_dat)[1:561]<- as.character(features$V2)

#step2, choose measurements with mean() and std()
idx_mean <- grep('mean\\(\\)',features$V2)
idx_std <- grep('std\\(\\)',features$V2)
new_dat <- combine_dat[, c(idx_mean, idx_std, 562)]

#combining activity and subject file
new_dat$activity <- c(y_train$V1, y_test$V1)
new_dat$subject <- c(subject_train$V1, subject_test$V1)

#step3, merge and rename activity label
new_dat1 <- new_dat[order(new_dat$activity, new_dat$subject),]
new_dat2 <- merge(new_dat1, activity_labels, by.x = "activity", by.y = "V1", all = T)
names(new_dat2)[names(new_dat2)=="V2"] <- "activity_label"

#tidy data 1, before step 5
tidy_dat <- new_dat2[,-1]

#step 5, tidy_data_2
var_num <- ncol(tidy_dat)
tidy_dat <- tidy_dat[-67]
final_dat <- aggregate(.~ activity_label + subject, data = tidy_dat, FUN = mean)

#write and read
write.table(final_dat, file = "final_dat.txt", row.names = F)
my_dat <- read.table("final_dat.txt", header = T)
