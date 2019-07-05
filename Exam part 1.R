emp.data=data.frame(
  emp_id=c(1:5),
  emp_names=c("Rick","Dan","Michelle","Ryan","Gary"),
  salaries=c(623.3,515.2,611.0,729.0,843.25),
  stringsAsFactors = FALSE
  )

str(emp.data)
summary(emp.data)
View(emp.data)
dim(emp.data)
nrow(emp.data)
ncol(emp.data)


##part 2
emp.data$start_date=as.Date(c("2012-01-01","2013-02-02","2014-11-10","2015-11-10","2014-11-15"))
emp.data$dept_name=c("IT","NONIT","IT","NONIT","NONIT")

## adding new employee ninja

emp.newemployeedata=data.frame(
  emp_id=6,
  emp_names=("Nina"),
  salaries=(578.0),
  start_date=as.Date("2013-05-21"),
  dept_name="IT"

  
)
View(emp.newemployeedata)
emp.newupdateddata=rbind(emp.data,emp.newemployeedata)
View(emp.newupdateddata)
attach(emp.newupdateddata)
library(sqldf)
sqldf("select *from emp.newupdateddata where salaries>579")
emp.newupdateddata[which(emp.newupdateddata$salaries>579 & emp.newupdateddata$dept_name=="IT"),]
