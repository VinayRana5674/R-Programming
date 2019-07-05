library("GGally")
library("dplyr")
library("corrplot")
deo_data=read.csv(file.choose(),sep=',',header = T)
View(deo_data)
str(deo_data)
summary(deo_data)
dim(deo_data)
nrow(deo_data)
ncol(deo_data)
cor(deo_data$Month,deo_data$Spend)# finding out which two things are co related with each other
cor(deo_data$Month,deo_data$Sales)# from here we can see there is proportional conmnection between sales and spend
cor(deo_data$Spend,deo_data$Sales)
ggpairs(data=deo_data,columns = 1:ncol(deo_data))

deo_data_cor=cor(deo_data)
corrplot(deo_data_cor)
print(deo_data_cor)

plot(deo_data$Month ~ deo_data$Sales,deo_data,xlab="Month ",ylab = "Sales",main="Sales increse acording to spend")
scatter.smooth(deo_data$Sales ~ deo_data$Month,xlab="Month ",ylab = "Sales",main="Sales increse acording to spend")

model_for_prediction=lm(Sales ~Spend,data=deo_data)
p1=predict(model_for_prediction,data.frame(Spend=4000))
print(p1)
## from the above prediction of sales according to spend is giving the output when
## spend=4000  Sales output=43872.25
##which is 84 % right for further more accuracy we can add month number within the model
model_for_prediction2=lm(Sales ~Spend  + Month,data=deo_data)
p2=predict(model_for_prediction2,data.frame(Spend=4000,Month=1))
print(p2)
## from the above prediction of sales according to spend is giving the output when
## spend=4000  Sales output=41769.42
##which is 94.65 % right Which is way more simmilar with given data



#Case 3:
#sales of the product if company spends 51004

## WHen predicting sales using prediction model 1 sale is equal to=55556.67
model_for_prediction=lm(Sales ~Spend,data=deo_data)
p1=predict(model_for_prediction,data.frame(Spend=5100))
print(p1)
## WHen predicting sales using prediction model 2 sale is equal to=543115.4
model_for_prediction2=lm(Sales ~Spend  + Month,data=deo_data)
p2=predict(model_for_prediction2,data.frame(Spend=51000,Month=1))
print(p2)

