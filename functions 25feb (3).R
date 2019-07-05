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

finffact=function(x){
  fact=1
  while(x>0){
    fact=fact*x
    x=x-1
  }
  print(fact)
}
finffact(5)