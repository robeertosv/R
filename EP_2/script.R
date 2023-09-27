# Crear 4 vectores numéricos para almacenar la altura de los pinos de cada parcela
parcela1 <- c(7.5, 12, 14.5)
parcela2 <- c(12.5, 10.5, 13, 9, 18.5)
parcela3 <- c(11, 8, 7.5, 9.5, 19, 14)
parcela4 <- c(12.5, 16, 9.5, 10)

# Agrupar los 4 vectores en una lista
datos <- list(parcela1, parcela2, parcela3, parcela4)

# Comprobar si la altura del primer pino supera a la del último pino para cada parcela
for (i in 1:length(datos)) {
  if (datos[[i]][1] > datos[[i]][length(datos[[i]])]) {
    cat("Es más alto el dato de la parcela", i, "\n")
  } else {
    cat("OK\n")
  }
}

# Calcular el logaritmo decimal de la altura del tercer pino de la parcela 3
logaritmo <- log10(parcela3[3])

# Calcular la suma de las alturas de los 3 primeros pinos de la parcela 4
suma_alturas <- sum(parcela4[1:3])

# Obtener la altura media de los pinos de la parcela 1.

media_1 = mean(parcela1)