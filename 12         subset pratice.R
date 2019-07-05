mtcars
newmtcars=mtcars
mtcars[1,]
mtcars[1,5]
mtcars[1,c('am','hp')]
mtcars[1,c(3,5,6)]
mtcars[1:8,c('hp','am')]
mtcars[-(1:8),]
View(newmtcars)

newmtcars['Fiat 128',c('hp','am','wt')]
newmtcars[which(newmtcars$gear==4),]
newmtcars[newmtcars$gear==4,]
newmtcars[which(newmtcars$gear==4 & newmtcars$am==0),]
newmtcars[which(newmtcars$mpg>20 & (newmtcars$am==1 || newmtcars$am==0) & newmtcars$gear>3 &newmtcars$carb>3),]
(newmtcars[which(newmtcars$hp > mean(newmtcars$hp) & newmtcars$wt> mean(newmtcars$wt)),'mpg']<20)

newmtcars$am[4]==1
newmtcars$am[4]=1
newmtcars[which(newmtcars$gear>3),'am']
sum(newmtcars[which(newmtcars$gear>3),'am'])
vector=c(1,2,3,5,1,4,5,0,0,0,0)
length(vector)
sum(vector)
x=newmtcars[which(newmtcars$gear>3),'am']
print(x)
length(which(x==1))
length(which(x==0))
mtcars[mtcars$mpg>23 & (avghp=mean(mtcars$hp)),'cyl']
print(avghp)
print(paste0("The average HP for the car having mpg >30 is:-", avghp))
plot(mtcars$mpg ~ as.factor(mtcars$am),mtcars,xlab="Transmisson type", ylab="MIles per gallon",main="Histogram of MPG according to am")
plot(mtcars$mpg ~ mtcars$wt,mtcars,xlab="Weight of the car",ylab=" Mpg of the car",main="Histogram of mpg according to weight")
