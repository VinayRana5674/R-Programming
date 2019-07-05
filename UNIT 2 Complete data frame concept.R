emp.data=data.frame(
  emp.id=c(1:5),
  emp.name=c("Vinay","Ajay","Suraj","Rana","Rawat"),
  emp.salary=c("3555","4343","43343","43434","434343"),
  start_date=as.Date(c("2012-01-01","2012-01-01","2012-01-01","2012-01-01","2012-01-01"))
  
)
#new data frame fopr addition as row
emp.newdata=data.frame(
  emp.id=c(6:10),
  emp.name=c("Vinay","Ajay","Suraj","Rana","Rawat"),
  emp.salary=c("3555","4343","43343","43434","434343"),
  start_date=as.Date(c("2012-01-01","2012-01-01","2012-01-01","2012-01-01","2012-01-01"))
  
)
emp.finaldata=rbind(emp.data,emp.newdata)
print(emp.finaldata)
print(emp.data)
summary(emp.data)
str(emp.data)
View(emp.data)
result=data.frame(emp.data$emp.name,emp.data$emp.salary)
print(result)
attach(emp.data)
print(emp.salary)
#Extract 3rd and 5th row with 2nd and 4th column of the below data
result <- emp.data[c(3,5),c(2,4)]
# ADDING A COLUMN IN A DATA FRAME

emp.data$dept=c("IT","TECH","Support","DO","CEO")
print(emp.data)
#Extract first two rows
result <- emp.data[1:2,]
print(result)

#Extract first two column
result <- emp.data[1:2]
print(result)



mons=c('March','April','Jan','Nov','Jan','Sept','Oct','Sept','Nov','Aug','Jul','Dec','Aug','Aug','Sept','Nov','Feb','April')
mons
mons=factor(mons)
print(mons)
table(mons)
levels(mons)
mons=factor(mons,levels = c('Jan','Feb','March','April','May','Jun','Jul','Aug','Sept','Oct','Nov','Dec'),ordered=TRUE)
table(mons)
mons
