num1 <- 30
num2 <- 5

addition <- num1+num2
subtraction <- num1 - num2
multiplication <- num1*num2
division <- num1/num2

print(paste("Addition =",addition))
print(paste("Subtraction =",subtraction))
print(paste("Multiplication =",multiplication))
print(paste("Division =",division))

save(num1,num2,
     addition,subtraction,
     multiplication,division,
     file = "D:/R Programs/Syllubus Program/Practical3.RData")

print("Program Saved Successfully")