# Estructura condicional if, else -----------------------------------------------
# La instruccion if nos permite evaluar si una condicion es verdadera o falsa
# 
# if(condicion) {
#   instrucciones por verdad;
# }

# if(condicion) {  
#   instrucciones por verdad;
# }else{
#   instrucciones por falso;
# }

if(6 == 6){
  print("Los valores son iguales")
}

if("Lenguaje R" != "Lenguaje Python"){
  print("Las cadena son distintos")
}else{
  print("Las cadenas son iguales")
}

# si edad es mayor a 18 es mayor de edad en caso contrario es menor

edad = 18
if (edad >= 18){
  print("es mayor de edad")
}else{
  print("es menor de edad")
}

#PRACTICA
#1.- Si el valor de a es  igual a 1 calcular la media de las notas c(50,55,45,78,55)
#    en caso contrario calcular la suma total de las notas

a = 1

if(a == 1){
  print("El promedio de las notas es:")
  mean(c(50,55,45,78,55))
}else{
  print("La suma total de la notas es:")
  sum(c(50,55,45,78,55))
}


#2.- Dado dos numeros encontrar y mostrar el numero mayor

b = 4
c = 20

if( b > c){
  print("El numero mayor es:")
  b
}else{
  print("El numero mayor es:")
  c
}

#PRACTICA
#1.- Dado un numero mostrar si es multiplo de 5 en caso contrario mostrar no es multiplo de 5

numeroPractica = 80

if(numeroPractica %% 5 == 0 ){
  print("soy multiplo")
}else{
  print("no soy multilpo")
}

# Estructura repititiva While --------------------------------------------------------
# La instruccion while permite ejecutar un bloque de codigo mientras se cumpla una determinada condicion 

# while (condicion){
#   intrucciones
# }

#Ejemplificando

k = 1
while(k <= 5){
  print(k)
  k = k + 1
}

# Sumar el interes del 10% a cada prestamo data_prestamo = c(10000, 5000, 8000, 6000, 1000)

data_prestamo = c(10000, 5000, 8000, 6000, 1000)
data_cobrar = c()

m = 1

while (m <= length(data_prestamo )) {
  data_cobrar[m] = data_prestamo[m] + ( 0.10 * data_prestamo[m])
  m = m + 1
}
data_cobrar

#PRACTICA
#Mostrar todos los numeros pares positivos en el intervalo del 1 al 20

numeroRaro = 1

while(numeroRaro <= 20){
  if(numeroRaro %% 2 == 0){
    print(numeroRaro)
  }
  numeroRaro = numeroRaro + 1
}

  # Estructura repetitiva for -----------------------------------------------
# La esctrutura for permite iterar un bloque de codigo en forma sucesiva.

# for(variable in variable_iterable) {
#   inttrucciones
# }

#Ejemplificando

for(cont in 1:5){
  print(cont)
}


f = c(5, 10, 15, 20, 25, 30)
for (valor in f){
  print(valor)
}


#1.- Dado un vector de salarios descontar el 5% del salario,  sumarle un 
# un bono de 80 y luego mostrar los resultado

data_salario = c(2000, 4000, 6000, 1000, 2000, 8000)
data_salarioBono = c()

for (i in 1:length(data_salario)){
  data_salarioBono[i] = (data_salario[i] - (data_salario[i] * 0.05)) + 80
}

data_salarioBono

#PRACTICA
#Mostrar todos los multiplos de 5 en el intervalo del 1 al 20


for (i in  1:20){
  if(i %% 5 == 0 ){
    print(i)
  }
  i = i + 1
}

# Funciones ---------------------------------------------------------------
# Las funciones nos permiten modularizar y automatizar procesos que son comunes.

# nombre_funcion = function(argumentos){
#   cuerpo de la funcion
# }



#1.- Dado un vector de salarios descontar el 5% del salario,  sumarle un 
# un bono de 80 y luego mostrar los resultado

# Sin automatizar los procesos comunes 

# -- Para c(2000, 4567, 60000, 0, 0, 8000)
data_salario = c(2000, 4567, 6000, 5000, 9000, 8000)
data_salarioBono = c()

for (i in 1:length(data_salario)){
  data_salarioBono[i] = (data_salario[i] - (data_salario[i] * 0.05)) + 80
}

data_salarioBono

# -- Para 
data_salario1 = c(1000, 4000, 5000, 1800, 2000, 3000)
data_salarioBono1 = c()

for (i in 1:length(data_salario1)){
  data_salarioBono1[i] = (data_salario1[i] - (data_salario1[i] * 0.05)) + 80
}

data_salarioBono1

# Aplicando funciones para automatizar los procesos comunes 

salario_neto = function(salario){
  salario_bono = c()
  for (i in 1:length(salario)){
    salario_bono[i] = (salario[i] - (salario[i] * 0.05)) + 80
  }
  return(salario_bono)
}

# Llamando a la funcion

data_salario2 = c(2000, 4567, 6000, 2000, 6000, 8000)

salario_neto(data_salario2)

# Llamando a la funcion 

data_salario3 = c(3000, 5000, 5000, 4000, 9000)

salario_neto(data_salario3)


# PRACTICA 
# Calcular el indice de masa corporal
# IMC = peso [kg]/ estatura [m2]
masaCorpporal = function(peso1,estatura1){
  total = peso1/((estatura1/100) ^ 2)
  return( total)
}
# Sin automatizar los procesos comunes 

#--Para
peso = 80
estatura = 152

imc = peso/((estatura/100) ^ 2)
imc

masaCorpporal(peso,estatura)

#--Para
peso1 = 52
estatura1 = 152

imc1 = peso1/((estatura1/100) ^ 2)
imc1

# Aplicando funciones para automatizar los procesos comunes 




# Paquetes ----------------------------------------------------------------

# Instalación de paquetes
# ----------------------------
# Para instalar paquetes podemos hacerlo desde codigo o interfaz del mismo RStudio
# install.packages("nombre_paquete") 

# Desde Consola
# Para importar datos desde excel
install.packages("openxlsx")

# Instalando paquete desde una interfaz
# Para manipular datos y ggplot2
install.packages("tidyverse")


# Cargado de paquetes  ----------------------------------------------------
# library(nombre_paquete)

# Desde codigo
library(openxlsx)

# Cargando el siguiente paquete desde una interfaz
 library(tidyverse)



