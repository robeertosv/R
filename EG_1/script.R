setwd("D:/UAH/R/EG_1/") # Poner directorio de trabajo en la carpeta actual

data = read.table("dataset.txt", header = TRUE) # Guardar una tabla con los datos de dataset.txt en la variable data

data # Mostrar la tabla

a = data[c(3,7),]
a # Mostrar las 4 variables alojadas en el tercer y séptimo individuo

altura9 =  data$Altura[9] 
altura9 #Mostrar la altura del noveno individuo

edad1 = data$Edad[1]
edad10 = data$Edad[10]

edad1 > edad10 #Mostrar si la edad del individuo 1 es mayor que la del décimo

peso12 = data$Peso[1] + data$Peso[2]
peso910 = data$Peso[9] + data$Peso[10]

peso12 < peso910 # Mostrar si el peso de los 2 primeros es menos que el de los dos últimos

altura5 = data$Altura[5]
sqrt(altura5) # Mostrar la raíz cuadrada de la altura del quinto individuo