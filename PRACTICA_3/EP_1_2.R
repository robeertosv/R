setwd("D:/UAH/R/PRACTICA_3")

# a)
notasHoras = read.table("notashoras.txt", header=TRUE)
horas = notasHoras$Horas
estadistica = notasHoras$Est
quimica = notasHoras$Qui
geografia = notasHoras$Geo

notas = data.frame(estadistica, quimica, geografia, horas)

# b)
plot(horas, quimica, pch="+", cex=2)
lmHE = lm(estadistica ~ horas)
lmHQ = lm(quimica ~ horas)
abline(lmHE, col="red", lwd=2)
abline(lmHQ, col="blue", lwd=2)

# c)
plot(quimica, estadistica, pch="+", cex=2)
lmEQ = lm(estadistica ~ quimica)
abline(lmEQ, col="blue", lwd=2)

# e)
coef = cor(estadistica, quimica)

# f) 

plot(horas, estadistica, pch="+", cex=2)
lmHG = lm(geografia ~ horas)
abline(lmHG, col="blue", lwd=2)
abline(lmHE, col="red", lwd=2)
abline(lmHQ, col="green", lwd=2)