"
title: Fundamentos R desde 0
author: Veronica J. Gomez Catunta
Sesión: Número 7

"
# Importar Datos ----------------------------------------------------------

# Cargar  paquete readr
# Nota.- No necesitamos instalar porque la instalacion se realizo en la sesión 6

library(readr)
#trim_ws = Deben recortarse los espacios en blanco iniciales y finales de cada campo antes de analizarlo

data_casos_confirmado_bolivia_depart =  read_delim("/home/migueldr/Escritorio/CursosR/Curso_Fundamentos_R/Datos/nmero-de-casos-confirmado-bolivia-depart.csv",";",trim_ws = TRUE)

data_casos_confirmado_bolivia_depart

#Mostrar los detalles de los campos de la data

str(data_casos_confirmado_bolivia_depart)

#Convertir la columna Fecha a Date
# as.Date() = Convierte a tipo Date

data_casos_confirmado_bolivia_depart$Fecha = as.Date(data_casos_confirmado_bolivia_depart$Fecha, format="%d/%m/%Y" )

#Mostrar las primeras filas de la data

head(data_casos_confirmado_bolivia_depart)

#Mostrar las ultimas filas de la data

tail(data_casos_confirmado_bolivia_depart)

#Mostrar dimension de la data

dim(data_casos_confirmado_bolivia_depart)

#NOTA.- Tambien podemos importar datos desde la interfaz de RStudio
# 1.- Menu environment, import Data set


# importar desde excel ----------------------------------------------------

library(readxl)
data_casos_la_paz_dia = read_excel("/home/migueldr/Escritorio/CursosR/Curso_Fundamentos_R/Datos/nmero-de-casos-la-paz-dia.xlsx", sheet = "nmero-de-casos-la-paz-po")
data_casos_la_paz_dia

str(data_casos_la_paz_dia)

data_casos_la_paz_dia$Fecha = as.Date(data_casos_la_paz_dia$Fecha)

str(data_casos_la_paz_dia)

#NOTA.- Tambien podemos importar datos desde la interfaz de RStudio
# 1.- Menu environment, import Data set


# Descargar data desde el repositorio de Ciencia de datos(github) -----------------

install.packages("remotes")

remotes::install_github("cienciadedatos/datos")

millas=datos::millas

millas

aviones=datos::aviones

aviones

# Graficando en R ---------------------------------------------------------
# Cargar el paquete ggplot2
# Nota1.- no es necesario instalar porque ya se instalo en la sesion anterior 
# al momento de instalar el paquete tydiverse
# Nota2.- Si fuera necesario tambien pueden instalar independiente solo 
# el paquete ggplot2 

library(ggplot2)

#Data millas
millas

#--Descripcion de la Data
# fabricante = fabricante
# modelo = nombre del modelo
# cilindrada = tamaño del motor del automóvil, en litros
# anio  = año de fabricación
# cilindros  = número de cilindros
# transmision  = tipo de transmisión 
# traccion  = tipo de tracción (d = delantera, t = trasera, 4 = 4 ruedas)
# ciudad  = millas por galón de combustible en ciudad
# autopista  = millas por galón de combustible en autopista
# combustible  = tipo de combustible (p = premium, r = regular, e = etanol, d = diesel, g = gas natural comprimido) 
# clase = tipo de auto


# GRAFICO DE BARRAS -------------------------------------------------------

# asignando variable a la estetica

ggplot(data = millas,
       mapping = aes(x=clase))
       

ggplot(data = millas,
       mapping = aes(x=clase))+
       geom_bar()


ggplot(data = millas,
       mapping = aes(x=clase))+
  geom_bar(fill="blue")



ggplot(data = millas,
       mapping = aes(x=clase))+
       geom_bar(fill="blue")+
      labs(
        title = "Numero de autos por tipo",
        subtitle = "Tipo de auto entre 1999 y 2008",
        caption = "fuente: Data set del repositorio de Ciencia de datos",
        x = "Nunero de autos",
        y = "Tipo de autos"
      )

ggplot(data = millas,
       mapping = aes(x=clase, fill=clase))+
      geom_bar()+
      labs(
        title = "Numero de autos por tipo",
        subtitle = "Tipo de auto entre 1999 y 2008",
        caption = "fuente: Data set del repositorio de Ciencia de datos",
        x = "Nunero de autos",
        y = "Tipo de autos"
      )

# -----Diagrama de barras con Etiqueta de datos del numero de autos por tipo

table(millas$clase)

data_millas_clase = as.data.frame(table(millas$clase))

data_millas_clase

#modificando los nombres de las columnas

colnames(data_millas_clase)=c("clase", "numero")

data_millas_clase


ggplot(data = data_millas_clase,
       mapping = aes(x=clase, y=numero, fill=clase))+
        geom_bar(stat = "identity")+
        geom_text(aes(label=numero), vjust=-0.5)+
        labs(
          title = "Numero de autos por tipo",
          subtitle = "Tipo de auto entre 1999 y 2008",
          caption = "fuente: Data set del repositorio de Ciencia de datos",
          x = "Nunero de autos",
          y = "Tipo de autos"
        )


# GRAFICO DE TORTA --------------------------------------------------------
# total de clase = 234
data_millas_clase

#
data_millas_clase$porc_clase = round(((data_millas_clase$numero)*100)/sum(data_millas_clase$numero))

data_millas_clase

ggplot(data = data_millas_clase, 
       mapping = aes(x="", y = porc_clase, fill=clase))+
       geom_bar(stat = "identity")


ggplot(data = data_millas_clase, 
       mapping = aes(x="", y = porc_clase, fill=clase))+
  geom_bar(stat = "identity")+
  geom_text(aes(label=paste(porc_clase,"%",sep ="")), position = position_stack(vjust = 0.5))



ggplot(data = data_millas_clase, 
       mapping = aes(x="", y = porc_clase, fill=clase))+
        geom_bar(stat = "identity")+
        geom_text(aes(label=paste(porc_clase,"%",sep ="")), position = position_stack(vjust = 0.5))+
        theme_void()
        


ggplot(data = data_millas_clase, 
       mapping = aes(x="", y = porc_clase, fill=clase))+
  geom_bar(stat = "identity")+
  geom_text(aes(label=paste(porc_clase,"%",sep ="")), position = position_stack(vjust = 0.5))+
  theme_void()+
  coord_polar("y")



# GRAFICO DE PUNTOS -------------------------------------------------------

# DATA = flores = Datos sobre la ﬂor Iris de Edgar Anderson

# Largo.Sepalo Largo del sépalo
# Ancho.Sepalo Ancho del sépalo
# Largo.Petalo Largo del pétalo
# Ancho.Petalo Ancho del pétalo
# Especies A qué especie de la ﬂor Iris corresponde (setosa, versicolor, virginica)


flores=datos::flores

flores

ggplot(flores,
       mapping = aes(x=Largo.Petalo, y=Ancho.Petalo))+
       geom_point()


ggplot(flores,
       mapping = aes(x=Largo.Petalo, y=Ancho.Petalo, color=Especies))+
  geom_point()



ggplot(flores,
       mapping = aes(x=Largo.Petalo, y=Ancho.Petalo, color=Especies, size=Ancho.Sepalo))+
  geom_point()


ggplot(flores,
       mapping = aes(x=Largo.Petalo, y=Ancho.Petalo, color=Especies, size=Ancho.Sepalo))+
  geom_point()+
  labs(
    title = "Datos sobre la ﬂor Iris de Edgar Anderson",
    subtitle = "Tipos de flor por largo de petalo y ancho",
    caption = "fuente: Data set del repositorio de Ciencia de datos",
    x = "Laro de Petalo",
    y = "Ancho de Petalo"
  )

