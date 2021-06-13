# Tarea Matriz-------

# Creamos la matriz 
numeros_naturales = matrix(1:30,nrow = 6, ncol = 5)
numeros_naturales

# Mostramos la dimension
dim(numeros_naturales)

# Filtramos todos los multilpos de 5
numeros_naturales[numeros_naturales %% 5 == 0]


# Mostramos la fila de la columna 2 
numeros_naturales[,2]

# Mostramos la fila de la columna 4
numeros_naturales[,4]

# Tarea DataFrame

# Creo dataframe y almaceno en data_libros
libros = c("Historia","Lenguaje", "Ciencias naturales", "Dibujo","Arquitectura")
costo = c(80, 100, 50, 70, 80)
num_libros = c(3, 5, 10,8, 2)
data_libros = data.frame(libros,costo,num_libros)
data_libros 

# Muestro la informacion detallada de cada tipo de dato
str(data_libros)

# Muestro las dos primeras filas 
head(data_libros,2)  

# Muestro las dos ultimas filas
tail(data_libros, 2)

# Muestro todos los detalles del sumario
summary.data.frame(data_libros)

# Muestro los costos y libros 
data_libros[ ,1:2]

# Muestro todos los libros con costro = 80 (para esto utilizo la funcion subset)
data_libros_costo=subset(data_libros,subset = costo == 80)
data_libros_costo

#Tarea 5 estructuras y funciones ------

# 1- Dados dos numeros encontrar y mostrar el numero menor

numero1 = 1 
numero2 = 2 

if (numero1 < numero2){
  print("numero1 es menor")
  print(numero1)
}else{
  print("numero2 es menor")
  print(numero2)
}

# Mostrar todos los numeros impares positivos en intervalo 1 al 20

for(i in 1:20){
  if (i %% 2 == 1){
    print(i)
  }
  i = i + 1
}

# Dado un vector con valores de precios de libros descontar el 10% del precio a cada libro.

lista_libros = c(1000, 2000, 3000, 4000, 5000, 6000)
mostrar_lista_libros= c()

for (i in 1:length(lista_libros)){
  mostrar_lista_libros[i] = (lista_libros[i] - (lista_libros[i] * 0.1))
}

mostrar_lista_libros

# Crear una función para sumar dos números.

sumaDosNumero = function(numeroParamentro1,numeroParamentro2){
  total = numeroParamentro1 + numeroParamentro2
  return (total)
}

sumaDosNumero(1,3)

install.packages(Orange)

