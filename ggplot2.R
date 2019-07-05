#ggplot 
#pass these 4 values
#data -requires data for which graph should be creates
#aesthethics:- size,shap,x,y,color
#coordinates:- will be optional field which would be use to create  cartien,polar,maps
#Geometry:- point,line,bar,pie,lag
#response come to y axis and first arg of plot is always response
library(ggplot2)
library(ggplot)
library(tidyverse)
mtcars$cyl=as.factor(mtcars$cyl)
g1=plot(mpg~hp,data=mtcars,col=cyl,pch=c(4,6,8)[mtcars$cyl],cex=1.2)+legend("topright",legend = levels(mtcars$cyl),pch =c(4,6,8),col=levels(mtcars$cyl))
ggplot(mtcars,aes(x=hp,y=mpg,color=cyl,shape=cyl))+geom_point(aes(size=3))+geom_smooth(method="lm",aes(fill=cyl))+facet_grid(~cyl)
plot(mpg~hp,data=mtcars,xlable="df",ylable="fg",main="dfds",col=cyl,cex=1.2,pch=c(4,6,8))
