person.data=data.frame(
  person_days=c("MON","TUE","WED","THU","FRI","SAT","SUN"),
  person_earnig=c(500,500,700,800,1000,0,0),
  person_spending=c(100,500,500,300,500,500,300)
  
  
)
rownames=c("1","2","3","4","5","6","7")
row.names(person.data)=rownames
print(person.data)

# Saving per day
saving_of_day=0
for(i in 1:nrow(person.data))
{
  saving_of_day[i]=person.data$person_earnig[i]-person.data$person_spending[i]
  print(paste("SAving of the day ",i," is ",saving_of_day[i]))
}
person.data$Saving
for(i in 1:nrow(person.data))
{
  
  #if earnig is zero avoid negative values
  if(saving_of_day[i]>0)
  {
  person.data$Saving[i]=saving_of_day[i]}else{
    person.data$Saving[i]=0
  }
}
print(person.data)
n=as.numeric(readline(prompt = "Enter the day number whom you want to see the data"))
print(person.data[n,])