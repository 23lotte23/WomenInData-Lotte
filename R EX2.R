# Write a R program to create a Data frames which contain details of 5 employees and display the details.  (Name, Age, Gender, Role and Length of service).

Names <-c("Bill", "Gwen", "Bert", "Tina", "Hugo")
Gender <- c("m", "f", "m", "f", "m")
Age <- c(44,54,65,33,31)
Job <- c("Engineer", "Director", "Cleaner", "Accountant", "Designer")
Service <- c(5,16,44,10,3)

employ.data <- data.frame(Names, Gender, Age, Job, Service)
employ.data
  
str(employ.data)

