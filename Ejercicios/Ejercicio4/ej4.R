cat("##########################################\nEnunciado:\n")
cat("Modificar la función dong2.v para que sólo se llame una vez a la función sample y comparar la eficiencia ganada en tiempo con el cambio.")
cat("\n##########################################\n\n")

# Necesario para esperar entre llamadas a plot
require(tcltk)

# Esta es la función dong2 original, únicamente añadiendo el cálculo del tiempo
# invertido en el cómputo de la función.
dong2.v.original = function(numero = 100){
  # Momento en el que se inicia la función
  Inicio = Sys.time()
  x = vector(mode = "numeric", length = numero)
  y = vector(mode = "numeric", length = numero)
  x[1] = 1
  y[1] = 1
  XX = c(0, 0.5, 0.25)
  YY = c(0, 0, 0.5)
  for(i in 2:numero){
    a = sample(3,1)
    x[i] = 0.5 * x[i - 1] + XX[a]
    y[i] = 0.5 * y[i - 1] + YY[a]
  }
  # Momento en el que acaba el cálculo
  Final = Sys.time()
  # Tiempo invertido en el cómputo de la función
  tiempo = Final-Inicio
  # Añadimos a la lista no sólo el resultado, también el tiempo invertido
  return(list(x = x[2:numero], y = y[2:numero], tiempo = tiempo))
}

# Función con una sola llamada a sample
dong2.v.eficiente = function(numero = 100){
  # Momento en el que se inicia la función
  Inicio = Sys.time()
  x = vector(mode = "numeric", length = numero)
  y = vector(mode = "numeric", length = numero)
  x[1] = 1
  y[1] = 1
  XX = c(0, 0.5, 0.25)
  YY = c(0, 0, 0.5)
  # Ahora llamamos a sample el mismo número de veces que en el bucle, esto es
  # numero-2 veces y con reemplazamiento. Si no lo hicieramos así no podríamos obtener
  # el número de muestras que queremos pues sólo tendríamos 3 posibles muestras (1,2,3)
  a = sample(3,numero-2,replace=TRUE)
  for(i in 2:numero){
    # Ahora a es un vector de números, por lo que utilizamos la indexación. Además
    # tenemos que tener en cuenta que i empieza en 2 y no en 1, por lo que debemos de restar
    # 1 al índice.
    x[i] = 0.5 * x[i - 1] + XX[a[i-1]]
    y[i] = 0.5 * y[i - 1] + YY[a[i-1]]
  }
  # Momento en el que acaba el cálculo
  Final = Sys.time()
  # Tiempo invertido en el cómputo de la función.
  tiempo = Final-Inicio
  # Añadimos a la lista no sólo el resultado, también el tiempo invertido.
  return(list(x = x[2:numero], y = y[2:numero], tiempo=tiempo))
}

# Función usada para parar entre plots, hace falta pulsar el boton ok para continuar
pausa_ventana = function(){
  tt <- tktoplevel()
  OK.but <- tkbutton(tt, text = "Continuar", command = function() tkdestroy(tt))
  tkgrid(OK.but)
  tkfocus(tt)
  tkwait.window(tt)
}

cat("\nVamos a representar con plot los datos de ambas funciones para ver que obtenemos las mismas figuras, esto es, que las funciones computan lo mismo.\n")
res1 = dong2.v.original(50000)
res2 = dong2.v.eficiente(50000)

X11()
plot(res1[1:2],main="Dong original")
cat("\nPulsar el botón Continuar para continuar\n")
pausa_ventana()
X11()
plot(res2[1:2],main="Dong eficiente")
cat("\nPulsar el botón Continuar para continuar\n")
pausa_ventana()

cat("\n\nComparamos el tiempo:\n")
cat("Tiempo original: ",res1$tiempo, " segundos")
cat("\nTiempo versión eficiente: ",res2$tiempo," segundos\n")
cat("\n\nComo podemos ver se mejora el tiempo con la versión eficiente de forma muy notable.\n\n")
