cat("##########################################\nEnunciado:\n")
cat("Modificar la función factorial para que compruebe si el agurmento es correcto, esto es, comprobar si es un entero.")
cat("\n##########################################\n\n")


# Función factorial
Factorial.d<-function(n=0)
{
  # Comprobamos si el argumento es un entero o no
  # Esta función no funciona bien si el tipo del argumento no se especifica de forma
  # explícita, por ejemplo, 10 no sería un entero pero 10L si lo sería.

  # La comprobación de si es un entero puede hacerse de forma mucho más fácil para el programador
  # y usuario si utilizamos la librería "tester" que incluye una función que se llama
  # is_integer() que sí nos devolvería el resultado esperado para números como el 10 o el 100.
  if(!is.integer(n))
  {
    return(NA)
  }
  factorial <- 1
  if(n>1)
  {
    for (i in 1:n)
    {
      factorial <- factorial * i
    }
  }
  return(factorial)
}

# Función factorial empleando la librería tester
Factorial.tester<-function(n=0)
{
  # Es necesario instalar la librería tester
  instalada<-require(tester)
  if(!instalada)
  {
    cat("\n#*Para poder probar la función con la librería tester se ha de instalar el paquete, pruebe a ejecutar install.packages(\"tester\")*#\n")
    return(NA)
  }

  if(!is_integer(n)||length(n)>1)
  {
    return(NA)
  }
  factorial <- 1
  if(n>1)
  {
    for (i in 1:n)
    {
      factorial <- factorial * i
    }
  }
  return(factorial)
}

factorial_bien<-Factorial.d(100L)
factorial_mal1<-Factorial.d(100)
factorial_mal2<-Factorial.d(c(2,3,4))
factorial_mal3<-Factorial.d(TRUE)

cat("\n################\nEjemplos SIN la librería tester\n################\n")

cat("\n\nEjemplo de una llamada correcta a Factorial.d con 100L: ", factorial_bien)
cat("\nEjemplo de una llamada a Factorial.d con 100: ", factorial_mal1)
cat("\nEjemplo de una llamada con un vector de enteros a Factorial.d: ",factorial_mal2)
cat("\nEjemplo de una llamada con un valor booleano a Factorial.d: ",factorial_mal3,"\n")

cat("\n################\nEjemplos CON la librería tester\n################\n")

factorial_bien_tester<-Factorial.tester(100L)
factorial_mal1_tester<-Factorial.tester(100)
factorial_mal2_tester<-Factorial.tester(c(2,3,4))
factorial_mal3_tester<-Factorial.tester(TRUE)

cat("\n\nEjemplo de una llamada correcta a Factorial.tester con 100L: ", factorial_bien_tester)
cat("\nEjemplo de una llamada a Factorial.tester con 100: ", factorial_mal1_tester)
cat("\nEjemplo de una llamada con un vector de enteros a Factorial.tester: ",factorial_mal2_tester)
cat("\nEjemplo de una llamada con un valor booleano a Factorial.tester: ",factorial_mal3_tester,"\n")
