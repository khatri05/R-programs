employee <- data.frame(
  EmpID = c(101,102,103,104),
  Name = c("Krishna","Rudra","Bhavya","Jash"),
  Department = c("IT","Sales","HR","IT"),
  salary = c(50000,25000,30000,45500)
)

print(employee)



high_salary <- subset(employee,salary > 30000)
print(high_salary)

#Example 2: Select Only specific Column

result <- subset(employee,select = c(Name,salary))
print(result)

#Example 3: Use both condition and selected columns

result_data <- subset(employee, salary >= 30000,select=c(Name,salary))
print(result_data)