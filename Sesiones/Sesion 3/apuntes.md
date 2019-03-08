# Sesión 3

- Crossprod hace el producto de una matriz con su traspuesta B'B
- Outer toma dos vectores y los multiplica formando una matriz de la siguiente forma: se toma el segundo vector y en cada fila se multiplica por el correspondiente elemento del primer vector.
> X
[1] 1 2 3
> Y
[1] 4 5 6
> outer(X,Y)
     [,1] [,2] [,3]
[1,]    4    5    6
[2,]    8   10   12
[3,]   12   15   18

- Es útil para representar funciones porque outer calcula los valores a representar de forma mucho más sencilla en sintaxis y más rápida.
- Solve poniendo solo una matriz nos da la inversa de la matriz
