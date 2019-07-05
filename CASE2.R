library("dplyr")
easy=read.csv(file.choose(),sep=',',header = T)
View(easy)

str(easy)
summary(easy)
dim(easy_day)
nrow(easy_day)
ncol(easy_day)


easy_day %>%
    group_by(BILLNUMBER)%>%
    select(CUSTOMERPHONE,PRODUCTS)%>%
    arrange(desc(Quantity))

easy_day %>%
  group_by(BILLNUMBER)%>%
  select(PRODUCTS)
easy_day %>%
  filter(PRODUCTS=="MILK")

easy_day %>%
  group_by(PRODUCTS)%>%
  summarize(sum_of_quantity=sum(QUANTITY))



  
