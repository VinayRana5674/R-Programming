#bar chart two method 
#y axis always count or frequency
#geom_bar and geom_col
# in geom_bar just tel the x axis and y axis will be taken by itself
#pie chart:-  y axis no x axis 
library(ggplot2)
library(ggplot)
library(tidyverse)
View(mpg)
ggplot(mpg,aes(class))+geom_bar(aes(weight=displ,fill=drv))+coord_flip()
g1=ggplot(mpg,aes(class))+geom_bar(aes(fill=drv))
g2=g1+geom_bar(aes(fill=drv))
g2
g2+coord_flip()


## working with geom_col
df=data.frame(x=c('a','b','c'),outcome=c(2.3,1.6,2.9))
ggplot(df,aes(x,outcome))+geom_col()
mtcars$cyl=as.factor(mtcars$cyl)
g3=ggplot(mtcars,aes(x=cyl,mpg))+geom_col(aes(fill=factor(cyl)))
g3
mtcars$gear=as.factor(mtcars$gear)
g4=ggplot(mtcars,aes(x=cyl,mpg))+geom_col(aes(fill=gear))
g4

df2=data.frame(gender=c('Male','Female','Male','Female','Male'),age=c(43,55,45,34,67))
ggplot(df2,aes(x=" ",y=age,fill=gender))+geom_bar(width = 1,stat='identity')+coord_polar("y",start=0)
#3 rotating the bar chrt
g6=ggplot(mtcars,aes(x=cyl,mpg))+geom_col(aes(fill=factor(gear)))+coord_polar('x',start=0)
g6
## exact pie chart ##  CYCLON CHART HAVING GAP IN BETWEEN OF PIE CHART

g6=ggplot(mtcars,aes(x='',mpg))+geom_col(aes(fill=factor(gear)))+coord_polar('y',start=0)
g6

## from the iris data set using r find do sappal length sappel widht pattel length pattel width plays a role for getting selected as a particular species.
##if yes create a model to predict the species by only entering sappel length and sappel width
## visualize ur output also
View(iris)
sumarry(iris)
str(iris)
dim(iris)
ggpairs(data=iris,columns = 1:ncol(iris))
cor(iris$Sepal.Length,iris$Sepal.Width)
cor(iris$Sepal.Width,iris$Petal.Length)
cor(iris$Petal.Length,iris$Petal.Width)
cor(iris$Petal.Width,iris$Sepal.Length)


plot(iris$Petal.Length ~ iris$Petal.Width,iris,xlab="petal length ",ylab="Petal widht",main = "relationship graph bw petal length and p widght")
scatter.smooth(iris$Petal.Length ~ iris$Petal.Width,xlab="petal length ",ylab="Petal widht",main = "relationship graph bw petal length and p widght")
plot(iris$Petal.Width ~ iris$Sepal.Length,iris,xlab="petal Width ",ylab="Sepal length",main = "relationship graph bw petal widht  and Sepal length")
scatter.smooth(iris$Petal.Width ~ iris$Sepal.Length,xlab="petal Width ",ylab="Sepal length",main = "relationship graph bw petal widht  and Sepal length")
model_for_prediction=lm(Sepal.Length ~Sepal.Width,data=iris)
p1=predict(model_for_prediction,data.frame(Sepal.Length=5.1,Sepal.Width=3.5))
print(p1)

model_for_prediction2=lm(Species~Sepal.Length+Sepal.Width,data=iris)
p2=predict(model_for_prediction2,data.frame(Sepal.Length=5.1,Sepal.Width=3.5))
print(p2)