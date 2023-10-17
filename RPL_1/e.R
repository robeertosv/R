setwd("D:/UAH/R/RPL_1")

grupoA = read.table("GrupoA.txt", header=TRUE)
grupoB = read.table("GrupoB.txt", header=TRUE)

estaturaA = grupoA$Estatura
estaturaB = grupoB$Estatura

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