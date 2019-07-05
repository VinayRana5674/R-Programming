install.packages("tidyverse")
install.packages("dplyr")
library(dplyr)
starwars %>% 
  filter(species == "Droid")
mammals=read.csv(file.choose(),sep = ",",header = T)
View(mammals)
head(mammals)
summary(mammals)
str(mammals)
dim(mammals)
x=mammals %>%
  select(name,sleep_total,order)%>%
  arrange(sleep_total)%>%
  filter(sleep_total>=16)
print(x)
mammals=mammals %>%
  mutate(rem_prop=sleep_rem/sleep_total)%>%
  head()
print(mammals)
datamammals2=mutate(mammals,rem_prop=sleep_rem/sleep_total)
print(datamammals2)
mammals%>%
  mutate(body_Weight_gram=bodywt*1000)
mammals%>%
  select(-name)
mammals%>%
  filter(sleep_total>8)%>%
  select(name,order,bodywt)%>%
  arrange(bodywt)%>%
  mutate(body_wt_in_kun=bodywt/10000)
mammals%>%
  select(starts_with('sl'))
mammals%>%
  filter(order %in% c("Soricomorpha","Rodentia"))
mammals %>% 
  mutate(rem_proportion = sleep_rem / sleep_total) %>%
  head
mammals %>% 
  select(name, order, sleep_total) %>%
  arrange(order, desc(sleep_total)) %>% 
  filter(sleep_total >= 16)
  
  

