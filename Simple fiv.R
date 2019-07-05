fib=function(value){
  n1=0
  n2=1
  n3=0
  for(i in 1:value){
    if(i==1){
      print(n1)
    }
    if(i==2){
      print(n2)
    }
    n3=n1+n2
    n1=n2
    n2=n3
    print(n3)
  }
}
fib(5)