#co-relation(-1,0,1)
trees
str(trees)
summary(trees)
cor(trees$Girth,trees$Height)
cor(trees$Height,trees$Volume)
cor(trees$Girth,trees$Volume)
cor.test(trees)
library("GGally")
library("ggplot2")
library("corrplot")
ggpairs(data=mtcars,column=1:ncol(mtcars))
written_cor_values=cor(mtcars)
written_cor_values
corrplot(written_cor_values)
library(GGally)
ggpairs(data=trees,column=1:ncol(trees))
ggpairs(data=trees,column=1:ncol(trees))
#next class
ggpairs(trees)
trees.cor=cor(trees)
trees.cor

library(corrplot)
corrplot(trees.cor)

mtcars.cor=cor(mtcars)
mtcars.cor
corrplot(mtcars.cor)
ggpairs(mtcars)

