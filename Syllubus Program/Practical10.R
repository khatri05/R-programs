library(openxlsx)
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

# Save Personal Details to Excel
write.xlsx(personal,
           "D:/R Programs/Syllubus Program/personal.xlsx",
           overwrite = TRUE)

print("Personal Details Excel File Created")

# Create Official Details

official <- data.frame(
  Emp_ID = c(101,102,103,104,105),
  Department = c("IT","HR","Finance","IT","Marketing"),
  Salary = c(30000,35000,45000,32000,50000),
  Increment = c(12,8,15,5,18)
)

print(official)

# Save Official Details to Excel
write.xlsx(official,
           "D:/R Programs/Syllubus Program/official.xlsx",
           overwrite = TRUE)

print("Official Details Excel File Created")

personal <- read.xlsx("D:/R Programs/Syllubus Program/personal.xlsx")
official <- read.xlsx("D:/R Programs/Syllubus Program/official.xlsx")

# Merge Both Files with help of merge()
employee <- merge(personal,official,by="Emp_ID")

# Calculate Experience
employee$Experience <- 2026-employee$Joining_Year
employee$Promotion <- ifelse(
  employee$Experience >= 5,
  "Yes",
  "No"
)

print(employee)
write.xlsx(employee,
           "D:/R Programs/Syllubus Program/official.xlsx",
           overwrite = TRUE)

print("Promotion Prediction Excel File Created Successfully")