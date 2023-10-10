setwd("D:/UAH/R/EG_1_2")
edades = read.csv2("edades.csv", header=FALSE)[,1]
edades = cut(edades, breaks=c(0,5,11,18,30), labels=c("Primera infancia", "Infancia", "Adolescencia", "Juventud"))
barplot(table(edades), cex.names=0.8, main="Personas por etapas", col=terrain.colors(4,alpha=0.8), font=2)