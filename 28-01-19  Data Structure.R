v15=array(c('green','yellow'),dim=c(2,3,2))
print(v15)

v16=matrix(1:20,nrow=5,ncol=4,byrow = T)
print(v16)

cells=c(1,20,28,88)
rnames=c('R1','R2')
cnames=c('c1','c2')
v17=matrix(cells,nrow = 2,ncol=2,dimnames = list(rnames,cnames))
print(v17)

cid<-c('c1','c2','c3','c4','c5','c6')
cname<- c('Aman','Rohit','Amily','John','Mary','julia')
age<-c('30','22','50','25','22','27')
Remarks<-c('Not for use','Didnt prefer for males','Havent shown good effect','thried but not satisfied','Excellent product','surely recommened')

v19=data.frame(cid,cname,age,Remarks)
View(v19)

v19[2,4]
v19[,2]

Gender=c('M','M','F','M','F','F')
v20=list(v19,Gender)
View(v20)
a=50
v21=list(v20,a,mtcars)
View(v21)
