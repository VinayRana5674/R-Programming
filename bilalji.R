amce_data=read.csv(file.choose(),sep=',',header = T)
View(amce_data)
dim(amce_data)

## find out i.	Is the Target Sales is achieved or overcome by Gross Sale in any month? 

for(i in 1:nrow(amce_data)){
  if(amce_data$Target.sales[i]>amce_data$Gross.sales[i]){ print(paste("Target sale is Overcome for",amce_data$Months[i]))}else if(amce_data$Target.sales[i]==amce_data$Gross.sales[i]){
      print(paste("Target sale is Achieved exactly as gross sale for",amce_data$Months[i]))
    }else{
      print(paste("Target sale is not achieved for",amce_data$Months[i]))
    }
  }


#is adcost is related to social network cost
# we can find out the mean of ad cos, mean of social network cost, and find the diff betweeb adcost and social net cost and than 
#than anallyze the 
adcost_mean=mean(amce_data$Ad.costs)
print(adcost_mean)
social_network_cost_mean=mean(amce_data$Social.network.costs)
print(social_network_cost_mean)
for(i in 1:nrow(amce_data))
{
  x=amce_data$Ad.costs[i]-amce_data$Social.network.costs[i]
  print(x)

  
  }
for(i in 1:nrow(amce_data))
{
 if(amce_data$Social.network.costs[i]<social_network_cost_mean){
   if(amce_data$Ad.costs[i]<amce_data$Ad.costs[i]){
   print(paste("The difference btween mean of social network cost and its mean  is",amce_data$Social.network.costs[i]-social_network_cost_mean))
     print(paste("The difference btween mean ofad cost and its mean  is",amce_data$Ad.costs[i]-adcost_mean))
     
 }}else{
   #when values are greater than mean
   
   print(paste("The difference btween mean of social network cost is",amce_data$Social.network.costs[i]-social_network_cost_mean))
   #print("By given data it could have been said they are related or not if more information would be there")
   
 }
  
    
}
print(paste("THe differences between social network cost is much more higher and without any pattren so we can say therer is no relation between adcost and Social network cost"))


#iii.	In which Month users mostly prefer the ACME Products?
## THe month where gross sale is higher than all other month will be higher selling product month of amce_product
for(i in 1:nrow(amce_data)){
  for(j in 2:nrow(amce_data)){
    if(amce_data$Gross.sales[i]>amce_data$Gross.sales[j]){
      max=amce_data$Gross.sales[i]
      max_month=amce_data$Months[i]
    }
  }
  
}
print(paste("Maximum sale was on MOnth of ",max_month," Which was ",max))


##iv.	If average adv cost and average social network cost is calculated then would they collectively bring gross 
##sale near to target? 

total_avg=adcost_mean+social_network_cost_mean
percentage_of_achieved_gross_sale=0
print(total_avg)

for(i in 1:nrow(amce_data))
  {
  print(paste("For ",amce_data$Months[i]))
  if(amce_data$Gross.sales[i]>=total_avg){
    print(paste("Gross sale is acheived by collectively combination of Avg ad cost and Avg Social net cost: Which is ",amce_data$Gross.sales[i] -total_avg," Than require Gross sale" ))
    percentage_of_achieved_gross_sale=(total_avg/amce_data$Gross.sales[i])*100
    print(paste("And the achieved grosss sell will be: ",percentage_of_achieved_gross_sale,"Percentage Greater than total avg sale"))
    }else{
    print(paste("Gross sale  coudn't acheived by collectively combination of Avg ad cost and Avg Social net cost: We would have required ",total_avg-amce_data$Gross.sales[i]," More money to reach the gross sale target"))
      percentage_of_achieved_gross_sale=(amce_data$Gross.sales[i]/total_avg)*100
      print(paste("And the Required avg should have been ",percentage_of_achieved_gross_sale," percantage greater  than currently achieved sale "," which is",abs((amce_data$Gross.sales[i]/total_avg)*100)))
  }
}


## we can find out total ad cost and target for these three month seprately and for other three month seprately than comparing on which quarter adcost were high  if for that quarter adcost was high than find out wheather target sales achieved after high spending on adcost was also high
q1_adcost=0
q1_target_sales=0
for(i in 1:3) ## total adcost for q1
{
  
  q1_adcost=q1_adcost+amce_data$Social.network.costs[i]
  q1_target_sales= q1_target_sales+amce_data$Target.sales[i]
  
}
print(q1_adcost)
print( q1_target_sales)

# FOR Q2

q2_adcost=0
q2_target_sales=0
for(i in 4:6) ## total adcost for q1
{
  
  q2_adcost=q2_adcost+amce_data$Social.network.costs[i]
  q2_target_sales= q2_target_sales+amce_data$Target.sales[i]
  
}
print(q2_adcost)
print( q2_target_sales)

## NOW COPARING WHETER INVESTEMENT ON ADCOST GAVE US MORE TARGET SALE OR NOT
if(q1_adcost>q2_adcost){
  if(q1_target_sales>q2_target_sales){
    print(paste("From the given analysis we can see investing more on adcost gave us more target sales"))
    print("For q1 investing more on adcost gave more target sale")
  }else{
    print(paste("From the given analysis we can see investing more on adcost gave us didn't gave us target sales"))
    
  }
}else{
  if(q2_target_sales>q1_target_sales){
    print(paste("From the given analysis we can see investing more on adcost gave us more target sales"))
    print("For q2 investing more on adcost gave more target sale")
  }else{
    print(paste("From the given analysis we can see investing more on adcost gave us didn't gave us target sales"))
   
    
  }
}
  