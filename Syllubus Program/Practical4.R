rollno <- c(1,2,3,4,5,6)
name <- c("Krishna","Fenil","Rudra","Hriday","Bhavya","Thomas")
marks <- c(70,60,50,65,70,25)
student_data <- data.frame(rollno,name,marks)
print(student_data)

student <- student_data

student$result <- ifelse(student$marks>=50,"Pass","Fail")

print(student)