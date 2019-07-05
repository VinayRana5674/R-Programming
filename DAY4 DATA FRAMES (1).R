#CREATING DATA FRAMES AND ASSIGNING VALUES TO DATA FRAME#

df1=data.frame(Name=c("RAM","SHAM"),AGE=c(20,30),GENDER=factor(c("MALE","FEMALE")))
df1
Name=c("RAM","SHAM")
COURSE=c("C++","PYTHON")
GRADES=c("B","A")
df2=data.frame(Name,COURSE,GRADES)
df2

#ROWNAMED DATA FRAMES#
df3=c("Student1","Student2")
df3
rownames(df1)=(df3)
df1
rownames()

#COMBINING DATA FRAMES#
df5=data.frame(df1,df2)
df5
df6=data.frame(Name=c("MAN","SHAM","KAMAL"),AGE=c(20,30,50),GENDER=factor(c("MALE","FEMALE","MALE")))
df7=data.frame(Name,COURSE,GRADES)
df6
df7
df8=data.frame(df6,df7)
df8

#ACCESSING VALUES FROM DATA FRAMES#

df1
print(df1)
View(df1)

rownames(df1)
colnames(df1)

df1$
df1=data.frame(Name=c("RAM","SHAM"),AGE=c(20,30),GENDER=factor(c("MALE","FEMALE")),stringsAsFactors =F)
df2
is.factor(df2$Name)


df1$Name
df1[,2]
df1[,'AGE']
df1[[2]]
df1$AGE
df1[2]
df1['AGE']
df1[c('AGE','GENDER')]


df1[1,]
df1[-1,]
df1['Student1',]
df1['Student']



df1[1,2]
df1[-1,2]
df1['Student1',2]
df1[2,'GENDER']
df1[,]

df1[,Name=='SHAM']
df1[Student1=,]
subset(df1,Name=='SHAM')



#CALCULATION ON DATA FRAMES#
df1[2]+1
df9=c(20,30)
df1[2]+df9
df10=data.frame(weight=c(20,30),height=c(5.2,6.4))
df1[2]+df10[2]


#Changing Values in DATA FRAMES#
df1$Name='Harman'
df1$Name=c('Harman','Raman')
df1[1,'Name']='Sachin'
df1['Student2',2]=50
df1[2,3]='MALE'

#ADDING VALUES IN DATA FRAMES#
df11=data.frame(df1,df2)
df12=cbind(df1,df2)
colu=colnames(df1)
df13=data.frame("Sushil",30,'MALE','Sushil','R','A')
colnames(df13)=colu
rbind(df1,df13)

#Removing Values from DATA FRAME#
df1[1,"GENDER"]=NA
df1

df1[,-4]
df1$COURSE=NULL
df1


#FUNCTIONS OF DATAFRAMES#
str(df1)
levels(df1$Name)
