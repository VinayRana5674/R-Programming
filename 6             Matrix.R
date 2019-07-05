rnames=c("R1","R2","R3","R4")

colnames=c("C1","C2","C3","C4")
matrix_creation=matrix(c(1,5,7,4,5,6),nrow=4,ncol = 4,byrow = TRUE,dimnames = list(rnames,colnames))
print(matrix_creation)
print(matrix_creation[1,3])
print(matrix_creation[2,3])

