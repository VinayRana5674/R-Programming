install.packages("dplyr")
install.packages("stats")
install.packages("sqlutils")
install.packages("RODBC")
devtools::install_github("hadley/dplyr")
library(dplyr)
library(tidyverse)
library(stats)
library(dplyr)
library(sqlutils)
library(RODBC)
data_mam=read.csv(file.choose(),sep=',')
View(data_mam)
sleepData=dplyr::select(data_mam, name, sleep_total)
View(sleepData)
head(sleepData)
head(dplyr::select(data_mam, -name))
data_mam2=mutate(data_mam,bodyweightingram=bodywt*1000)
View(data_mam2)
data_mam %>%
summarise(avg_sleep=mean(sleep_total))
summarise(data_mam,n())
remove.packages(dplyr,library(dplyr))
data_mam %>% 
  group_by(order) %>%
  summarise(avg_sleep = mean(sleep_total), 
            min_sleep = min(sleep_total), 
            max_sleep = max(sleep_total),
            total = n())