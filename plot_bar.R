#bar chart two method 
#y axis always count or frequency
#geom_bar and geom_col
# in geom_bar just tel the x axis and y axis will be taken by itself
View(mpg)
ggplot(mpg,aes(class))+geom_bar()

