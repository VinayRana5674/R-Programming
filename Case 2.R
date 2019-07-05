patient.biodata=data.frame(
  patient.name=c("Suman","Raman"),
  patient.id=c("P101","P105"),
  patient.gender=c("M","M"),
  patient.age=c(25,45),
  patient.job=c("DOc","Eng"),
  patient.jobhours=c(8,4)
  
)
patient.medicalhistoy=data.frame(
  patient.id=c("P101","P105"),
  patient.bgroup=c("O","A"),
  patient.bsugar=c("25","20"),
  patient.bp=c(15,45),
  patient.hb=c(85,45),
  patient.esi=c(45,85),
  patient.rbc=c(45,48),
  patient.wbc=c(45,45)
)

patient.parentsmhistory=data.frame(
  patient.id=c("P101","P105"),
  patient.fname=c("Vinay","Raja"),
  patient.fbgroup=c("O","A"),
  patient.fbsugar=c("25","20"),
  patient.fbp=c(15,45)
  
)
print(patient.biodata)
print(patient.medicalhistoy)
print(patient.parentsmhistory)
n=as.integer(readline(prompt = "Please enter patient id"))
if(n==patient.biodata$patient.id[1]){
  print(patient.biodata[1,])
  print(patient.medicalhistoy[1,])
  print(patient.parentsmhistory[1,])
}else if (n==patient.biodata$patient.id[2]) {
  print(patient.biodata[2,])
  print(patient.medicalhistoy[2,])
  print(patient.parentsmhistory[2,])
}else {
  print("data not found")
}
