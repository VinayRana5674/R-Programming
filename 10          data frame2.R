emp.data=data.frame(
  emp.id=c(1:5),
  emp.name=c("Vinay","Ajay","Anuj","Ajay","Suman"),
  emp.salary=c("2.3k","2.1k","2k","23l","1.9k"),
  emp.date=as.Date("2012-01-02","2012-01-02","2012-01-02","2012-01-02","2012-01-02"),
  emp.gender=c("M","M","M","M","M")
  
  
  
)
print(emp.data)
rownames=c("Customer1","Customer2","Customer3","Customer4","Customer5")
row.names(emp.data)=rownames
row.names(emp.data)=rownames
print(emp.data)
newdataentry=data.frame(
  emp.id=c(6:10),
  emp.name=c("Vinay","Ajay","Anuj","Ajay","Suman"),
  emp.salary=c("2.3k","2.1k","2k","23l","1.9k"),
  emp.date=as.Date("2012-01-02","2012-01-02","2012-01-02","2012-01-02","2012-01-02"),
  emp.gender=c("M","M","M","M","M")
  
  
)
rownames=c("Customer6","Customer7","Customer8","Customer9","Customer10")
row.names(newdataentry)=rownames
#addig row
emp.data=rbind(emp.data,newdataentry)
print(emp.data)
print(emp.data)
#adding coloumn
emp.data$ismarried=c("F","F","F","F","F","F","F","F","F","F")
print(emp.data)
#printing two specific coloum by c names

result=data.frame(emp.data$emp.id,emp.data$emp.name)


print(emp.data)
remove(emp.data)
print(result)
result=emp.data[c(3,5),c(4,5)]
print(result)
print(emp.data)
emp.data=emp.data[,-3]
print(emp.data)
emp.data=emp.data[-c(2,4,6),]
print(emp.data)
