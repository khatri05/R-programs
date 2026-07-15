student <- data.frame(
  rollno = c(1,2,3,4,5,6),
  name = c("Rahul","Krishna","Bhavya","Jash","Rudra","Hriday"),
  semester = c(7,7,7,7,7,7),
  BDA = c(49,100,90,95,100,40),
  Django = c(99,99,25,89,45,30),
  Agile = c(7,100,67,55,80,35),
  Angular = c(99,98,10,86,75,25),
  Project = c(60,90,80,70,30,48)
)

print(student)

# Calculate Total and Precentage

student$Total <- student$BDA+student$Django+student$Agile+student$Angular+student$Project
student$percentage <- student$Total/5
print(student)

View(student)

# a. Display the detailed mark sheet of particular  student by passing the roll_no

roll <- as.numeric(readline("Enter Student Roll No"))
marksheet <- subset(student,rollno==roll)
print("Student Mark Sheet")
print(marksheet)
View(marksheet)

# b. Display the list of students who has cleared in all subjects
pass_students <- subset(student, BDA>=50 & Django>=50 & Agile>=50 & Angular>=50 & Project>=50)
print(pass_students)
View(pass_students)

# c. Display the list of students who has failed in all subjects

fail_students <- subset(student, BDA<=50 & Django<=50 & Agile<=50 & Angular<=50 & Project<=50)
print(fail_students)
View(fail_students)

# d. Display the total number of students who has secured more than 60%

above60 <- subset(student,percentage>60)
print("Student Scored More than 60%")
View(above60)

# e. Display the full details of a student who has secured maximum marks
max_student <- student[which.max(student$Total),]
View(max_student)