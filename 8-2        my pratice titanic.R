titanic_train=read.csv(file.choose(),sep=',',header=T)
View(titanic_train)
titanic_test=read.csv(file.choose(),sep=',',header = T)
View(titanic_test)
titanic_gender=read.csv(file.choose(),sep=',',header =T)
view(titanic_gender)
str(titanic_test)
str(titanic_train)
str(titanic_gender)
ncol(titanic_train)

#Adding the column name Survive from titanic_gender to the titanic_test file, here we are binding a new column name Survived #in titanic_test so using C bind.

titanic_data=cbind(titanic_test,Survived=titanic_gender$Survived)
str(titanic_data)
print(titanic_data)
str(titanic_data)
View(titanic_data)

# using  r bind to add data in rows

titanic_data=rbind(titanic_train,titanic_data)
nrow(titanic_data)
dim(titanic_data)
mean(titanic_data$Age)
View(titanic_data$Age)
mean(titanic_data$Age,na.rm=T)
summary(titanic_data)
is.na(titanic_data)

#removing null values
(titanic_data_na=titanic_data[!complete.cases(titanic_data),])
is.na(titanic_data)
is.na(titanic_data_na)
nrow(titanic_data)
nrow(titanic_data_na)

 #second way to remove null values

titanic_data=na.omit(titanic_data)
nrow(titanic_data)
mean(titanic_data$Age)

(titanic_data_na=titanic_data[!complete.cases(),])
titanic_data=na.omit(titanic_data)
View(titanic_data)