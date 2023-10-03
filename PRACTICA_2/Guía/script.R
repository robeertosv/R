setwd("D:/UAH/R/PRACTICA_2")
datos = read.table("pesos.txt")

print("fi & fri de los colores: ")
colores = table(datos$color)
colores
prop.table(colores)

print("fi & fri de los pesos: ")
pesos = table(datos$peso)
pesos
prop.table(pesos)

print("Media de los pesos: ")
mean(datos$peso, na.rm=TRUE)

print("1º Cuartil de las alturas")
quantile(datos$altura, probs = seq(0,1, 0.25), na.rm=FALSE)

varianza = var(datos$peso, na.rm=FALSE)
varianza = varianza * ((length(datos$peso) -1) / length(datos$peso))

desviacionTipica = sd(datos$altura, na.rm=FALSE)
desviacionTipica = desviacionTipica * ((length(datos$altura) -1) / length(datos$altura))

rangoIC = IQR(datos$altura, na.rm=FALSE)

varianza
desviacionTipica 
rangoIC

median(datos$peso, na.rm=FALSE)
min(datos$peso, na.rm=FALSE)
max(datos$peso, na.rm=FALSE)