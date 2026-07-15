personal <- data.frame(
  Emp_ID = c(101,102,103,104,105),
  Name = c("Krishna","Jash","Bhavya","Rudra","Krisha"),
  Age = c(35,25,28,30,27),
  Joining_Year = c(2017,2019,2020,2022,2018)
)

print(personal)
write.csv(personal,
          "D:/R Programs/Syllubus Program/personal.csv",
          row.names = FALSE)

print("Personal Details File Created")
print(personal)