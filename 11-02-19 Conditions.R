#COnditions

#IF-ELSE CONDITIONS

 x=5 
if(x>10) {
   print("Non-Negative number")
   } 
 else{
       print("Negative-number")
     }
}
 
#Prompt for input by user
 
 x=as.integer(readline(prompt = "Enter number")) 
 if(x>10){
   print("Non-Negative number")
 } else{
   print("Negative-number")
   }

#WHILE LOOP
 i=1
 while(i<6)
 {
   print(i)
   i=i+1
 }
 
 
 #FOR-LOOP
 x=c(2,5,8,17,25)
 count=0
 for(val in x){
   if(val%%2==0)
   count=count+1
 }
 print(count)
 }
 
 #FACTORIAL OF A NUMBER\
 n=as.integer(readline(prompt = "Enter number")) 
 fact=1
 while(n>0){
   fact=fact*n
 n=n-1
 }
 print(fact)
 
 