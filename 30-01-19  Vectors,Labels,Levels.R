#Combining Vectors
V=c(1,2,3)
W=c('Marry','Rohan')
X=c(V,W)
View(X)

#Access Values in a vector
X[3]
X

#MODIFY  data
X[4]="RAM"

#Insert data
X[6]="HP"

X[3:5]=c('20','40','60')

X[c(2,4)]=c('50','70')

X[length(X)+1]=10

#Leaving 3 show all the value
X[-3]
X[3]

#Assigning names to values
A=c("Roll","Reg","S.No","Name","Fname")
names(X)=A
X
names(X)
X
X['Name']

#Value shown through Logical vectors
S=c("aa","bb","cc","dd","ee")
L=c(FALSE,FALSE,FALSE,TRUE,FALSE)
S[L]  #only true values will be shown

X=X[-2]


#Levels in Factor
data=c(1,2,2,3,1,2,3,3,1,2,3,3,1)
levels(data)
data1=factor(data)
levels(data1)
data1=factor(data,labels=c('I','II','III'))
data1=factor(data,labels=c(1,2,3),ordered=TRUE)
levels(data1)

mons=c('March','April','Jan','Nov','Jan','Sept','Oct','Sept','Nov','Aug','Jul','Dec','Aug','Aug','Sept','Nov','Feb','April')
mons
mons=factor(mons)
table(mons)
levels(mons)
mons=factor(mons,levels = c('Jan','Feb','March','April','May','Jun','Jul','Aug','Sept','Oct','Nov','Dec'),ordered=TRUE)
table(mons)
mons
