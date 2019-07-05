mtcars
newmtcars=mtcars
print(newmtcars)
newmtcars$mileage
View(newmtcars)
for(i in 1:30){
if(newmtcars$mpg[i]<20){
  newmtcars$mileage[i]="LOW"
}else if(newmtcars$mpg[i]<25 && newmtcars$mpg[i]>20){
  newmtcars$mileage[i]="MEDIUM"
}else{
  newmtcars$mileage[i]="GOOD"
}}