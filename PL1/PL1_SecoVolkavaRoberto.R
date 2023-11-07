setwd("D:/UAH/R/PL1")

datos <- read.table("PL1B.txt", header = TRUE)
paises <- datos$Pais
pesos <- datos$Peso

# 2. Media, mediana y rango

media <- mean(pesos)
mediana <- median(pesos)
rango <- max(pesos) - min(pesos)

cat("La media es: ", media)
cat("La mediana es: ", mediana)
cat("El rango es: ", rango)

# 3. Representar la variable País mediante un diagrama de sectores, incluyendo título y colorear los sectores

pie(table(paises), main = "Diagrama de sectores de los países", col = c("blue", "red", "green"))

# 4. Valor máximo del 25% de los pesos menores | Valor minimo del 15% de los pesos mayores

maximo_pesos_25 <- quantile(pesos, probs = c(0, 0.25))
maximo_pesos_25 <- max(maximo_pesos_25)

minimo_pesos_15 <- quantile(pesos, probs = c(0.85, 1))
minimo_pesos_15 <- min(minimo_pesos_15)

cat("El máximo de los pesos del 25% menor es: ", maximo_pesos_25)
cat("El mínimo de los pesos del 15% mayor es: ", minimo_pesos_15)

# 5. Existe algún dato atípico en la variable pesos
hist(pesos)

# 6. Desviación tipica y varianza

# Al aplicar var() y sd() se calculan la cuasi-varianza y la cuasi-desviación tipica, por lo que hay que hacer un arreglo

n <- length(pesos)
cuasi_var <- var(pesos)
cuasi_dt <- sd(pesos)

varianza <- cuasi_var * ((n - 1) / (n))
dt <- cuasi_dt * ((n - 1) / (n))

cat("La varianza es", varianza)
cat("La desviación típica es", dt)

# 8. Agrupar en 4 clases de equivalencia, y calcular las marcas de clase

k <- 4
A <- diff(range(pesos)) / k
L1 <- min(pesos)
L <- L1 + A * (0:k)
marcas <- (L[1:k] + L[1:k + 1]) / 2
pesos_agrupados <- cut(pesos, breaks = L, right = FALSE)

cat("Las clases son: ", levels(pesos_agrupados))
cat("Las marcas son:", marcas)

# 9. Tabla de frecuencias absolutas, frecuencias relativas y frecuencias acumuladas

fabs <- table(pesos_agrupados)
fabs[4] <- fabs[4] + 1 # Debido a la naturaleza de R no coge el 100 que es el último valor
frel <- prop.table(fabs)
fac <- cumsum(fabs)

tabla <- data.frame("F. abs" = fabs, "F. Rel" = frel, "F. ac" = fac)
print(tabla)

# 10. Hisograma de frecuencias
hist(pesos, breaks = L)
