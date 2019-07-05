#cONDITIONAL  STATEMENT WITHIN fUNCTION

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


# FIND THE POWER OF NUMBER BY CREATING A FUNCTION

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




#Wap to create a function in which when the name of attribute of mtcars is passed then it would print data for it attribute

func1=function(x){
  attach(mtcars)
  View(x)
}

func1(mpg)

