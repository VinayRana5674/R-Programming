#Regression
model=lm(Volume~Girth,data=trees)
model
summary(model)

#plot(model,xlabs="Girth",ylabs="Volume")
#abline(h=0,lty=2)

plot(trees$Girth,trees$Volume)
abline(model)            #absolute line

ggplot(data=trees,aes(x=Girth,y=Volume))+geom_point()+
  stat_smooth(method="lm",col="dodgerblue3")+
  theme(panel.background = element_rect(fill="white"),
          axis.line.x = element_line(),axis.line.y = element_line())+
  ggtitle("Linear Modes")

p1=predict(model,data.frame(Girth=18))
p1
View(trees)

model1=lm(Volume~Girth+Height,data=trees)
p2=predict(model1,data.frame(Girth=18,Height=80))
p2