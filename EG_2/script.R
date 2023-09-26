# Almacenar el contenido de la tabla en tres variables distintas (Sexo, Puntuación y Opinión), seleccionando el tipo de variable adecuado en cada caso.
sexo = factor(c("H", "M", "M", "M", "M", "H"), levels=c("H", "M"))
puntuacion = c(7.5, 8, 2, 6.5, 10, 9)
opinion = ordered(c("B", "R", "M", "M", "R", "B"), levels=c("M", "R", "B"))

# Crear un data frame de nombre Estudiantes que contenga la información de las tres variables creadas
data = data.frame(sexo, puntuacion, opinion)

#  La puntuación media de los hombres y de las mujeres
puntuaciones_hombre = c(data$puntuacion[1], data$puntuacion[6] )
media_puntuaciones_hombre = mean(puntuaciones_hombre)
media_puntuaciones_hombre

puntuaciones_mujer = c(data$puntuacion[2], data$puntuacion[3], data$puntuacion[4], data$puntuacion[5])
media_puntuaciones_mujer = mean(puntuaciones_mujer)
media_puntuaciones_mujer

# Los datos de las tres variables para el quinto individuo
data[5,]

#  El logaritmo neperiano de la puntuación del tercer individuo
log(data$puntuacion[3])

# Comprobar si la puntuación del segundo individuo o del cuarto individuo es superior a 7

data$puntuacion[2] > 7 | data$puntuacion[4] > 7