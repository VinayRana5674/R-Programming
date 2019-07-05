Vector8=c(rep('male',20),rep('female',10))
Vector8=factor(Vector8)
View(Vector8)
summary(Vector8)
factor
View(mtcars)
summary(mtcars)
class(mtcars$am)
learnmtcars=mtcars
learnmtcars$am=factor(learnmtcars$am)
class(learnmtcars$am)
summary(learnmtcars)


learnmtcars$gear=factor(learnmtcars$gear)
learnmtcars$carb=factor(learnmtcars$carb)
learnmtcars$vs=factor(learnmtcars$vs)
learnmtcars$cyl=factor(learnmtcars$cyl)

vector(factor)