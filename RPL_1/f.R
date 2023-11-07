setwd("D:/UAH/R/RPL_1")

grupoA = read.table("GrupoA.txt", header=TRUE)
grupoB = read.table("GrupoB.txt", header=TRUE)

edadesA = grupoA$Edad
edadesB = grupoB$Edad

hist(edadesA, breaks=c(10, 15, 20, 25, 30, 35), main="Edades agrupadas", xlab="Edades agrupadas")
hist(edadesB, breaks=c(10, 15, 20, 25, 30, 35), main="Edades agrupadas", xlab="Edades agrupadas")


