setwd("D:/UAH/R/PRACTICA_3")
renta = read.table("rentaevauCCAA.txt", header = TRUE)
rpc = renta$rpc
evau = renta$evau
ca = renta$CA

# y = renta
# x = aprobados

mediaY = mean(rpc)
mediaX = mean(aprobados)