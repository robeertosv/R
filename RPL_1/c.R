setwd("D:/UAH/R/RPL_1")

grupoA = read.table("GrupoA.txt", header=TRUE)
grupoB = read.table("GrupoB.txt", header=TRUE)

estaturaA = grupoA$Estatura
estaturaB = grupoB$Estatura

hist(x=estaturaA, xlab="Estaturas de A", ylab="Frecuencia")
hist(x=estaturaB, xlab="Estuturas de B", ylab="Frecuencias")