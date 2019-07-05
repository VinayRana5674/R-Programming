trees
View(trees)
str(trees)

summary(trees)
cor(trees$Girth,trees$Height)
cor(trees$Height,trees$Volume)
cor(trees$Girth,trees$Volume)
cor.test(trees,trees$Girth,trees$Volume)
library("GGally")
library("Ggplot")
library("corrplot")


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




