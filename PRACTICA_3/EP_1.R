setwd("D:/UAH/R/PRACTICA_3")

cinturaEdad = read.table("cinturaedad.txt", header = TRUE)

cintura = cinturaEdad$cintura
edad = cinturaEdad$edad

plot(cintura, edad, pch="+", cex=2)
coef = cor(edad, cintura)
