str(titanic_data)
dim(titanic_data)
summary(titanic_data)

#Finding Mean
mean(titanic_data$Age,na.rm = T)

View(titanic_data$Age)
View(titanic_data)


#Finding na values
is.na(titanic_data)

#1.Method
(titanic_data_na=titanic_data[!complete.cases(titanic_data), ])
is.na(titanic_data)


#2.Method
titanic_data=na.omit(titanic_data)
nrow(titanic_data)
mean(titanic_data$Age)
