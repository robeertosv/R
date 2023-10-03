setwd("D:/UAH/R/PRACTICA_2")

raza = factor(c("Blanca", "Negra", "Blanca", "Blanca", "Negra", "Negra","Negra", "Blanca","Blanca","Blanca"), levels = c("Blanca", "Negra"))
edad = c(24, 26, 62, 31, 30, 41, 51, 23, 28, 30)
peso = c(58, 62, NA, 67, 71, 69, NA, 73, 56, 82)
altura = c(156, 175, 169, 171, 159, 160, 158, 178, 168, 166)

datos = data.frame(raza, edad, peso, altura)

abso = table(datos$raza)
rela = prop.table(abso)

abso
rela

a = datos$altura

min(a)
max(a)
quantile(a, probs=c(0.25, 0.75))
mean(a)
median(a)

mean(datos$peso, na.rm=TRUE)
var(datos$peso, na.rm=TRUE)
IQR(datos$peso, na.rm=TRUE)

media_edad = mean(datos$edad)
media_edad

var_edad = 9/10 * var(datos$edad)
var_edad

dt_edad = sqrt(var_edad)
cv_edad = dt_edad / media_edad

media_altura = mean(datos$altura, na.rm=TRUE)
var_altura = 9/10 * var(datos$altura)
dt_altura = sqrt(var_altura)
cv_altura = dt_altura/media_altura
cv_altura