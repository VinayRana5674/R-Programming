rnames=c("Seqal1","sequal2","sequal3")
dhoom=c("20cr","40cr","80cr")
golmaal=c("50cr","65cr","90cr")
housefull=c("30cr","65cr","45cr")

colnames=c("Dhoom","Golmaal","Housefull")
matrix_creation=matrix(c(dhoom,golmaal,housefull),nrow=3,ncol = 3,byrow = TRUE,dimnames = list(rnames,colnames))

print(matrix_creation)
