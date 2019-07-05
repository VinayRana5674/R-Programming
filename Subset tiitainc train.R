titanic_train=read.csv(file.choose(),sep=',',header=T)
View(titanic_train)
dim(titanic_train)
subset(titanic_train,Survived==1)
subset(titanic_train,Survived==1 & Sex=='male')
(nrow(subset(titanic_train,Survived == 1 & Sex=='male'))/nrow(subset(titanic_train))*100)
(nrow(subset(titanic_train,Survived == 1 & Sex=='male'))/nrow(subset(titanic_train, Sex='male'))*100)
(nrow(subset(titanic_train,Survived == 1 & Sex=='female'))/nrow(subset(titanic_train, Sex='female'))*100)
(nrow(subset(titanic_train,Survived == 1 & Sex=='female'))/nrow(subset(titanic_train))*100)
(nrow(subset(titanic_train,Survived == 1 & Sex=='female'))/(nrow(subset(titanic_train,Survived==1))))*100
(nrow(subset(titanic_train,Survived == 1 & Sex=='male'))/(nrow(subset(titanic_train,Survived==1))))*100

max_class=0
for(i in 1:3)
  {
  x[i]=round((nrow(subset(titanic_train,Survived == 1 & Pclass==i))/nrow(subset(titanic_train,Pclass==i)))*100)
  
  print(paste("For class ",i," Total Survived Percentage is" ,round(x[i]),"%"))
  
  
}
print(paste(max(x),"%"))