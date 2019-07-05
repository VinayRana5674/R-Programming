#co-relation(-1,0,1)
trees
str(trees)
summary(trees)
cor(trees$Girth,trees$Height)
cor(trees$Height,trees$Volume)
cor(trees$Girth,trees$Volume)
cor.test(trees)

library(GGally)
ggpairs(data=trees,column=1:3)

#next class
trees.cor=cor(trees)
trees.cor

library(corrplot)
corrplot(trees.cor)

mtcars.cor=cor(mtcars)
mtcars.cor
corrplot(mtcars.cor)
ggpairs(mtcars)

#from the dataset of mammals show the name sleep total and order of mammal where the sleep total would be 
#greater than or equal to 16 and data shown be shown with the arrangement of order and sleep total

datamammals=read.csv(choose.files(),sep=",")

datamammals %>%
  select(name, order, sleep_total) %>%
  arrange(sleep_total,order)%>%
  filter(sleep_total >=16)
head
head(datamammals)
datamammals=datamammals%>%
  mutate(rem_prop=sleep_rem/sleep_total)%>%
  head

datamammals2=mutate(datamammals,rem_prop=sleep_rem/sleep_total)
head(datamammals2)

datamammals%>%
  summarize (avg_sleep=mean(sleep_total),
             standarddevial=sd(sleep_total),
             min_sleep=min(sleep_total),
             max_sleep=max(sleep_total))
#in the dataset of mammals, add a new column for body weight of mammals in grams
datamammals%>%
  group_by(order)%>%
  summarize(avgsleep=mean(sleep_total),
            minsleep=min(sleep_total),
            maxsleep=max(sleep_total),
            countofmammals=n())
