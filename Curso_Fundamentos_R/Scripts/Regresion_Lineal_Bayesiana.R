# Estadistica Bayesiana
# Basada en el teorema de bayes
# no MCO
# tiene en cuenta los datos y las creencias de base

# simulaciones de MC(Monte-Carlos) se basan en ellas 

# install.packages("quantmod")

install.packages("quantmod")

# cargar del paquete en el mismo ambiente

library(quantmod)

# install.packages("tseries")

install.packages("tseries")

library(tseries)


# Regresion Bayesiana -----------------------------------------------------

#Ejemplo 1:

# install.packages("MCMCpack")

install.packages("MCMCpack")

library(MCMCpack)

tabla <- list(X = c(-40,-21,0,12,2,8), Y = c(4,33,30,3,5,9))
bayes <- MCMCregress(Y~X,data = tabla )
summary(bayes)
plot(bayes)

bayes_clasica <- lm(Y~X , data = tabla)
summary(bayes_clasica)

getSymbols("AUDNZD=X",src = "yahoo",from = "2017-02-18")
getSymbols("AUDUSD=X",src = "yahoo",from = "2017-02-18")

AUDNZD=`AUDNZD=X`[,4]
AUDUSD=`AUDUSD=X`[,4]

X=as.numeric(AUDNZD)
Y=as.numeric(AUDUSD)

bayes <- MCMCregress(Y~X)
summary(bayes)
plot(bayes)

bayes_clasica <- lm(Y~X)
summary(bayes_clasica)
plot(bayes_clasica)

