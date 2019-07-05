#using the data set of mtcars plot between cyl and milege
library(ggplot2)
library(ggplot)
library(tidyverse)
mtcars$cyl=as.factor(mtcars$cyl)
View(mtcars)
ggplot(mtcars,aes(cyl,mpg,color=cyl))+geom_point(size=6)+xlab("MPG per")

ggplot(mtcars, aes(mpg, disp,color=mpg)) + geom_point()+facet_grid(cyl~.)
ggplot(mtcars, aes(mpg, disp)) + geom_point(aes(color = cyl))
ggplot(mtcars, aes(mpg)) + geom_bar(aes(fill = cyl), binwidth = 2)
ggplot(mtcars, aes(mpg, disp)) + geom_point() + facet_grid(cyl ~ .)
ggplot(mtcars, aes(mpg, disp)) + geom_point() + facet_grid(cyl ~ gear)
ggplot(mtcars,aes(mpg,disp))+geom_point(aes(color=cyl))

ggplot(mtcars,aes(mpg))+geom_bar(aes(fill=cyl),binwidth = 2)
