https://www.r-bloggers.com/using-dates-and-times-in-r/   Not important
# just read as.date() will be used for dates
dt1 <- as.Date("2012-07-22")
dt1
# output== "2012-07-22"

#non-standard formats must be specified:

dt2 <- as.Date("04/20/2011", format = "%m/%d/%Y")
dt2