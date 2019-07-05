#Titanic Dataset
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

subset(titanic_data,Survived==1)
subset(titanic_data,Survived==1,select = Age)
subset(titanic_data,Survived==1,select=c(Age,Sex))

subset(titanic_data,Survived==1 & Sex=='male')
nrow(subset(titanic_data,Survived==1 & Sex=='male'))

#percentage of mael survived out of whole dataset
nrow(subset(titanic_data,Survived==1 & Sex=='male'))/nrow(titanic_data)*100

#percentage of male survived
nrow(subset(titanic_data,Survived==1 & Sex=='male'))/nrow(subset(titanic_data,Sex=='male'))*100

#percentage of female survived
nrow(subset(titanic_data,Survived==1 & Sex=='female'))/nrow(subset(titanic_data,Sex=='female'))*100

#percentage of female survived out of all persons survived
nrow(subset(titanic_data,Survived==1 & Sex=='female'))/nrow(subset(titanic_data,Survived==1))*100

#find which class of passengers have given preference for survival
nrow(subset(titanic_data,Survived==1 & Pclass==1))  #this is only giving the number of Pclass==1
nrow(subset(titanic_data,Survived==1 & Pclass==2))  #this is only giving the number of Pclass==2
nrow(subset(titanic_data,Survived==1 & Pclass==3))  #this is only giving the number of Pclass==3

nrow(subset(titanic_data,Survived==1 & Pclass==1))/nrow(subset(titanic_data,Pclass==1))*100
nrow(subset(titanic_data,Survived==1 & Pclass==2))/nrow(subset(titanic_data,Pclass==2))*100
nrow(subset(titanic_data,Survived==1 & Pclass==3))/nrow(subset(titanic_data,Pclass==3))*100

for(i in 1:max(titanic_data$Pclass)){
  print(nrow(subset(titanic_data,Survived==1 & Pclass==i))/nrow(subset(titanic_data,Pclass==i))*100)
}
