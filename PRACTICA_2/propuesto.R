diametroA = c(8.3, 8.6, 8.8, 10.5, 10.5, 10.8, 11, 11, 11.1, 11.2, 11.3, 11.4, 11.4, 11.7, 12, 12.9, 12.9)
alturaA = c(70, 65, 63, 72, 81, 83, 66, 75, 80, 75, 79, 76, 76, 69, 75, 74, 85)
volumenA = c(10.3, 10.3, 10.2, 16.4, 18.8, 19.7, 15.6, NA, 22.6, 19.9, 24.2, 21, 21.4, 21.3, 19.1, 22.2, 33.8)
variedadA = factor(c("Blanco", "Amarillo", "Rosa", "Rosa", "Rosa", "Rosa", "Blanco", "Amarillo", "Rosa", "Blanco", "Amarillo", "Blanco", "Rosa","Rosa","Amarillo", "Amarillo", "Blanco"), levels=c("Amarillo", "Blanco", "Rosa"))

datosA = data.frame(diametroA, alturaA, volumenA, variedadA)

diametroB = c(13.3, 13.7, 13.8, 14, 14.2, 14.5, 16, 16.3, 17.3, 17.5, 17.9, 18, 18, 20.6)
alturaB = c(86, 71, 64, 78, 80, 74, 72, 77, 81, 82, 80, 80,80, 87)
volumenB = c(27.4, 25.7, 24.9, NA, 31.7, 36.3, 38.3, 42.6, 55.4, 55.7, 58.3, NA, 51, 77)
variedadB = factor(c("Amarillo", "Rosa", "Rosa", "Amarillo", "Amarillo", "Rosa", "Rosa", "Rosa", "Blanco", "Blanco", "Amarillo", "Rosa", "Blanco", "Rosa"), levels=c("Blanco", "Amarillo", "Rosa"))

datosB = data.frame(diametroB, alturaB, volumenB, variedadB)

RegA = datosA
RegB = datosB

var_a = 9/10 * var(RegA$diametroA)
dt_a = sqrt(var_a)

dt_a

var_b = 9/10 * var(RegB$diametroB)
dt_b = sqrt(var_b)

dt_b

min(RegA$diametrosA)