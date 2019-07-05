titanic_data=read.csv(file.choose(),sep=',',header=T)
str(titanic_data)#To check Data structure
nrow(titanic_data)
ncol(titanic_data)
dim(titanic_data)
summary(titanic_data)



titanic_data$Pclass

attach(titanic_data)
Pclass
