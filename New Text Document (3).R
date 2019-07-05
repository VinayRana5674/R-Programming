#########
############
#################
##############          COrelation and rgression

trees
View(trees)
str(trees)
x="vj"
toupper(x)
summary(trees)
cor(trees$Girth,trees$Height)
cor(trees$Height,trees$Volume)
cor(trees$Girth,trees$Volume)
cor.test()
library("GGally")
library("Ggplot")
library("corrplot")
x="I am Vinay"
library(stringr)
word(x,-1,sep=" ")

ggpairs(data=trees,columns = 1:3)
trees.cor=cor(trees)
print(trees.cor)
trees.cor
corrplot(trees.cor)
mtcars
mtcars.cor=cor(mtcars)
corrplot(mtcars.cor)
ggpairs(mtcars)

# cofficient - Estimate and standard errors The intercept is the extracted tree volume if the value of the girth was zero 
# we can not have an tree with negative value'
#slope in the data set is the effect of tree girth and tree volume which means that for additional incg if girth tree volume increased by 5.0659 
#the cofficent standard error tells the variance of estimated cofficient from actual avg of respnse variable
model=lm(Volume ~ Girth,data=trees)
print(model)
plot(model)
summary(model)
# t value-how many sd are the estimated cofficient of zero
# p value -it measures any value equal or larget than t if h0 is true
#THE LARGER T VALUE AND THE SMALLER P VALUE GENRALLY WE USE 0.05 AS FOR SIGNIFICANCE AND WHEN P VALUE ARE SMALLER THAN 0.05 WE REJECT NULL hYPOTHESIS

#plot(model,xlab="Grith",ylab="VOlume")
#abline(h=0,unity=TRUE)# x=predictive y=response

plot(trees$Girth,trees$Volume)
abline(model)
summary(model)


ggplot(data=trees,aes(x=Girth,y=Volume))+geom_point()+
  stat_smooth(method="lm",col="dodgerblue3")+
  theme(panel.background = element_rect(fill="white"),
        axis.line.x = element_line(),axis.line.y = element_line())+
  ggtitle("Linear Modes")
p1=predict(model,data.frame(Girth=18))
print(p1)
model1=lm(Volume ~ Girth +Height,data=trees)
p2=predict(model1,data.frame(Girth=18,Height=80))
print(p2)









############
#############
################
Subsetting using dplyrinstall.packages("tidyverse")
install.packages("dplyr")
library(dplyr)
starwars %>% 
  filter(species == "Droid")
mammals=read.csv(file.choose(),sep = ",",header = T)
View(mammals)
head(mammals)
summary(mammals)
str(mammals)
dim(mammals)
x=mammals %>%
  select(name,sleep_total,order)%>%
  arrange(sleep_total)%>%
  filter(sleep_total>=16)
print(x)
mammals=mammals %>%
  mutate(rem_prop=sleep_rem/sleep_total)%>%
  head()
print(mammals)
datamammals2=mutate(mammals,rem_prop=sleep_rem/sleep_total)
print(datamammals2)
mammals%>%
  mutate(body_Weight_gram=bodywt*1000)
mammals%>%
  select(-name)
mammals%>%
  filter(sleep_total>8)%>%
  select(name,order,bodywt)%>%
  arrange(bodywt)%>%
  mutate(body_wt_in_kun=bodywt/10000)
mammals%>%
  select(starts_with('sl'))
mammals%>%
  filter(order %in% c("Soricomorpha","Rodentia"))
mammals %>% 
  mutate(rem_proportion = sleep_rem / sleep_total) %>%
  head
mammals %>% 
  select(name, order, sleep_total) %>%
  arrange(order, desc(sleep_total)) %>% 
  filter(sleep_total >= 16)
  
  




#######################
###################
################ 
Subsetting 



on mtcars withoout subset function

# Sub-setting
#from mtcars find data from 1st and 3rd column
mtcars[,c(1,3)]     

#we need to see data from 'am' column
mtcars[,'am']       

# find first five rows for 'hp' column
mtcars[1:5,'hp']

#leaving first 8 rows show the data for 'cyl' column
mtcars[-1:-8,'cyl']

#find the data for car named as Volvo 142E
mtcars['Volvo 142E',]

#find the no. of gears in the cars having names started with Merc 280
mtcars['Merc 280','gear']

#find the data for the cars having gears 4
mtcars[which(mtcars$gear==4),]
mtcars[mtcars$gear==4,]

#find the cars those are automatic and having milage above 20
mtcars[mtcars$am==0 & mtcars$mpg>20,]

# consider a case where have a requirement for buying a car as 
# 1st condition--> milage should be above 20
#2nd-->it is prefable if car should be automatic
#3rd-->no. of gear more than 3
#4th-->engine needs to be V-shaped
#5th-->can work with more than 3 carburetors
attach(mtcars)
mtcars[mpg>20 & gear>3 & vs==0 & carb>3,]

# a manufaturer company wants to create a car with high milage for that an analyst, 
#have given them a hypothesis that, if the weight of the car move milage decreases
#with respect to this if horse power of the car is more than also milage decreases. Now prove
#the context of this hypothesis
mtcars[wt>mean(wt) & hp>mean(hp),'mpg']
(mtcars[wt>mean(wt) & hp>mean(hp),'mpg'])<20

#we need to find the cars those have gears above 3 needs to be provided in which type of 
#transmission
mtcars[gear>3,'am']
sum(mtcars[gear>3,'am'])/length(mtcars[gear>3,'am']) * 100

#the cars having milage above 23 what would be there average horse power and what would be
#the minimum numbers of cylinder that car required
mtcars[mpg>23,'hp',]
mtcars[mpg>23,'cyl',]






###########################
#################
#########################3
 ON titanic data with subset function

#Titanic Dataset
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



############################################
#########################   default function and defind function



help("mtcars")
apropos("lm")   #show all the parameters in which lm function can work
apropos("cor")
library(MASS)   #it use to attach the function
demo()        #it shows all the packages
demo(package = .packages(all.available = T))    #description of packages which are persent in R
?NA     #?is a help 
args()  #is telling about the arguments of any above function
args(lm)


#------------------Maths Functions-----------------
x=c(20,20.78,20.9,30,-20)
abs(x)
sqrt(16)
ceiling(4.482)   #it gives upper roundoff values
floor(-4.482)   #it gives lower roundoff value
trunc(-4.482)    #it removes the decimal digits
round(x,digits = x)
round(4.482,digits = 2)
sin(30)
cos(30)
tan(30)
log(20)
log10(20)
exp(2)
x="abcdef"
substr(x,2,4)
grep("A",c("b","A","a"),fixed = T)   #its find the A is persent or its location.fixed is for regular expression
# its a syntax sub(pattern,replacement,x,ignore.case = F,fixed = F)
sub("\\s",".","Hello there")
strsplit("abc","")
paste("x",1:3,sep = "")
paste("todaydate is",date())
mean(x,na.rm = F)
sd(x)
median(x)
quantile(x,c(.3,.84))
range(x)
sum(x)
y=seq(2,100,5)
rep(y,20)

learnpower=function(x,y){
  result=x^y
  print(paste(x,"raised to power",y,"is",result))
}
learnpower(4,8)

#----------------------------------------------------------
squarefunc=function(a){
  for(i in 1:a){
    b=i^2
    print(b)
  }
}
squarefunc(7)


#wap to create a function that will find greater no out of two numbers
greater=function(x,y){
  if(x>y)
  {
    print(paste(x,"is greater no"))
  }else{
    print(paste(y,"is greater no"))
  }
}
greater(5,3)

#Wap to create a function in which when the name of attribute of mtcars is passed then it would print data for it attribute

func1=function(x){
  attach(mtcars)
  View(x)
}

func1(mpg)






fib=function(value){
  n1=0
  n2=1
  n3=0
  for(i in 1:value){
    if(i==1){
      print(n1)
    }
    if(i==2){
      print(n2)
    }
    n3=n1+n2
    n1=n2
    n2=n3
    print(n3)
  }
}
fib(5)

