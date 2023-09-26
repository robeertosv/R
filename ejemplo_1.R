sexo = factor(c("H", "M", "M", "H", "H", "M"), levels=c("M", "H"))
altura = c(181, 175, 165, 172, 185, 159)
peso = c(80, 70, 60, 90, 100, 65)

tabla = data.frame(sexo, altura, peso)

print(tabla)

media_peso = mean(tabla$peso)
media_altura = mean(tabla$altura)

print("Media de los pesos: ")
print(media_peso)

print("Media de las alturas: ")
print(media_altura)

#Exportar los datos a un csv

write.csv2(tabla, file="D:/UAH/R/tabla_pesos.csv")