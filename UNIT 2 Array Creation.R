fruits=c(rep('male',20),rep('female',10))
columnnames <- c("COL1","COL2","COL3")
rownames <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")
newarray=array(fruits,dim=c(3,3,2),dimnames = list(rownames,columnnames,matrix.names))
print(newarray)
print(newarray[,2])