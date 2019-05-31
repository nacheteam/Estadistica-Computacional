# Apuntes

Los contrastes de la Ji cuadrado no son uno solo por ejemplo  existen los contrastes:

- Adherencia: por ejemplo tenemos un histograma procedente de una muestra, la hipótesis nula nos dice que el histograma está tomado de una función de densidad cualquiera fijada. Lo que hace es, según la función de densidad estudia el número de elementos por intervalo y comprueba cuántos hay en el histograma haciendo las diferencias. Estudia $(f-n)^2$  y cuanto mayor sea pues peor porque significa que se diferencia mas el histograma de la función de densidad. f es el número de elementos en el histograma y n en la función de densidad.  Se propone como medida de la diferencia en cada intervalo $\frac{(f-n)^2}{f}$

- Independencia: En este test la hipótesis nula nos dice que f pertenece a una cierta familia $\mathcal{F}$. Tenemos dos variables de contingencia X e Y variables nominales. Por ejemplo podrían ser 

  |    X/Y     | Fuma | No fuma |
  | :--------: | :--: | :-----: |
  | Bebe nada  | f, n |         |
  | Bebe poco  |      |         |
  | Bebe mucho |      |         |

  Aquí volvemos a tener f la frecuencia de sujetos que cumplen Fuma y Bebe nada y ahi podemos volver a aplicar el concepto de estudiar la suma de las diferencias de las f y las n de la forma $\sum \frac{(f-n)^2}{f}$. 

  La hipótesis nula puede ser la independencia.

  Si esta tabla es 2x2 entonces se le resta $\frac{1}{2}$ para que vaya mejor

Fisher planteó una alternativa exacta calculando todas las posibilidades que es un poco locura si tienes muchas casillas o muchos datos o las dos.

http://www.r-tutor.com/elementary-statistics/goodness-fit/chi-squared-test-independence