cat("##########################################\nEnunciado:\n")
cat("Escriba una función que calcule los coeficientes de asimetría y curtosis de Fisher. Sus definiciones son gamma1=mu3/sigma^3 y gamma2=mu4/sigma^4")
cat("\n##########################################\n\n")

gamma1<-function(x){
  # Calculamos E[(x-E[x])^3]
  mu3<-mean((x-mean(x))^3)
  # Calculamos E[(x-E[x])^2]^(3/2)=sigma^3
  sigma3<-sqrt(mean((x-mean(x))^2))^3
  return(mu3/sigma3)
}

gamma2<-function(x){
  # Calculamos E[(x-E[x])^4]
  mu4<-mean((x-mean(x))^4)
  # Calculamos E[(x-E[x])^2]^2=sigma^4
  sigma4<-mean((x-mean(x))^2)^2
  return(mu4/sigma4)
}

# Un vector del 1 al 10
x<-1:10
# Un vector de 10 números tomados aleatoriamente según una distribución normal
y<-rnorm(10)

# Imprimimos x e y
cat("\nx: ",x)
cat("\ny: ",y)

# Imprimimos los cálculos de los coeficientes Gamma1 y Gamma2
cat("\n\nGamma1 para x: ",gamma1(x), "\nGamma2 para x: ",gamma2(x),"\n\n")
cat("Gamma1 para y: ",gamma1(y), "\nGamma2 para y: ",gamma2(y),"\n\n")

# Comprobamos los resultados con los de la librería moments la cual ya tiene
# implementado el cálculo de estos coeficientes.
cat("\n\nAhora vamos a comprobar los resultados con los de la librería moments.\n")
require(moments)
cat("\nAsimetría para x: ",skewness(x), "\nCurtosis para x: ",kurtosis(x),"\n\n")
cat("Asimetría para y: ",skewness(y), "\nCurtosis para y: ",kurtosis(y),"\n\n")
