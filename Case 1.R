callcenter.data=data.frame(
  caller_phone=c("9041","9888","9646","7777","8899"),
    caller_name=c("Aniket","Manisha"," Raman","Rajnikant",""),
    caller_location=c("Delhi","Chandigarh","Delhi","AP",""),
  call_duration=c("9min","15min","30min","20Sec","")
  
)
print(callcenter.data)
callcenter.data$Gender=c("M","F","M","M","M")
callcenter.data$problempriorty=c("Normal","Critical","Moderate","NOrmal","Normal")
print(callcenter.data)
callcenter.data[3,2]
print(callcenter.data)
rownames=c("Caller1","Caller2","Caller3","Caller4","Caller5")
row.names(callcenter.data)=rownames
print(callcenter.data)

