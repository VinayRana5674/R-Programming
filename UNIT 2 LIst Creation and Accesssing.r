customerdata["cust1","prod"]

#List
l1=list(customerdata,b=c(20,30),mtcars)

#Accessing element from list
l1[[1]]
l1[[2]][1]
l1[[3]][2,1]

#Adding elemnt from list
l1[4]='a'
l1
#Replacing element
l1[[2]][3]=60
l1[[2]]

#Removing elements from list
l1=l1[-4]
l1[[2]][-3]

