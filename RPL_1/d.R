setwd("D:/UAH/R/RPL_1")

grupoA = read.table("GrupoA.txt", header=TRUE)
grupoB = read.table("GrupoB.txt", header=TRUE)

estaturaA = grupoA$Estatura
estaturaB = grupoB$Estatura

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