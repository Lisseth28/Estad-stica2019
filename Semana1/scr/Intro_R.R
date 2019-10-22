##PRÁCTICA 1. INTRODUCCIÓN AL LENGUAJE DE PROGRAMACIÓN R##
#Primero debemos instalar el paquete#
install.packages("lattice")
#usamos "Library" para cargarlo#
library(lattice)
#Para conocer la descripción de los paquetes#
packageDescription(pkg = 'lattice',fields = 'Description')
packageDescription(pkg = 'base',fields = 'Description')
#creando un objeto#
x=2
#para ver el objeto#
x
y <- 3
y
4 -> z
z
#reasignando el valor de z#
z <- 5
z
#también se pueden reasignar con valores de operaciones#
z <- 10+2
z
z <- 3+rnorm(1)
z
#para saber qué hace rnorm#
?rnorm
#para crear un vector con una secuencia#
x <- 1:10
x
#operaciones con cada uno de los números de la secuencia#
x+1
((((x * 2)+1)/1.5)^2)
#vector de caracteres#
animales <- c("perro", "gato", "fara")
animales
frases <- "el gato se comió el fara"
frases
#vectores numéricos#
numeros <- rep(x = 1:3,3)/1.5
numeros
enteros <- seq(from = 1,to = 10,by = 2)
enteros
complejos <- c(2i,5i, 3i)
complejos
logicos <- c(T,F,TRUE,FALSE)
logicos
#para saber la clase de un objeto#
class(animales)
#vector con diversos tipos#
prueba <- c(1, "perro", FALSE, "gato", 1.5)
prueba
#sin embargo siempre será de una sola clase#
class(prueba)
#se pueden crear vectores con niveles#
grupo_altura <- factor(c("mediano", "pequeño", "grande", "muy grande"), levels=c("pequeño", "mediano", "grande", "muy grande"))
grupo_altura
#creando una matriz#
matrix1 <- matrix(data = 1:12,nrow = 3,ncol = 4)
matrix1
vector1 <- seq(1:12)
vector1[6]
vector1
matrix1 <- matrix(data = 1:12,nrow = 3,ncol = 4)
#para conocer el objeto de la fila 2 columna 3 de la anterior matriz#
matrix1[2,3]
#verificar viendo la matriz#
matrix1
#creando un arreglo#
arreglo <- array(data = 1:12,dim = c(3,4,3))
#para extraer un objeto del arreglo#
arreglo[2,4,3]
#ver el arreglo#
arreglo
vector1<-rep(1:4,3)
vector2<- seq(2,24,2)
arreglox <- array(data = c(vector1,vector2),dim = c(3,4,2))
arreglox[1,2,2]
#cargando un dataframe#
data(iris)
#para sacber la clase de iris#
class(iris)
#se pueden extraer columnas del dataframe#
iris$Sepal.Length
#y un dato de la misma columna#
iris$Sepal.Length[36]
##EJERCICIO##
c(iris$Sepal.Length, iris$Sepal.Width)
minuevatabla <- cbind(iris$Sepal.Length, iris$Sepal.Width)
c(iris$Sepal.Length, iris$Sepal.Width, iris$Petal.Length, iris$Petal.Width, iris$Species)
minuevatabla2 <- cbind(iris$Sepal.Length, iris$Sepal.Width, iris$Petal.Length, iris$Petal.Width, iris$Species)
iris[c(10:30),]
rbind(iris[10:30,])
#cargando archivo enviado por docente#
read.csv("Matrix_Multivariate_Mega.csv")
#asignando a un vector#
matrizmulti <- read.csv("Matrix_Multivariate_Mega.csv") 
matrizmulti
#extrayendo primeras 10 filas y 5 columnas#
matrizmulti[1:10, 1:5]
#creando la nueva matriz con lo que se extrajo#
minimatriz <- matrizmulti[1:10, 1:5]
write.csv(minimatriz, file ="matriz2.csv")
