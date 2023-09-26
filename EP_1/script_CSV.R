setwd("D:/UAH/R/EP_1")

sexo = factor(c("H", "M", "H", "H", "M"), levels=c("H", "M"))
tension = c(119, 99, 102, 78, 78)
pulso = c(59, 89, 107, 76, 91)

# Elaborar un fichero de texto (con extensión .txt) que contenga la información de la tabla anterior.
# Utilizar el tabulador para separar la información referente a cada variable. Guárdalo en el escritorio y
# llamarlo salud.txt

data = data.frame(sexo, tension, pulso)
write.csv2(data, file="salud.csv", row.names = FALSE)

# Desde R leer el fichero que se acaba de crear y almacenar su contenido en una variable de
# nombre datos

datos = read.csv2("salud.csv")
datos = data.frame(datos)

# Obtener los valores para las tres variables para el primer y el cuarto individuo

variablesPrimero = datos[1,]
variablesSegundo = datos[4,]

variablesPrimero
variablesSegundo

# Comprobar si la primera mujer (posición 2) tiene una tensión arterial mayor que la segunda mujer (posición 5)
datos[2,2] > datos[5,2]

# e) Calcular la media del pulso de los hombres

pulsoHombres = c(datos[1,3], datos[3,3], datos[4,3])

mean(pulsoHombres)

# Obtener la raíz cuadrada de la tensión arterial del cuarto individuo

sqrt(datos[4, 2])