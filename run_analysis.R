library(tidyr)

library(dplyr)



# Read X&Y and subject for both training and test sets



x_train<-read.csv("./UCI HAR Dataset/train/X_train.txt",header=FALSE,sep="")
x_test<-read.csv("./UCI HAR Dataset/test/X_test.txt",header=FALSE,sep="")



y_train<-read.csv("./UCI HAR Dataset/train/Y_train.txt",header=FALSE,sep="")
y_test<-read.csv("./UCI HAR Dataset/test/Y_test.txt",header=FALSE,sep="")


subject_train<-read.csv("./UCI HAR Dataset/train/subject_train.txt",header=FALSE,sep="")
subject_test<-read.csv("./UCI HAR Dataset/test/subject_test.txt",header=FALSE,sep="")




#Read feature labels to create variable names for X
feature_names<-read.csv("./UCI HAR Dataset/features.txt",header=FALSE,sep="")
#Read activity labels
activity_labels<-read.csv("./UCI HAR Dataset/activity_labels.txt",header=FALSE,sep="")
#Assign names to activity_lavels dataframe
names(activity_labels)<-c("activity_code","activity")



#a. Column-bind set label, Y, X and subject by set
#b. Row-bind complete traing and test sets

df<-rbind(
    
    data.frame(Temp=rep("Train",nrow(x_train)),subject_train, y_train,x_train),
    
    data.frame(Temp=rep("Test",nrow(x_test)),subject_test, y_test,x_test)
    
) 



# Assign variable names by using "set"+"subject"+"activity_code" labels and feature_names for Xs

# Complete data set
# use make.names to create unique names

allVars<-c("set","subject","activity_code",as.vector(feature_names[,2]))

#Create vector of rows that have mean() and std() in their names. MAINTAIN 1,2,3 for "set","subject","activity_code"
mean_std<-c(1,2,3,
            as.vector(grep("mean\\(\\)",allVars,ignore.case = TRUE)),
            as.vector(grep("std\\(\\)",allVars,ignore.case = TRUE)))

#subset df2 based on mean_std vector
df2<-df[,mean_std]
names(df2)<-allVars[mean_std]


#make names readable, frop "."
names(df2)<-gsub("\\.{1, }", "", make.names(names(df2),unique=TRUE))



#Create df3 by merging df2 and activity_labels on activity_code
df3<-merge(activity_labels,df2,by.x="activity_code",by.y="activity_code", all=TRUE)

#Extract names from df3
old_names<-names(df3)

#Create lookup list for descriptive variables. Existing vs. Desired
lookup_desc<-list( 
    original=c("Body","Acc","Mag","Gyro","mean","std","BodyBody"),
    new=c("Body","Acceleration","Magnitude","Gyroscope","_mean","_sdev","Body")
)

#determine the length of the list. NOTE: matrix insted of list might have been a safer choice
m<-length(lookup_desc[[1]])

#loop lookup_desc to replace values from old(exiting) to new(desired)
#use sapply to update all the instances
for (i in 1:m) {   
    replace<-function(x) { sub(lookup_desc[[1]][i],lookup_desc[[2]][i],x,ignore.case = TRUE)}
    old_names=as.vector(sapply(old_names,replace))
}  

#assign names back to the df3
names(df3)<-old_names

#Step 5. tidy dataset

tidy_dataset<-
    df3%>%
    select(-set,-activity_code)%>%
    group_by(activity,subject) %>%
    summarise_each(funs(mean))


write.table(tidy_dataset,"means_by_activity_and_subject.txt",row.names = FALSE)
