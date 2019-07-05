# Sub-setting
#from mtcars find data from 1st and 3rd column
mtcars[,c(1,3)]     

#we need to see data from 'am' column
mtcars[,'am']       

# find first five rows for 'hp' column
mtcars[1:5,'hp']

#leaving first 8 rows show the data for 'cyl' column
mtcars[-1:-8,'cyl']

#find the data for car named as Volvo 142E
mtcars['Volvo 142E',]

#find the no. of gears in the cars having names started with Merc 280
mtcars['Merc 280','gear']

#find the data for the cars having gears 4
mtcars[which(mtcars$gear==4),]
mtcars[mtcars$gear==4,]

#find the cars those are automatic and having milage above 20
mtcars[mtcars$am==0 & mtcars$mpg>20,]

# consider a case where have a requirement for buying a car as 
# 1st condition--> milage should be above 20
#2nd-->it is prefable if car should be automatic
#3rd-->no. of gear more than 3
#4th-->engine needs to be V-shaped
#5th-->can work with more than 3 carburetors
attach(mtcars)
mtcars[mpg>20 & gear>3 & vs==0 & carb>3,]

# a manufaturer company wants to create a car with high milage for that an analyst, 
#have given them a hypothesis that, if the weight of the car move milage decreases
#with respect to this if horse power of the car is more than also milage decreases. Now prove
#the context of this hypothesis
mtcars[wt>mean(wt) & hp>mean(hp),'mpg']
(mtcars[wt>mean(wt) & hp>mean(hp),'mpg'])<20

#we need to find the cars those have gears above 3 needs to be provided in which type of 
#transmission
mtcars[gear>3,'am']
sum(mtcars[gear>3,'am'])/length(mtcars[gear>3,'am']) * 100

#the cars having milage above 23 what would be there average horse power and what would be
#the minimum numbers of cylinder that car required
mtcars[mpg>23,'hp',]
mtcars[mpg>23,'cyl',]
