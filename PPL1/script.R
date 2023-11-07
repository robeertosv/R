setwd("D:/UAH/R/PL1")

#a)
grupo_a <- read.table("GrupoA.txt", header=TRUE)
grupo_b <- read.table("GrupoB.txt", header=TRUE)

grupo_a <- read.csv2("GrupoA.csv", header=TRUE, sep=";")
grupo_b <- read.csv2("GrupoB.csv", header=TRUE, sep=";")

#b)
pie(table(grupo_a$Gr_Sang), col=c("blue", "yellow", "pink", "green"))
pie(table(grupo_b$Gr_Sang), col=c("blue", "yellow", "pink", "green"))

#c)

estatura_a <- as.numeric(na.omit(grupo_a$Estatura))
estatura_b <- as.numeric(na.omit(grupo_b$Estatura))

hist(estatura_a)
hist(estatura_b)

#d)

max_alturas_a = quantile(estatura_a, probs=c(0, 0.4))
max_alturas_a = max(max_alturas_a)

min_alturas_b = quantile(estatura_b, probs=c(0.7, 1))
min_alturas_b = min(min_alturas_b)

#e)

if(sd(estatura_a) < sd(estatura_b)) {
	print("Las estaturas del grupo A son más homogéneas")
}else {
	print("Las estaturas del grupo B son más homogéneas")
}

#f)

if(mean(estatura_a) > mean(estatura_b)) {
	print("La media de las estaturas de A es mayor")
} else {
	print("La media de las estaturas en B en mayor")
}

if(median(estatura_a) < median(estatura_b)) {
	print("La mediana de las estaturas de A es menor")
} else {
	print("La mediana de las estaturas de B es menor")
}

#g)

edades_a <- grupo_a$Edad
edades_b <- grupo_b$Edad

clases_a <- c(20, 22, 24, 26, 28, 30)
hist(edades_a, breaks=clases_a)

clases_b <- c(22, 26, 30, 34, 38, 42)
hist(edades_b, breaks=clases_b)
