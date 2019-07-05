library(sqldf)

sqldf("select * from iris")
sqldf("select count(*) from iris")
sqldf("select count(Species) from iris group by Species")
sqldf("select count(Species) from iris group by Species")
sqldf("select Sepal.Length from iris where Species in ('setosa')")
sqldf("select * from iris where species like '%species' ")

