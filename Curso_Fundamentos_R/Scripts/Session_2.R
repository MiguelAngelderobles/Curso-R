# Prueba de variables y prueba  -------------------------------------------


numeros <- 1:100
edades = 20:100
'control+enter para ejecutar y tab completo comandos, 
alt flecha para mover '
'hashtag para comentar #, control+shift+c para comentar lineas'
# hola 
# maquinola

edades
plot(edades)
sin(numeros)


# Tipos de datos ----------------------------------------------------------

'numerico'
num = 4
num

'logico'
val = FALSE
val

'cadena de caracteres'
cad = "fundamentos R"
cad

'verificar el tipo de dato'
class(num)
class(val)
class(cad)

# Operadores Aritmeticos --------------------------------------------------

8+9
10-2
10/2
4^2

# Modulo
11 %% 5

#Cociente Decimal
11 %/% 5 

#Prioridad
10 * 2 + 10 
(((10 - 5)/(2 + 3)) * 2) ^ 2


# Operadores de Comparacion -----------------------------------------------

2 > 5

2 < 5

2 <= 5

2 >= 5

2 == 2

2 != 5

# Operadores Logicos ------------------------------------------------------

a = 2 > 5

b = 2 < 5

c = 2 <= 5

d = 2 >= 5

e = 2 == 2

f = 2 != 5

b & c

a | b

!a

#verificar si el capital = 500 es mayor a 10000 o el interes = 200 es menor a 2000

capital = 500

interes = 200

capital > 10000 | interes < 2000

# verificar si edad = 30 esta entre los rangos de 10 y 50

edad = 30

10 <= edad & edad <= 50 

#verificar si cuota = 1000 es distinto de 100

cuota = 1000

cuota != 100

#verificar si peso = 600 es menor a 100 y igual 60

peso = 60

peso < 100 & peso == 60


# Array Unidimensionales - Vectores ---------------------------------------


c(1,2,3,4,5)

c(TRUE,FALSE,TRUE,FALSE)

c("Maria","Rosmery","Elias")

#Nota

c("La Paz", 2, 3) # lo convierte en String

c("La Paz",TRUE, 3) # lo convierte en String

c(FALSE,3,4) # Lo convierte en INT

num_pares = c(2,4,6,8)
num_impares = c(1,3,5,7)

num_impares

# Combinar Vectores

numerosCombinados = c(num_pares,num_impares)

numerosCombinados

# Ordenar vector

numerosCombOrdenados= sort(numerosCombinados)
numerosCombOrdenados

#vertificar el tipo de datos

class(numerosCombOrdenados)

# ":" permite crear un vector con una sentencia numerica

numeros_naturales = 1:100

numeros_naturales

letras = letters[1:10]
letras

vector_uno_a_veinte = 1:20

vector_uno_a_veinte

# Operadores sobre vectores

numero_nat_doble = numeros_naturales * 2

numero_nat_doble

numero_nat_div = numeros_naturales / 2

numero_nat_div

numero_nat_mas_cinco = numeros_naturales + 5

numero_nat_mas_cinco

#Filtrando los valores del vector

numeros_naturales > 8

numeros_naturales[numeros_naturales > 8]

numero_nat_div == 2

numero_nat_div[numero_nat_div == 2]

# Filtrando los valores del vector de cadenas

vocales = c("a","e","i","o","u")

vocales 

vocalesAux = vocales[vocales != "a"]

vocalesAux

# Practica Vectores

num3 = 1 : 20

num3

#1- Encontrar todos los valores mayores estrictos a 18 y almacenar en la variable num4

num4 = num3 > 18
num4

num4 = num3[num3 > 18]

num4

#2- Encontrar todos los multiplos de 5 y almacenar en num5
## resto div entre 5 %%

num5= num3[num3 %% 5 == 0]

# Acceso a los elementos del vector 

alfabeto = letters[1:6]

# NO COMIENZA DESDE 0  COMIENZA DESDE " 1 "
alfabeto[3]

alfabeto[c(3,6)]

alfabeto[2:5]

alfabeto[-2]



# TIpo de datos "Factores" ------------------------------------------------

animales = c("gato","perro","gato", "gato")

animales2 = factor(animales)

animales2

#plot(animales) == err

plot(animales2)

level_animales = c("perro","gato")

animales3 = factor(animales,level = level_animales)

animales3 

plot(animales3)


# Funciones definidas en R ------------------------------------------------

edades = c(15,17,16,16,15,17,18,14,16,15)

# max(x) 

max(edades)

# min(x)

min(edades)

# range(x) -> max y min juntos

range(edades)

# Cual es la media de los estudiantes de los encuestados (  mean(x) )

mean(edades)

# mediana( median(x) )

median(edades)

# Quantile (x,y) -> son la division de cuatro grupos "y" puede ser Q1 = 25% Q2 = 50% Q3 = 75% Total 100%

#Q1 = 25%
quantile(edades,0.25)
#Q2 = 50%
quantile(edades,0.50)
#Q3 = 75%
quantile(edades,0.75)

# var(x)-> valor que varia con respecto a la media elevado al cuadrado 

var(edades)

#sd(x) -> desviacion estandar , en cuanto difieren de la media

sd(edades)

# summary(x) -> devuelve todas las f(x)s anteriores en un sumario,except var y sd

summary(edades)

#PRACTICA
data_hijos = c(0,0,1,1,1,1,1,2,2,2,3,3,3,3,4,4,4,5,5,5,5)

data_hijos

#sacar promedios de hujos
mean(data_hijos)

#cual es la media de hijos
median(data_hijos) 
# o 
quantile(data_hijos,0.50)


# tareas--------

estudiantes = c(51, 60, 55, 30, 70, 80,100, 50, 60 , 60 ,90, 20, 60, 30, 90, 50, 60, 30, 25, 25, 25, 50, 60, 60, 60, 51, 51, 51,  51, 40)

estudiantes

# max estudiantes

max(estudiantes)
# min estudiantes
min(estudiantes)
# promedios estudiantes
mean(estudiantes)
# mediana de estudiantes
median(estudiantes)
# sd
sd(estudiantes)
#Quantile (estudiantes,0.75)
quantile(estudiantes,0.75)

#Array Bidimensionales ----------
# Funcion Matriz para hacer una matriz(data,fila,columna)
matriz = matrix(1:10)

matriz

matriz1 = matrix(1:20,nrow = 4)
matriz1

matriz2 = matrix(1:20,nrow = 5,ncol = 4)
matriz2

# debe ser mayor al reango el numero de filas y columnas(multiplo del rango total)
matriz3 = matrix(1:25,nrow = 5,ncol = 5)
matriz3

# dim(matriz)-> sabemos las dimensiones de una matriz
dim(matriz2)

#is.matrix(matriz) -> permite verificar si es una matriz
is.matrix(matriz)

# colnames() -> nos permite asignar nombres de las columnas

# rownames() -> nos permite asignar nombres de las filas


matriz4 = matriz2

matriz4


c("ginecologia","pediatria","medicina general","medicina interna")

c("hospital general","hospital de lo alto","cosmil","hospital de obrajes","hospital posadas")

colnames(matriz4)=c("ginecologia","pediatria","medicina general","medicina interna")

rownames(matriz4) =c("hospital general","hospital de lo alto","cosmil","hospital de obrajes","hospital posadas")

matriz4

#rbind -> agrega filas
#1ra forma

Hospital_Andes = c(1,2,3,4)

Hospital_Andes

matriz5 = rbind(matriz4,Hospital_Andes)

matriz5

#2da forma 

matriz6 = rbind(matriz4,"Hospital Complejo" = c(3,5,7,9))

matriz6

#cbind -> Permite añadir Columnas

odontologia=c(2,3,5,6,7)

odontologia

matriz7 = cbind(matriz4,odontologia)

matriz7

#matriz7 = cbind(matriz4,odontologia = C(2,3,4,5,6))


# Operacion con matrices --------------------------------------------------
matriz2  

matriz - 2
matriz + 2
matriz * 2 
matriz %% 2


# Filtrar matrices --------------------------------------------------------

matriz2

matriz2>2

filtro = matriz2>2

matriz2[filtro]

#filtro2 = matriz2 != 7

matriz2[matriz2 !=7 ]

#Practica
#Crear una matriz 4 x 4 con numeros consecutivos del 1 al 16

matrizPrac= matrix(1:16,nrow = 4,ncol = 4)
matrizPrac

#Renombrar las columnas con c("edad","talla","peso","estatura")

colnames(matrizPrac) =c("edad","talla","peso","estatura")
matrizPrac

#Renombrar las filas con c("jose","pedro","manuel","pepa")
rownames(matrizPrac) =c("jose","pedro","manuel","pepa")
matrizPrac

# Acceso a los numeros de una matriz --------------------------------------


numeros_naturales = matrix(1:16,nrow = 4)
numeros_naturales

numeros_naturales[2,2]

numeros_naturales[1,]

numeros_naturales[,2:4]

numeros_naturales[,c(2,4)]

numeros_naturales[c(2,4),]

numeros_naturales[c(2,4),c(2,4)]


#rowSum() -> calcula la suma total por fila
#colSum() -> calcula la suma total por columna
#rowMeans() -> calcula la media total por fila
#colMeans() -> calcula la mediatotal por columna


#str-> muestra el tipo y los elementos
str(numeros_naturales)

#head(x,2)-> muestras primeros registros indicar la cantidad

#tail(x,2) -> muestra ultimos registros indicar la cantidad

# summaru() -> muestra todos los detalles(count,min,max,sd,quantiles

summary(matriz5)

str(matriz5)

head(matriz5,4)

tail(matriz5,4)

#seleccionar u obtener datos necesarios
#seleccionar la fila

#mismo que la ejercitacion

#matriz[2,"costo"] <- con  el nombre de la fila y mostramos los valores



# DataFrame ---------------------------------------------------------------



curso = c("Data Sciense", "Machine learning", "Data mining", "Big Data")
costo = c(3000, 3500, 4000, 3500)
duracion = c("Un semestre", "Dos semestres", "Un semestre", "Dos semestres")
num_estudiantes = c(80, 60, 70, 80)

data_inscripcion = data.frame(curso, costo, duracion, num_estudiantes)
data_inscripcion


data_inscripcion[1,]

data_inscripcion[,2]

data_inscripcion[2,2]

data_inscripcion[2,"costo"]

data_inscripcion[c(2,3),c("costo","num_estudiantes")]


# filtrar datos -----------------------------------------------------------

#subset -> obtiene elementos especificos basado en alguna condicion especificas

subset(data_inscripcion, subset = costo <= 3500)

subset(data_inscripcion, subset = curso == "Data Sciense")


# Practica 
#Obtener las observaciones de costo y numero de estudiantes de data_inscripcion
# y almacenar en data_prueba

data_prueba = data_inscripcion[,c("costo","num_estudiantes")]

data_prueba = data_inscripcion[,c(2,4)]

data_prueba

#filtrar todos los cursos mayores a 3500(costo) 
#almacenar en data_prueba2

data_prueba2 = subset(data_inscripcion,subset = costo > 3500)

data_prueba2

data_prueba3 = subset(data_inscripcion,subset = duracion == "Un semestre")

data_prueba3

data_prueba4 = subset(data_inscripcion,subset = curso == "%Data%")

data_prueba4

#Ordenar datos de manera de forma ascendente 

data_inscripcion[order(data_inscripcion["costo"]),]

data_inscripcion[order(costo)]

#Ordenar datos de manera de forma descendente

data_inscripcion[order(-data_inscripcion["costo"]),]

# $ (signo del dolar)
# nos permite crear un subconjunto de datos a partir de los campos
# de los elementos de la data
data_costo_ins = data_inscripcion$costo

data_costo_ins

data_prueba5 = data_inscripcion$duracion

data_prueba5

#colnames() --> permite modificar el nombre de la columnas

data_inscripcion_c = data_inscripcion

data_inscripcion_c

colnames(data_inscripcion_c)[2] = c("costo_curso")

data_inscripcion_c

aula= c("","B","C","D")

docente = c("Maria","Roxana","Luis","Jose")

data_inscripcion_ml= data_inscripcion

data_inscripcion_ml =cbind(data_inscripcion_ml,aula,docente)

data_inscripcion_ml

#rbind --> Permite añadir data por fila 

data_inscripcion

#data_insc_2 = data_inscripcion

data_insc_2 = c("Lenguaje R",1000,"Un semestre",60,"E","Meli")

data_inscripcion_ml2= rbind(data_inscripcion_ml,data_insc_2)

data_inscripcion_ml2


data_insc_3= c("Lenguaje Java",1000,"Un semestre",60,"F","Melina")

data_inscripcion_ml3= rbind(data_inscripcion_ml,data_insc_3)

data_inscripcion_ml3

# modificar valores del data set

data_inscripcion_m3 = data_inscripcion

data_inscripcion_m3$duracion[1]= "Dos semestres"

data_inscripcion_m3

data_inscripcion_m3$duracion[c(1:4)]= "Tres semestres"

data_inscripcion_m3

data_inscripcion_m3$duracion[c(2:4)]= "Dos semestres"

data_inscripcion_m3

data_inscripcion_m3$duracion[c(2,4)]= "Un semestres"

data_inscripcion_m3

#conversion--------
str(data_inscripcion)

#as.interger() -> int
#as.numeric() -> numero
# as.character() char
# as.factor() tipo factor
#as.logical() logico

curso = c("Data Sciense", "Machine learning", "Data mining", "Big Data")
monto = c(3000, 3500, 4000, 3500)
duracion = c("Un semestre", "Dos semestres", "Un semestre", "Dos semestres")
num_estudiantes = c(80, 60, 70, 80)

data_inscripcion_m4 = data.frame(curso, costo, duracion, num_estudiantes)

str(data_inscripcion_m4)

data_inscripcion_m4$num_estudiantes =as.character(data_inscripcion_m4$num_estudiantes)



data_inscripcion_m4$duracion =as.factor(data_inscripcion_m4$duracion)

str(data_inscripcion_m4)



curso = c("Data Sciense", "Machine learning", "Data mining", "Big Data")
monto = c(3000, 3500, 4000, 3500)
duracion = c("Un semestre", "Dos semestres", "Un semestre", "Dos semestres")
num_estudiantes = c(80, 60, 70, 80)

data_inscripcion_m5 = data.frame(curso, monto, duracion, num_estudiantes)

data_inscripcion_m5$total_recaudo = data_inscripcion_m5$monto * data_inscripcion_m5$num_estudiantes

data_inscripcion_m5
