setwd("D:/UAH/R/EG_1_2")
#var3 = read.csv("var3.csv")
var3 = read.table("var3.csv", header=FALSE)[,1]
k = 5
A = diff(range(var3))/k
L1 = min(var3)
L = L1 + A*(0:k)
marcas = (L[1:k]+L[1:k+1])/2
var3_agrupada = cut(var3, breaks=L, right=FALSE)
fabs = table(var3_agrupada)
hist(var3, breaks=L)