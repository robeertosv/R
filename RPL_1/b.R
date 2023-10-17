setwd("D:/UAH/R/RPL_1")

grupoA = read.table("GrupoA.txt", header=TRUE)
grupoB = read.table("GrupoB.txt", header=TRUE)

sangreA = grupoA$Gr_Sang
sangreB = grupoB$Gr_Sang

pie(table(sangreA), col=c("blue", "yellow", "pink", "green"))
pie(table(sangreB), col=c("blue", "yellow", "pink", "green"))

estaturaA = grupoA$Estatura
estaturaB = grupoB$Estatura

hist(x=estaturaA, xlab="Estaturas de A", ylab="Frecuencia")
hist(x=estaturaB, xlab="Estuturas de B", ylab="Frecuencias")

estaturaA = na.omit(estaturaA)
nA = length(estaturaA)
numA = ceiling(0.4 * nA)
alturas_ordenadasA = sort(estaturaA)
alturas_pequenasA = alturas_ordenadasA[1:numA]
alturaMaxA = max(alturas_pequenasA)

estaturaB = na.omit(estaturaB)
nB = length(estaturaB)
numB = ceiling(0.3 * nB)
alturas_ordenadasB = sort(estaturaB, decreasing=TRUE)
alturas_grandesB = alturas_ordenadasB[1:numB]
alturaMinB = min(alturas_grandesB)

dtA = sd(estaturaA)
dtB = sd(estaturaB)

if(dtA > dtB) {
    cat("Las estaturas del grupo A son menos homogéneas\n")
}else {
    cat("Las estaturas del grupo B son menos homogéneas\n")
}

mediaA = mean(estaturaA)
mediaB = mean(estaturaB)

if(mediaA > mediaB) {
    cat("Las estaturas del grupo A son más grandes\n")
}else {
    cat("Las estaturas del grupo B son más grandes\n")
}

medianaA = median(estaturaA)
medianaB = median(estaturaB)

if(mediaA > mediaB) {
    cat("Las estaturas del grupo A presentan una mediana mayor\n")
}else {
    cat("Las estaturas del grupo B presentan una mediana mayor\n")
}

edadesA = grupoA$Edad
edadesB = grupoB$Edad

hist(edadesA, breaks=c(10, 15, 20, 25, 30, 35), main="Edades agrupadas", xlab="Edades agrupadas")
hist(edadesB, breaks=c(10, 15, 20, 25, 30, 35), main="Edades agrupadas", xlab="Edades agrupadas")
