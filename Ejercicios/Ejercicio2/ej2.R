cat("##########################################\nEnunciado:\n")
cat("Modifique la función media (página 31 de los apuntes) para que devuelva también cuantos elementos había y cuantos elementos ha quitado.")
cat("\n##########################################\n\n")

# Función media original, sólo para comparar con la nueva función media
media<-function(x=NA)
{
  x<-x[!is.na(x)]
  return(sum(x)/length(x))
}

# Nueva función media
nueva_media<-function(x=NA)
{
  # Vector x con los elementos "not a number" quitados
  nuevo_x<-x[!is.na(x)]
  # Devuelvo una lista con la media, la longitud del vector x y la diferencia
  # entre la longitud de x y la longitud de x quitando los elementos "not a number"
  return(list(media=sum(nuevo_x)/length(nuevo_x),tam_total=length(x),numero_quitados=length(x)-length(nuevo_x)))
}

# Vector para probar con dos posiciones igual a NA
x<-c(1,2,3,45,5,NA,34,234,242,NA)
# Imprimo los resultados
cat("\n\nx: ",x)
cat("\n\nEl resultado de la función media sobre x:\n")
cat(str(nueva_media(x)))
