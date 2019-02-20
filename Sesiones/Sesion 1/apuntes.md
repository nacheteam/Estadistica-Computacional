# Sesión 1
- Se puede utilizar el comando ```history()``` dentro de R para ver el historial o acceder al fichero .Rhistory que es un fichero de texto con los comandos ejecutados.

El valor de verdadero y falso se pone con T y F respectivamente.

La división entera se hace con %/% y el módulo con %%.

Si ponemos una orden sin parentesis entonces lo que nos sale es la definición de la función.

Cuando se declaran objetos se guardan en la memoria de R. Estos objetos crados pueden ser consultados mediante la orden ls() que nos lista los elementos disponibles, si queremos borrar por ejemplo el objeto "var" entonces tenemos que ejecutar rm(var).

La orden c() concatena todos los vectores y números que le pasemos como argumentos.

Los vectores tienen que estar formados por elementos del mismo tipo.

Una operación curiosa:
> names(x)<-c("I","II","III","IV","V")
> x
I II III IV V
1  2   3  4 5
