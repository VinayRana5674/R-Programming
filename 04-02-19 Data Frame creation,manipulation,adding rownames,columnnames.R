#we hava a dataset that have gender of the customers,location of cust,quantity of the product
#they bought in this dataset we need ti identify which gender is preferring more number of products.
#Create a datastructure with 7 objects in it and after creating the data structure
#we need to add a column which we earlier forgot named as product.

Gender<-c('M','F','M','F','F','M','F','M')
Location<-c('Bihar','Delhi','Punjab','Haryana','Maharastra','UP','West Bengal','MP')
Quantity<-c(5,7,8,4,6,3,9,1)
customerdata=data.frame(Gender,Location,Quantity,stringsAsFactors = F)


str(customerdata)
Gender
Location
Quantity

nrow(customerdata)
ncol(customerdata)
#Only shows top 5 rows
head(customerdata)
tail(customerdata)

str(mtcars)
nrow(mtcars)
ncol(mtcars)
head(mtcars)
tail(mtcars)

#Adding new column
Product=c('Soap','cREAM','wIPER','FLOWER','Perfume','Jeans','mobile','Deo')
#1 way
customerdata$prod=Product

#2 way
customerdata=cbind(customerdata,Product)


#Adding row to dataset
R8=data.frame(Gender=factor('M'),Location=('del'),Quantity=(10),prod=('soap'),Product=('soap'))

customerdata=rbind(customerdata,R8)
customerdata

#Removing column
customerdata=customerdata[,-5]

mtcars
nrow(mtcars)

#Adding Row Names
v22=c('cust1','cust2','cust3','cust4','cust5','cust6','cust7','cust8','cust9')
row.names(customerdata)=v22
customerdata

#column level data
mtcars[[4]]
mtcars[["hp"]]
mtcars[,4]
mtcars$hp
mtcars[4]
