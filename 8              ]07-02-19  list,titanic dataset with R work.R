customerdata["cust1","prod"]

#List
l1=list(customerdata,b=c(20,30),mtcars)

#Accessing element from list
l1[[1]]
l1[[2]][1]
l1[[3]][2,1]

#Adding elemnt from list
l1[4]='a'
l1
#Replacing element
l1[[2]][3]=60
l1[[2]]

#Removing elements from list
l1=l1[-4]
l1[[2]][-3]


#-----------------titanic------------------------------------------
Titanic_train=read.csv(file.choose(),sep=",",header=T)
View(Titanic_train)
Titanic_test=read.csv(file.choose(),sep=",",header=T)
View(Titanic_test)
Titanic_gender=read.csv(file.choose(),sep=",",header=T)
View(Titanic_gender)

str(Titanic_train)
str(Titanic_test)
str(Titanic_gender)
ncol(Titanic_train)
ncol(Titanic_test)
ncol(Titanic_gender)

titanic_data=cbind(Titanic_test,Titanic_gender$Survived)
View(titanic_data)
titanic_data=cbind(Titanic_test,Survived=Titanic_gender$Survived)
View(titanic_data)

titanic_data=rbind(Titanic_train,titanic_data)
dim(Titanic_train)
dim(titanic_data)

summary(titanic_data)
