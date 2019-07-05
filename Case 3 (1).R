titanic_train=read.csv(file.choose(),sep=',',header=T)
titanic_test=read.csv(file.choose(),sep=',',header=T)
titanic_gender=read.csv(file.choose(),sep=',',header=T)
titanic_data=cbind(Titanic_test,Survived=titanic_gender$Survived)
titanic_data=rbind(titanic_train,titanic_data)
#length of the data previously
dim(titanic_data)
summary(titanic_data)
mean(titanic_data$Age)
View(titanic_data$Age)
#finding mean leaving na values
mean(titanic_data$Age,na.rm=T)
is.na(titanic_data)
(titanic_data_na=titanic_data[!complete.cases(titanic_data), ]) 
is.na(titanic_data)
#no of rows with null values
nrow(titanic_data_na)
nrow(titanic_data)
#remove na values
titanic_data=na.omit(titanic_data)
# finding mean
mean(titanic_data_na$Age)
mean(titanic_data$Age)
print(titanic_data)
#summary od data set
summary(titanic_data)
#no of attr 
str(titanic_data)