## R default function for data enquiry

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
