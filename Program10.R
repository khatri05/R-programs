student <- data.frame(
  std_id = c(101,102,103,104,105),
  std_name = c("Rahul","Shahid","Prince","Yash","Shivam"),
  course_name = c("iMCA","iMCA","iMSC(IT)","iMCA(IT)","iMCA"),
  marks = c(90,92,93,94,95)
)

write.table(student,
            file="D:/R Programs/student.txt",
            sep="\t",
            row.names = FALSE)

print("Student text file created successfully")