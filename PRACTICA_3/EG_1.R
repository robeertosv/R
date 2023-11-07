setwd("D:/UAH/R/PRACTICA_3")
practica2guiadoRS = read.table(file="pesoaltura.txt", header=TRUE)
peso = practica2guiadoRS$peso
altura = practica2guiadoRS$altura

lmAP = lm(altura ~ peso)
lm(formula = altura ~ peso)
a1 = lmAP$coefficients[1]
b1 = lmAP$coefficients[2]
abline(a = a1, b = b1, col = "red", lwd = 2)

lmPA = lm(peso ~ altura)
lm(formula = peso ~ altura)
a2 = lmPA$coefficients[1]
b2 = lmPA$coefficients[2]

plot(peso, altura, pch="+", cex=2)
abline(lmAP, col="blue", lwd=2)
abline(-a2/b2, 1/b2, col="red", lwd=2)

peso0 = 63
altura0 = lmAP$coefficients[1] + lmAP$coefficients[2] * peso0
predict(lmAP, newdata = data.frame(peso = 63))