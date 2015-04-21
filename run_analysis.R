
setwd("C:/Users/YJ/Desktop/Data Science specialization/Getting and Cleaning Data/project/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals")
test1 <- read.table("body_acc_x_test.txt")
head(test1)
test1$id = c(1:2947)
library(reshape2)
library(plyr)
library(dplyr)
melted1 <- melt(test1, id.vars="id")

summary1 <- ddply(melted1, "id", summarise, mean_body_acc_x_test = mean(value), sd_body_acc_x_test = sd(value))

test2 <- read.table("body_acc_y_test.txt")
test2$id = c(1:2947)
melted1 <- melt(test2, id.vars="id")
summary2 <- ddply(melted1, "id", summarise, mean_body_acc_y_test = mean(value), sd_body_acc_y_test = sd(value))
testdata1<- merge(summary1, summary2)

test3 <- read.table("body_acc_z_test.txt")
test3$id = c(1:2947)
melted1 <- melt(test3, id.vars="id")
summary3 <- ddply(melted1, "id", summarise, mean_body_acc_z_test = mean(value), sd_body_acc_z_test = sd(value))
testdata<- merge(testdata1, summary3)

test4 <- read.table("body_gyro_x_test.txt")
test4$id = c(1:2947)
melted1 <- melt(test4, id.vars="id")
summary4 <- ddply(melted1, "id", summarise, mean_body_gyro_x_test = mean(value), sd_body_gyro_x_test = sd(value))
testdata<- merge(testdata, summary4)

test5 <- read.table("body_gyro_y_test.txt")
test5$id = c(1:2947)
melted1 <- melt(test5, id.vars="id")
summary5 <- ddply(melted1, "id", summarise, mean_body_gyro_y_test = mean(value), sd_body_gyro_y_test = sd(value))
testdata<- merge(testdata, summary5)

test6 <- read.table("body_gyro_z_test.txt")
test6$id = c(1:2947)
melted1 <- melt(test6, id.vars="id")
summary6 <- ddply(melted1, "id", summarise, mean_body_gyro_z_test = mean(value), sd_body_gyro_z_test = sd(value))
testdata<- merge(testdata, summary6)

test7 <- read.table("total_acc_x_test.txt")
test7$id = c(1:2947)
melted1 <- melt(test7, id.vars="id")
summary7 <- ddply(melted1, "id", summarise, mean_total_acc_x_test = mean(value), sd_total_acc_x_test = sd(value))
testdata<- merge(testdata, summary7)

test8 <- read.table("total_acc_y_test.txt")
test8$id = c(1:2947)
melted1 <- melt(test8, id.vars="id")
summary8 <- ddply(melted1, "id", summarise, mean_total_acc_y_test = mean(value), sd_total_acc_y_test = sd(value))
testdata<- merge(testdata, summary8)

test9 <- read.table("total_acc_z_test.txt")
test9$id = c(1:2947)
melted1 <- melt(test9, id.vars="id")
summary9 <- ddply(melted1, "id", summarise, mean_total_acc_z_test = mean(value), sd_total_acc_z_test = sd(value))
testdata<- merge(testdata, summary9)

setwd("C:/Users/YJ/Desktop/Data Science specialization/Getting and Cleaning Data/project/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test")

Xtest <- read.table("X_test.txt")
Xtest$id = c(1:2947)
meltedX <- melt(Xtest, id.vars="id")
head(meltedX)
summary9 <- ddply(melted1, "id", summarise, mean_X_test = mean(value), sd_X_test = sd(value))
testdata<- merge(testdata, summary9)

subject_test <- read.table("subject_test.txt")
subject_test$id = c(1:2947)
subject_test <- rename(subject_test, subject_test = V1)

y_test <- read.table("y_test.txt")
y_test$id = c(1:2947)
y_test <- rename(y_test, y_test = V1)

merged <- merge(y_test, subject_test)
final.test.data <- merge(merged ,testdata)
head(final.test.data)


setwd("C:/Users/YJ/Desktop/Data Science specialization/Getting and Cleaning Data/project/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals")

train1 <- read.table("body_acc_x_train.txt")
train1$id = c(1:7352)
melted1 <- melt(train1, id.vars="id")
summary1 <- ddply(melted1, "id", summarise, mean_body_acc_x_train = mean(value), sd_body_acc_x_train = sd(value))

train2 <- read.table("body_acc_y_train.txt")
train2$id = c(1:7352)
melted1 <- melt(train2, id.vars="id")
summary2 <- ddply(melted1, "id", summarise, mean_body_acc_y_train = mean(value), sd_body_acc_y_train = sd(value))
testdata1<- merge(summary1, summary2)

train3 <- read.table("body_acc_z_train.txt")
train3$id = c(1:7352)
melted1 <- melt(train3, id.vars="id")
summary3 <- ddply(melted1, "id", summarise, mean_body_acc_z_train = mean(value), sd_body_acc_z_train = sd(value))
testdata<- merge(testdata1, summary3)

train4 <- read.table("body_gyro_x_train.txt")
train4$id = c(1:7352)
melted1 <- melt(train4, id.vars="id")
summary4 <- ddply(melted1, "id", summarise, mean_body_gyro_x_train = mean(value), sd_body_gyro_x_train = sd(value))
testdata<- merge(testdata, summary4)

train5 <- read.table("body_gyro_y_train.txt")
train5$id = c(1:7352)
melted1 <- melt(train5, id.vars="id")
summary5 <- ddply(melted1, "id", summarise, mean_body_gyro_y_train = mean(value), sd_body_gyro_y_train = sd(value))
testdata<- merge(testdata, summary5)

train6 <- read.table("body_gyro_z_train.txt")
train6$id = c(1:7352)
melted1 <- melt(train6, id.vars="id")
summary6 <- ddply(melted1, "id", summarise, mean_body_gyro_z_train = mean(value), sd_body_gyro_z_train = sd(value))
testdata<- merge(testdata, summary6)

train7 <- read.table("total_acc_x_train.txt")
train7$id = c(1:7352)
melted1 <- melt(train7, id.vars="id")
summary7 <- ddply(melted1, "id", summarise, mean_total_acc_x_train = mean(value), sd_total_acc_x_train = sd(value))
testdata<- merge(testdata, summary7)

train8 <- read.table("total_acc_y_train.txt")
train8$id = c(1:7352)
melted1 <- melt(train8, id.vars="id")
summary8 <- ddply(melted1, "id", summarise, mean_total_acc_y_train = mean(value), sd_total_acc_y_train = sd(value))
testdata<- merge(testdata, summary8)

train9 <- read.table("total_acc_z_train.txt")
train9$id = c(1:7352)
melted1 <- melt(train9, id.vars="id")
summary9 <- ddply(melted1, "id", summarise, mean_total_acc_z_train = mean(value), sd_total_acc_z_train = sd(value))
testdata<- merge(testdata, summary9)

setwd("C:/Users/YJ/Desktop/Data Science specialization/Getting and Cleaning Data/project/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train")

Xtrain <- read.table("X_train.txt")
Xtrain$id = c(1:7352)
meltedX <- melt(Xtrain, id.vars="id")
summary9 <- ddply(melted1, "id", summarise, mean_X_train = mean(value), sd_X_train = sd(value))
traindata<- merge(testdata, summary9)

subject_train <- read.table("subject_train.txt")
subject_train$id = c(1:7352)
subject_train <- rename(subject_train, subject_train = V1)

y_train <- read.table("y_train.txt")
y_train$id = c(1:7352)
y_train <- rename(y_train, y_train = V1)

merged <- merge(y_train, subject_train)
head(merged)
tail(merged)
final.train.data <- merge(merged ,traindata)
head(final.train.data)

names(final.test.data)
testdata2<- rename(final.test.data, subject = subject_test)
names(testdata2)

traindata2 <- rename(final.train.data, subject = subject_train)
names(traindata2)
merger<- merge(traindata2, testdata2, by = "subject", all=T)
names(merger)

merger$id.x <- NULL
merger$y_train <- NULL
merger$id.y <- NULL
merger$y_test <- NULL
merger$X <- NULL
names(merger)

group <- group_by(merger, subject)
final5<- (summarize(group, mean_body_acc_x_train =mean(mean_body_acc_x_train, na.rm =T), sd_body_acc_x_train = mean(sd_body_acc_x_train, na.rm=T),   mean_body_acc_y_train = mean(mean_body_acc_y_train, na.rm=T), sd_body_acc_y_train = mean(sd_body_acc_y_train, na.rm=T), mean_body_acc_z_train = mean(mean_body_acc_z_train, na.rm=T),  sd_body_acc_z_train = mean(sd_body_acc_z_train, na.rm=T), mean_body_gyro_x_train = mean(mean_body_gyro_x_train, na.rm= T), sd_body_gyro_x_train = mean(sd_body_gyro_x_train, na.rm=T) , mean_body_gyro_y_train = mean(mean_body_gyro_y_train, na.rm=T), sd_body_gyro_y_train=mean(sd_body_gyro_y_train, na.rm=T), mean_body_gyro_z_train = mean(mean_body_gyro_z_train, na.rm=T), sd_body_gyro_z_train = mean(sd_body_gyro_z_train, na.rm=T), mean_total_acc_x_train = mean(mean_total_acc_x_train, na.rm=T), sd_total_acc_x_train = mean(sd_total_acc_x_train, na.rm=T), mean_total_acc_y_train = mean(mean_total_acc_y_train, na.rm=T), sd_total_acc_y_train = mean(sd_total_acc_y_train, na.rm =T), mean_total_acc_z_train = mean(mean_total_acc_z_train, na.rm=T), sd_total_acc_z_train =mean(sd_total_acc_z_train, na.rm=T), mean_X_train = mean(mean_X_train, na.rm=T),sd_X_train = mean(sd_X_train, na.rm=T) ,mean_body_acc_x_test = mean(mean_body_acc_x_test, na.rm=T), sd_body_acc_x_test = mean(sd_body_acc_x_test, na.rm=T), mean_body_acc_y_test =mean(mean_body_acc_y_test, na.rm=T), sd_body_acc_y_test = mean(sd_body_acc_y_test, na.rm=T), mean_body_acc_z_test = mean(mean_body_acc_z_test, na.rm=T), sd_body_acc_z_test = mean(sd_body_acc_z_test, na.rm=T), mean_body_gyro_x_test = mean(mean_body_gyro_x_test, na.rm=T), sd_body_gyro_x_test=mean(sd_body_gyro_x_test, na.rm=T), mean_body_gyro_y_test=mean(mean_body_gyro_y_test, na.rm=T), sd_body_gyro_y_test=mean(sd_body_gyro_y_test, na.rm=T), mean_body_gyro_z_test=mean(mean_body_gyro_z_test,na.rm=T), sd_body_gyro_z_test=mean(sd_body_gyro_z_test, na.rm=T), mean_total_acc_x_test =mean(mean_total_acc_x_test, na.rm=T), sd_total_acc_x_test = mean(sd_total_acc_x_test, na.rm=T), mean_total_acc_y_test=mean(mean_total_acc_y_test, na.rm=T), sd_total_acc_y_test=mean(sd_total_acc_y_test, na.rm=T), mean_total_acc_z_test=mean(mean_total_acc_z_test, na.rm=T), sd_total_acc_z_test=mean(sd_total_acc_z_test, na.rm=T), mean_X_test = mean(mean_X_test, na.rm=T), sd_X_test=mean(sd_X_test, na.rm=T)))


testnames<- final5
names(testnames) <- c("subject", 1:40)
summary(testnames)
setwd("C:/Users/YJ/Desktop/Data Science specialization/Getting and Cleaning Data/project")
write.table(testnames, "tidydataset.txt", row.name=FALSE)
